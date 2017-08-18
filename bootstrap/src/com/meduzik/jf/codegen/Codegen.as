package com.meduzik.jf.codegen {
	import avmplus.getQualifiedClassName;
	import com.meduzik.jf.ast.Binder;
	import com.meduzik.jf.ast.FunctionBodyBlock;
	import com.meduzik.jf.ast.FunctionBodyFFI;
	import com.meduzik.jf.ast.expr.AstArrayIndex;
	import com.meduzik.jf.ast.expr.AstBinOp;
	import com.meduzik.jf.ast.expr.AstCallExpr;
	import com.meduzik.jf.ast.expr.AstExpr;
	import com.meduzik.jf.ast.expr.AstExprDot;
	import com.meduzik.jf.ast.expr.AstNew;
	import com.meduzik.jf.ast.expr.AstNumberLit;
	import com.meduzik.jf.ast.expr.AstStringLit;
	import com.meduzik.jf.ast.pattern.AstPattern;
	import com.meduzik.jf.ast.pattern.AstPatternCons;
	import com.meduzik.jf.ast.pattern.AstPatternId;
	import com.meduzik.jf.ast.stmt.AstCase;
	import com.meduzik.jf.ast.stmt.AstExprId;
	import com.meduzik.jf.ast.stmt.AstStmt;
	import com.meduzik.jf.ast.stmt.AstStmtAssign;
	import com.meduzik.jf.ast.stmt.AstStmtBlock;
	import com.meduzik.jf.ast.stmt.AstStmtEval;
	import com.meduzik.jf.ast.stmt.AstStmtIf;
	import com.meduzik.jf.ast.stmt.AstStmtMatch;
	import com.meduzik.jf.ast.stmt.AstStmtRet;
	import com.meduzik.jf.ast.stmt.AstStmtVar;
	import com.meduzik.jf.ast.stmt.AstStmtWhile;
	import com.meduzik.jf.ast.type.AstType;
	import com.meduzik.jf.compiler.CompilationUnit;
	import com.meduzik.jf.compiler.CompilerContext;
	import com.meduzik.jf.compiler.Diagnostic;
	import com.meduzik.jf.compiler.SourceFile;
	import com.meduzik.jf.ir.IRADT;
	import com.meduzik.jf.ir.IRADTConstructor;
	import com.meduzik.jf.ir.IRADTField;
	import com.meduzik.jf.ir.IRFunction;
	import com.meduzik.jf.ir.IRGlobalVar;
	import com.meduzik.jf.ir.IRParam;
	import com.meduzik.jf.ir.IRStruct;
	import com.meduzik.jf.ir.IRStructField;
	import com.meduzik.jf.ir.IRTypeNode;
	import com.meduzik.jf.ir.IRUnit;
	import com.meduzik.jf.ir.Symbol;
	import com.meduzik.jf.ir.ref.Reference;
	import com.meduzik.jf.ir.type.IRFunType;
	import com.meduzik.jf.ir.type.IRMetatype;
	import com.meduzik.jf.ir.type.IRPrimType;
	import com.meduzik.jf.ir.type.IRRefType;
	import com.meduzik.jf.ir.type.IRType;
	import com.meduzik.jf.ir.type.IRTypeArray;
	import com.meduzik.jf.irbuilder.IRUnitBuilder;
	import com.meduzik.jf.ircompiler.IRCompiler;
	import com.meduzik.jf.parser.TokenType;
	import flash.utils.ByteArray;
	import flash.utils.Dictionary;
	/**
	 * ...
	 * @author 
	 */
	public class Codegen {
		private var ctx:CompilerContext;
		private var file:SourceFile;
		
		private var declarations:Dictionary = new Dictionary();
		private var forwDeclaredTypes:Dictionary = new Dictionary();
		
		private var forw:FormattedWriter = new FormattedWriter();
		
		private var types:FormattedWriter = new FormattedWriter();
		
		private var decl:FormattedWriter = new FormattedWriter();
		
		private var compiler:IRCompiler;
		private var builder:IRUnitBuilder;
		
		private var pieces:Vector.<String> = new Vector.<String>();
		
		private var scope:Object = {};
		
		public function Codegen(ctx:CompilerContext) {			
			this.ctx = ctx;	
			
			
		}
		
		private var nextTempName:int = 0;
		
		public function codegen(file:SourceFile, ir:IRUnit):void {
			this.file = file;
			compiler = new IRCompiler(ctx, file);
			builder = new IRUnitBuilder(ctx, file);
			
			for each ( var symbol:Symbol in ir.globals.list ){
				if ( symbol is IRFunction ){
					pieces[pieces.length] = codegenFunction(symbol as IRFunction);
				}else if ( symbol is IRStruct ){
					codegenStruct(symbol as IRStruct);
				}else if ( symbol is IRADT ){
					codegenADT(symbol as IRADT);
				}else if ( symbol is IRGlobalVar ){
					codegenGlobal(symbol as IRGlobalVar);
				}else{
					Diagnostic.Report(file.getFileName(), symbol.loc, "Codegen not implemented", getQualifiedClassName(symbol));
				}
			}
		}
		
		public function finalize():String{
			var all:FormattedWriter = new FormattedWriter();
			all.writeln("#include <jellyfish.h>");
			all.writeln(forw.getResult());
			all.writeln(types.getResult());
			all.writeln(decl.getResult());
			
			for each ( var piece:String in pieces ){
				all.writeln(piece);
			}

			return all.getResult();
		}
		
		private function codegenADT(adt:IRADT):void{
			forwardDeclareADT(adt);
			defineADT(adt);
			pieces[pieces.length] = codegenADTConstructors(adt);
		}
		
		private function codegenGlobal(global:IRGlobalVar):void{
			types.file(global.owner, global.loc);
			var typeName:String = getTypeName(global.type.resolution);
			types.writeln(typeName + " " + mangleGlobalName(global) + ";");
			types.loc(global.loc);
			types.writeln(typeName + " " + mangleGlobalName(global) + "_get();");
			
			pieces[pieces.length] = codegenGlobalFunc(global);
		}
		
		private function codegenGlobalFunc(global:IRGlobalVar):String {
			var writer:FormattedWriter = new FormattedWriter();
	
			writer.file(global.owner, global.loc);
			writer.writeln(getTypeName(global.type.resolution) + " " + mangleGlobalName(global) + "_get(){");
			writer.indent();
			writer.writeln("static jf_bool init = jf_false;");
			writer.writeln("if ( !init ){");
			writer.indent();
			writer.writeln("init = jf_true;");
			var initExpr:CExpr = codegenExpr(writer, global.value);
			writer.writeln(mangleGlobalName(global) + " = " + initExpr.ref + ";");
			writer.unindent();
			writer.writeln("}");
			writer.writeln("return " + mangleGlobalName(global) + ";");
			writer.unindent();			
			writer.writeln("}");
			
			return writer.getResult();
		}
		
		private function codegenStruct(struct:IRStruct):void {
			forwardDeclare(struct);
			defineStruct(struct);
		}
		
		private function defineStruct(struct:IRStruct):void{
			if ( declarations[struct] ){
				return;
			}
			declarations[struct] = true;
			
			types.file(struct.owner, struct.loc);
			types.writeln("struct " + mangleStructName(struct) + "_tag{");
			for each ( var field:IRStructField in struct.fields ){
				types.loc(field.binder.loc);
				types.write(getTypeName(field.type.resolution, true));
				types.writeln(" " + field.binder.name + ";");
			}
			types.writeln("};");
		}
		
		private function defineADT(adt:IRADT):void{
			if ( declarations[adt] ){
				return;
			}
			declarations[adt] = true;
			
			types.file(adt.owner, adt.loc);
			types.writeln("struct " + mangleADTName(adt) + "_tag{");
			types.writeln("jf_tag tag;");
			for each ( var field:IRADTField in adt.fields ){
				types.loc(field.binder.loc);
				types.write(getTypeName(field.type.resolution, true));
				types.writeln(" " + field.binder.name + ";");
			}
			types.writeln("};");
			
			for each ( var cons:IRADTConstructor in adt.constructors ){
				types.loc(cons.binder.loc);
				types.write(getTypeName(adt.instanceType, true) + " ");
				types.write(mangleADTConstructorName(cons));
				types.write("(");
				codegenParams(types, cons.params);
				types.write(");");
				
				types.loc(cons.binder.loc);
				types.writeln("struct " + mangleADTConstructorName(cons) + "_tag{");
				types.loc(cons.binder.loc);
				types.writeln("struct " + mangleADTName(adt) + "_tag _common;");
				for each ( var param:IRParam in cons.params ){
					types.loc(param.binder.loc);
					types.writeln(getTypeName(param.type.resolution, true) + " " + param.binder.name + ";");
				}
				types.writeln("};");
			}
		}
		
		private function codegenADTConstructors(adt:IRADT):String{
			var writer:FormattedWriter = new FormattedWriter();
			
			for each ( var cons:IRADTConstructor in adt.constructors ){
				writer.loc(cons.binder.loc);
				writer.write(getTypeName(adt.instanceType, true) + " ");
				writer.write(mangleADTConstructorName(cons));
				writer.write("(");
				codegenParams(writer, cons.params);
				writer.write("){");
				writer.indent();
				writer.loc(cons.binder.loc);				
				writer.writeln("struct " + mangleADTConstructorName(cons) + "_tag* _instance = jf_allocate(struct " + mangleADTConstructorName(cons) + "_tag);");
				writer.loc(cons.binder.loc);
				writer.writeln("_instance->_common.tag = " + cons.tag + ";");
				for each ( var param:IRParam in cons.params ){
					writer.loc(param.binder.loc);
					writer.writeln("_instance->" + param.binder.name + " = " + getParamName(param) + ";");
				}
				writer.loc(cons.binder.loc);
				writer.writeln("return (" + getTypeName(adt.instanceType, true) + ")_instance;");
				writer.unindent();
				writer.writeln("}");
			}
			
			return writer.getResult();
		}
		
		private function forwardDeclare(struct:IRStruct):void {
			if ( forwDeclaredTypes[struct] ){
				return;
			}
			
			forwDeclaredTypes[struct] = true;
			
			forw.file(struct.owner, struct.loc);
			forw.writeln("typedef struct " + mangleStructName(struct) + "_tag " + mangleStructName(struct) + ";");
			forw.file(struct.owner, struct.loc);
			forw.writeln("typedef " + mangleStructName(struct) + "* " + mangleStructName(struct) + "_p;");
		}
		
		private function forwardDeclareADT(adt:IRADT):void {
			if ( forwDeclaredTypes[adt] ){
				return;
			}
			
			forwDeclaredTypes[adt] = true;
			
			forw.file(adt.owner, adt.loc);
			forw.writeln("typedef struct " + mangleADTName(adt) + "_tag " + mangleADTName(adt) + ";");
			forw.file(adt.owner, adt.loc);
			forw.writeln("typedef " + mangleADTName(adt) + "* " + mangleADTName(adt) + "_p;");
		}
		
		public function magleUnitName(unit:CompilationUnit):String {
			var moduleId:String = unit.module.id;
			var unitId:String = unit.name;
			return (moduleId + "_" + unitId).replace(".", "_");
		}
		
		private function codegenFunction(fun:IRFunction):String {
			var writer:FormattedWriter = new FormattedWriter();
			writer.writeln("#line " + fun.loc.line + " " + JSON.stringify(fun.owner.owner.getFileName()));
			codegenSignature(writer, fun);
			writer.writeln("{");
			writer.indent();
			
			if ( fun.ast is FunctionBodyFFI ){
				var ffi:FunctionBodyFFI = fun.ast as FunctionBodyFFI;
				writer.loc(ffi.loc);
				if ( fun.returnType.resolution != IRPrimType.Unit ){
					writer.write("return ");
				}
				writer.write(JSON.parse(ffi.string) as String);
				writer.write("(");
				
				decl.writeln("#line " + fun.loc.line + " " + JSON.stringify(fun.owner.owner.getFileName()));			
				codegenSignature(decl, fun, JSON.parse(ffi.string) as String);
				decl.writeln(";");
				
				var first:Boolean = true;
				for each ( var param:IRParam in fun.params ){
					if ( !first ){
						writer.write(", ");
					}
					writer.write(getParamName(param));
					first = false;
				}
				writer.writeln(");");
			}else if ( fun.ast is FunctionBodyBlock ){
				for each ( param in fun.params ){
					scope[param.binder.name] = param;
				}
				var block:FunctionBodyBlock = fun.ast as FunctionBodyBlock;
				codegenBlock(writer, block.block);
			}
			
			writer.unindent();
			writer.writeln("}");
			
			return writer.getResult();
		}
		
		private function codegenBlock(writer:FormattedWriter, block:AstStmtBlock):void {
			for each ( var stmt:AstStmt in block.stmts ){
				codegenStmt(writer, stmt);
			}
		}
		
		private function resolveType(ast:AstType):IRTypeNode{
			var node:IRTypeNode = builder.buildTypeNode(ast);
			compiler.compileTypeNode(node);
			return node;
		}
		
		private function codegenStmt(writer:FormattedWriter, stmt:AstStmt):void {
			if ( stmt is AstStmtBlock ){
				writer.writeln("{");
				writer.indent();
				codegenBlock(writer, stmt as AstStmtBlock);
				writer.unindent();
				writer.writeln("}");
			}else if ( stmt is AstStmtWhile ){
				var whilestmt:AstStmtWhile = stmt as AstStmtWhile;
				var labelName:String = genLocalName();
				writer.loc(stmt.loc);
				writer.writeln(labelName + ":{");
				writer.indent();
				cond = codegenExpr(writer, whilestmt.expr);
				writer.loc(stmt.loc);
				writer.writeln("if ( !(" + cond.toString() + ") ) goto " + labelName + "_end;");
				codegenStmt(writer, whilestmt.stmt);
				writer.writeln("goto " + labelName + ";");
				writer.unindent();
				writer.writeln("}");
				writer.loc(stmt.loc);
				writer.writeln(labelName + "_end:;");
			}else if ( stmt is AstStmtIf ){
				var ifstmt:AstStmtIf = stmt as AstStmtIf;
				var cond:CExpr = codegenExpr(writer, ifstmt.cond);
				writer.loc(ifstmt.loc);
				writer.writeln("if (" + cond.ref + "){");
				writer.indent();
				codegenStmt(writer, ifstmt.then);
				writer.unindent();
				if ( ifstmt.else_ ){
					writer.writeln("} else {");
					writer.indent();
					codegenStmt(writer, ifstmt.else_);
					writer.unindent();
					writer.writeln("}");
				}else{
					writer.writeln("}");
				}
			}else if ( stmt is AstStmtEval ){
				var eval:AstStmtEval = stmt as AstStmtEval;
				var str:String = codegenExpr(writer, eval.expr).toString();
				writer.loc(stmt.loc);
				writer.writeln(str + ";");
			}else if ( stmt is AstStmtRet ){
				var ret:AstStmtRet = stmt as AstStmtRet;
				if ( ret.expr ){
					var exp:CExpr = codegenExpr(writer, ret.expr); 
					writer.loc(stmt.loc);
					if ( exp.type == IRPrimType.Unit ){
						writer.writeln("return;");
					}else{
						writer.writeln("return " + exp.ref + ";");
					}
				}else{
					writer.loc(stmt.loc);
					writer.writeln("return;");
				}
			}else if ( stmt is AstStmtMatch ){
				var match:AstStmtMatch = stmt as AstStmtMatch;
				var target:CExpr = codegenExpr(writer, match.expr);
				var tmpName:String = genLocalName();
				writer.loc(stmt.loc);
				writer.writeln(getTypeName(target.type, true) + " " + tmpName + " = " + target.ref + ";");
				
				var adt:IRADT;
				
				if ( target.type is IRRefType ){
					var ref:IRRefType = IRRefType(target.type);
					if ( ref.reference && ref.reference.symbol && ref.reference.symbol is IRADT ){
						adt = ref.reference.symbol as IRADT;
					}
				}
				
				if ( !adt ){
					throw new Error("can't match non-adt");
				}
				 
				writer.writeln("switch ( " + tmpName + "->tag ){");
				writer.indent();
				for each ( var matchCase:AstCase in match.cases ){
					var cons:IRADTConstructor;
					if ( matchCase.pattern is AstPatternCons ){
						cons = adt.findConstructor(AstPatternCons(matchCase.pattern).id);
						if ( !cons ){
							throw new Error("no such constructor");
						}
					}else if ( matchCase.pattern is AstPatternId ){
						cons = adt.findConstructor(AstPatternId(matchCase.pattern).binder.name);
					}
					
					writer.loc(matchCase.pattern.loc);
					if ( !cons ){
						writer.writeln("default:{");
						writer.indent();
						bindMatchObject(tmpName, adt.instanceType, AstPatternId(matchCase.pattern).binder.name);
					}else{
						writer.writeln("case " + cons.tag + ":{");
						writer.indent();
						var castName:String = genLocalName();
						if ( matchCase.pattern is AstPatternCons ){
							var consPattern:AstPatternCons = matchCase.pattern as AstPatternCons;
							writer.writeln("struct " + mangleADTConstructorName(cons) + "_tag* " + castName + " = (struct " + mangleADTConstructorName(cons) + "_tag*)" + tmpName + ";");
							for ( var i:int = 0; i < Math.min(consPattern.params.length, cons.params.length); i++ ){
								var subpat:AstPatternId = consPattern.params[i] as AstPatternId;
								if ( !subpat ){
									continue;
								}
								var tmpName2:String = genLocalName();
								writer.writeln(getTypeName(cons.params[i].type.resolution, true) + " " + tmpName2 + " = " + castName + "->" + cons.params[i].binder.name + ";");
								bindMatchObject(tmpName2, cons.params[i].type.resolution, subpat.binder.name);
							}							
						}
					}
					codegenStmt(writer, matchCase.stmt);
					writer.unindent();
					writer.writeln("}break;");
				}				
				writer.unindent();
				writer.writeln("}");
			}else if ( stmt is AstStmtVar ){
				var war:AstStmtVar = stmt as AstStmtVar;
				var tmp:CExpr;
				if ( war.expr ){
					tmp = codegenExpr(writer, war.expr);
				}
				writer.loc(war.binder.loc);
				
				scope[war.binder.name] = war;
				
				if ( war.type ){
					war.resolvedType = useType(resolveType(war.type).resolution);
				}else{
					war.resolvedType = useType(tmp.type);
				}
				
				writer.write(getTypeName(war.resolvedType, true));
				writer.write(" " + mangleVarName(war.binder));
				if ( tmp ){
					writer.write(" = ");
					writer.write(tmp.toString());
					writer.writeln(";");
				}else{
					writer.writeln(";");
				}
			}else if ( stmt is AstStmtAssign ){
				var assign:AstStmtAssign = stmt as AstStmtAssign;
				var lhs:String = codegenRef(writer, assign.lhs).toString();
				var rhs:String = codegenExpr(writer, assign.rhs).toString();
				writer.loc(assign.loc);
				writer.writeln(lhs + " = " + rhs + ";");
			}else{
				Diagnostic.Report(file.getFileName(), stmt.loc, "Can't codegen stmt", getQualifiedClassName(stmt));
			}
		}
		
		private function bindMatchObject(ref:String, type:IRType, name:String):void {
			scope[name] = new CExpr(type, ref);
		}
		
		private function useType(type:IRType):IRType {
			if ( type is IRRefType ){
				var ref:Reference = IRRefType(type).reference;
				if ( ref && ref.symbol ){
					var symbol:Symbol = ref.symbol;
					if ( symbol is IRStruct ){
						var struct:IRStruct = symbol as IRStruct;
						defineStruct(struct);
					}
					if ( symbol is IRADT ){
						var adt:IRADT = symbol as IRADT;
						defineADT(adt);
					}
				}
			}
			
			return type;
		}
		
		private function codegenRef(writer:FormattedWriter, expr:AstExpr):CExpr{
			return codegenExpr(writer, expr, true);
		}
		
		private function codegenExpr(writer:FormattedWriter, expr:AstExpr, byRef:Boolean = false):CExpr {
			if ( expr is AstCallExpr ){
				var call:AstCallExpr = expr as AstCallExpr;
				var head:CExpr = codegenExpr(writer, call.head);
				var args:Vector.<String> = new Vector.<String>();
				for each ( var arg:AstExpr in call.args ){
					args.push(codegenExpr(writer, arg).toString());
				}
				var tmpName:String = genLocalName();
				writer.loc(expr.loc);
				var funTy:IRFunType = head.type as IRFunType;
				if ( !funTy ){
					throw new Error("that doesn't sound fun");
				}
				if ( funTy.returnType != IRPrimType.Unit ){
					writer.write(getTypeName(funTy.returnType, true) + " " + tmpName + " = ");
				}else{
					tmpName = "((void)0)";
				}
				writer.writeln(head.toString() + "(" + args.join(", ") + ");");
				
				return cexpr(funTy.returnType, tmpName);
			}else if ( expr is AstExprDot ){
				var dot:AstExprDot = expr as AstExprDot;
				var lhs:CExpr = codegenExpr(writer, dot.lhs);
				var id:String = dot.id;
				
				useType(lhs.type);
				
				if ( lhs.type is IRRefType ){
					var refTy:IRRefType = lhs.type as IRRefType;
					if ( refTy.reference && refTy.reference.symbol ){
						var symbol:Symbol = refTy.reference.symbol;
						if ( symbol is IRStruct ){
							var struct:IRStruct = IRStruct(symbol);
							var field:IRStructField = struct.findField(id);
							if ( field ){
								return cexpr(field.type.resolution, "(" + lhs.toString() + ")->" + id);
							}
						}
						if ( symbol is IRADT ){
							var adt:IRADT = IRADT(symbol);
							var adtfield:IRADTField = adt.findField(id);
							if ( adtfield ){
								return cexpr(adtfield.type.resolution, "(" + lhs.toString() + ")->" + id);
							}
						}
					}
				}else if ( lhs.type is IRMetatype ){
					var sym:Symbol = IRMetatype(lhs.type).owner;
					if ( sym is IRADT ){
						adt = IRADT(sym);
						var cons:IRADTConstructor = adt.findConstructor(id);
						if ( cons.params.length == 0 ){
							tmpName = genLocalName();
							writer.writeln(getTypeName(adt.instanceType) + " " + tmpName + " = " + mangleADTConstructorName(cons) + "();");
							return cexpr(adt.instanceType, tmpName);
						}
						if ( cons ){
							return cexpr(cons.funType, mangleADTConstructorName(cons));
						}
					}
				}
			}else if ( expr is AstNew ){
				var newExpr:AstNew = expr as AstNew;
				var type:IRTypeNode = resolveType(newExpr.type);
				var typeName:String = getTypeName(type.resolution);
				var localName:String = genLocalName();
					
				if ( type.resolution is IRTypeArray ){
					arrTy = type.resolution as IRTypeArray;
					var size:CExpr = codegenExpr(writer, arrTy.size);
					writer.writeln(typeName + " " + localName + " = " + "jf_allocate_array(" + getTypeName(arrTy.type, true) + ", " + size.ref + ");");
					return cexpr(type.resolution, localName);
				}else{
					throw new Error("NOPE");
				}
			}else if ( expr is AstStringLit ){
				return cexpr(IRPrimType.Str, "jf_make_string(" + (expr as AstStringLit).content + ")");
			}else if ( expr is AstNumberLit ){
				return cexpr(IRPrimType.I32, (expr as AstNumberLit).content);
			}else if ( expr is AstBinOp ){
				var binop:AstBinOp = expr as AstBinOp;
				lhs = codegenExpr(writer, binop.lhs);
				var rhs:CExpr = codegenExpr(writer, binop.rhs);
				var tempName:String = genLocalName();
				var resultType:IRType;
				var codegen:String;
				switch ( binop.op ){
				case TokenType.Plus:{
					if ( lhs.type == IRPrimType.Str || rhs.type == IRPrimType.Str ){
						resultType = IRPrimType.Str;
						codegen = "jf_string_concat((" + lhs.toString() + "), (" + rhs.toString() + "))";
					}else{
						resultType = IRPrimType.I32;
						codegen = "(" + lhs.toString() + ") + (" + rhs.toString() + ")";
					}
				}break;
				case TokenType.Minus:{
					resultType = IRPrimType.I32;
					codegen = "(" + lhs.toString() + ") - (" + rhs.toString() + ")";
				}break;
				case TokenType.Mult:{
					resultType = IRPrimType.I32;
					codegen = "(" + lhs.toString() + ") * (" + rhs.toString() + ")";
				}break;
				case TokenType.Div:{
					resultType = IRPrimType.I32;
					codegen = "(" + lhs.toString() + ") / (" + rhs.toString() + ")";
				}break;
				
				case TokenType.Eq:
				case TokenType.NEq:
				case TokenType.Lt:
				case TokenType.Gt:
				case TokenType.Le:
				case TokenType.Ge:{
					resultType = IRPrimType.Bool;
					if ( lhs.type == IRPrimType.I32 || lhs.type == IRPrimType.Pointer || lhs.type == IRPrimType.Bool ){
						codegen = "(" + lhs.toString() + ") " + getComparisonOp(binop.op) + " (" + rhs.toString() + ")";
					}else if ( lhs.type == IRPrimType.Str ){
						codegen = "jf_compare_strings(" + lhs.toString() + ", " + rhs.toString() + ")" + getComparisonOp(binop.op) + " 0";
					}
				}break;
				
				case TokenType.And:{
					resultType = IRPrimType.Bool;
					codegen = "(" + lhs.toString() + ") && (" + rhs.toString() + ")";
				}break;
				case TokenType.Or:{
					resultType = IRPrimType.Bool;
					codegen = "(" + lhs.toString() + ") || (" + rhs.toString() + ")";
				}break;
				}
				writer.loc(binop.loc);
				writer.writeln(getTypeName(resultType, true) + " " + tempName + " = " + codegen + ";");	
				return cexpr(resultType, tempName);
			}else if ( expr is AstArrayIndex ){
				var index:AstArrayIndex = expr as AstArrayIndex;
				lhs = codegenExpr(writer, index.lhs);
				var idx:CExpr = codegenExpr(writer, index.index);
				
				if ( lhs.type is IRTypeArray ){
					var arrTy:IRTypeArray = lhs.type as IRTypeArray;
					return cexpr(arrTy.type, "(*(" + lhs.ref + " + " + idx.ref + "))");
				}else{
					throw new Error("can't index non-array");
				}
			}else if ( expr is AstExprId ){
				var astId:AstExprId = expr as AstExprId;
				switch ( astId.id ){
				case "true": {
					return cexpr(IRPrimType.Bool, "jf_true");
				}break;
				case "false": {
					return cexpr(IRPrimType.Bool, "jf_false");
				}break;
				}
				var local:* = scope[astId.id];
				if ( local ){
					if ( local is AstStmtVar ){
						return cexpr(AstStmtVar(local).resolvedType, mangleVarName(AstStmtVar(local).binder));
					}else if ( local is IRParam ){
						return cexpr(IRParam(local).type.resolution, getParamName(IRParam(local)));
					}else if ( local is CExpr ){
						return local as CExpr;
					}
				}
				var ref:Reference = compiler.resolve(expr.loc, astId.id);
				if ( ref ){
					symbol = ref.symbol;
					if ( symbol ){
						if ( symbol is IRFunction ){
							var fun:IRFunction = symbol as IRFunction;
							if ( !declarations[fun] ){
								declarations[fun] = true;
								codegenSignature(decl, fun);
								decl.writeln(";");
							}
							return cexpr(fun.funType, mangleQualName(fun.owner, fun.name));
						}
						if ( symbol is IRADT ){
							adt = symbol as IRADT;
							forwardDeclareADT(adt);
							return cexpr(adt.selfType, "/*ADT SHOULD NOT APPEAR IN THE CODE*/");
						}
						if ( symbol is IRGlobalVar ){
							var global:IRGlobalVar = symbol as IRGlobalVar;
							if ( byRef ){
								writer.writeln(mangleGlobalName(global) + "_get();");								
								return cexpr(global.type.resolution, mangleGlobalName(global));
							}else{
								tempName = genLocalName();
								writer.writeln(getTypeName(global.type.resolution) + " " + tempName + " = " + mangleGlobalName(global) + "_get();");
								return cexpr(global.type.resolution, tempName);
							}
						}
					}
					
				}
				Diagnostic.Report(file.getFileName(), expr.loc, "Can't resolve", astId.id);
				return cexpr(IRPrimType.Unit, "/*UNRESOLVED ID*/");
			}
			Diagnostic.Report(file.getFileName(), expr.loc, "Can't codegen", getQualifiedClassName(expr));
			return cexpr(IRPrimType.Unit, "/*INVALID CODEGEN AT " + expr.loc + "*/");
		}
		
		private function getComparisonOp(op:TokenType):String {
			switch ( op ){
			case TokenType.Eq: return "==";
			case TokenType.NEq: return "!=";
			case TokenType.Lt: return "<";
			case TokenType.Le: return "<=";
			case TokenType.Gt: return ">"; 
			case TokenType.Ge: return ">=";
			default: return "/*INVLAID OPERATOR*/";
			}
		}
		
		private function genLocalName():String {
			return "tmp" + (++nextTempName);
		}
		
		private function codegenParams(writer:FormattedWriter, params:Vector.<IRParam>):void{
			var first:Boolean = true;
			for each ( var param:IRParam in params ){
				if ( !first ){
					writer.write(", ");
				}
				writer.write(getTypeName(param.type.resolution, true));
				writer.write(" ");
				writer.write(getParamName(param));
				first = false;
			}
		}
		
		private function codegenSignature(writer:FormattedWriter, fun:IRFunction, nameOverride:String = null):void {
			writer.write(getTypeName(fun.returnType.resolution, true));
			writer.write(" ");
			if ( nameOverride ){
				writer.write(nameOverride);
			}else{
				writer.write(mangleQualName(fun.owner, fun.name));
			}
			writer.write("(");
			codegenParams(writer, fun.params);
			writer.write(")");
		}
		
		private function getTypeName(type:IRType, storage:Boolean = false):String {
			if ( !type ){
				return "jf_unit";
			}else{
				if ( type is IRPrimType ){
					var prim:IRPrimType = type as IRPrimType;
					switch ( prim ){
					case IRPrimType.I32:{
						return ("jf_i32");
					}break;
					case IRPrimType.Pointer:{
						return ("jf_pointer");
					}break;
					case IRPrimType.Str:{
						return ("jf_string");
					}break;
					case IRPrimType.Unit:{
						return ("jf_unit");
					}break;
					case IRPrimType.Bool:{
						return ("jf_bool");
					}break;
					default:{
						throw new Error("Unimplemented prim type");
					}break;
					}
				}else if ( type is IRTypeArray ){
					return getTypeName(IRTypeArray(type).type, storage) + "*";
				}else if ( type is IRRefType ){
					var refType:IRRefType = type as IRRefType;
					
					var ref:Reference = refType.reference;
					if ( ref && ref.symbol ){
						if ( ref.symbol is IRStruct ){
							var struct:IRStruct = ref.symbol as IRStruct;
							forwardDeclare(struct);
							return (mangleStructName(struct) + "_p");
						}else if ( ref.symbol is IRADT ){
							var adt:IRADT = ref.symbol as IRADT;
							forwardDeclareADT(adt);
							return (mangleADTName(adt) + "_p");
						}else{
							throw new Error("doesn't refer a type");
						}
					}else{
						throw new Error("unresolved id");
					}
				}else{
					throw new Error("type not implemented");
				}
			}
		}
		
		private function cexpr(type:IRType, ref:String):CExpr{
			return new CExpr(type, ref);
		}
		
		private function getParamName(param:IRParam):String {
			return ("param_" + param.binder.name);
		}
		
		private function mangleVarName(b:Binder):String {
			return ("l_" + b.name);
		}
		
		private function mangleStructName(struct:IRStruct):String {
			return ("struct_" + mangleQualName(struct.owner, struct.name));
		}
		
		private function mangleADTConstructorName(cons:IRADTConstructor):String{
			return mangleADTName(cons.owner) + "_" + cons.binder.name;
		}
		
		private function mangleGlobalName(global:IRGlobalVar):String {
			return ("global_" + mangleQualName(global.owner, global.name));
		}
		
		private function mangleADTName(adt:IRADT):String {
			return ("adt_" + mangleQualName(adt.owner, adt.name));
		}
		
		private function mangleQualName(owner:IRUnit, name:String):String {
			var unitId:String = magleUnitName(owner.owner.unit);
			return (unitId + '_' + name);
		}
		
	}

}