package com.meduzik.jf.irbuilder {
	import avmplus.getQualifiedClassName;
	import com.meduzik.jf.ast.ADTConstructor;
	import com.meduzik.jf.ast.ADTDecl;
	import com.meduzik.jf.ast.ASTUnit;
	import com.meduzik.jf.ast.Binder;
	import com.meduzik.jf.ast.FieldGroup;
	import com.meduzik.jf.ast.FunctionDecl;
	import com.meduzik.jf.ast.GlobalVarDecl;
	import com.meduzik.jf.ast.ImportDecl;
	import com.meduzik.jf.ast.ParamGroup;
	import com.meduzik.jf.ast.StructDecl;
	import com.meduzik.jf.ast.TopLevelDecl;
	import com.meduzik.jf.ast.type.AstType;
	import com.meduzik.jf.compiler.CompilationUnit;
	import com.meduzik.jf.compiler.CompilerContext;
	import com.meduzik.jf.compiler.Diagnostic;
	import com.meduzik.jf.compiler.Module;
	import com.meduzik.jf.compiler.SourceFile;
	import com.meduzik.jf.ir.IRADT;
	import com.meduzik.jf.ir.IRADTConstructor;
	import com.meduzik.jf.ir.IRADTField;
	import com.meduzik.jf.ir.IRFunction;
	import com.meduzik.jf.ir.IRGlobalVar;
	import com.meduzik.jf.ir.IRImport;
	import com.meduzik.jf.ir.IRParam;
	import com.meduzik.jf.ir.IRStruct;
	import com.meduzik.jf.ir.IRStructField;
	import com.meduzik.jf.ir.IRTypeNode;
	import com.meduzik.jf.ir.IRUnit;
	import com.meduzik.jf.ir.ref.Reference;
	import com.meduzik.jf.ir.type.IRRefType;
	/**
	 * ...
	 * @author 
	 */
	public class IRUnitBuilder {
		private var ctx:CompilerContext;
		private var unit:IRUnit;
		private var file:SourceFile;
		
		public function IRUnitBuilder(ctx:CompilerContext, file:SourceFile) {
			this.file = file;
			this.ctx = ctx;			
		}
		
		public function resolve(ast:ASTUnit):IRUnit {
			unit = new IRUnit(file);
			
			if ( !ast ){
				return unit;
			}
			
			for each ( var imp:ImportDecl in ast.imports ){
				buildImport(imp);
			}
			
			for each ( var tld:TopLevelDecl in ast.tlds ){
				buildTLD(tld);
			}
			
			return unit;
		}
		
		private function buildImport(ast:ImportDecl):void {
			var imp:IRImport = new IRImport;
			imp.loc = ast.loc;
			
			var module:Module = ctx.getModule(ast.qid.parts[0]);
			if ( module ){
				var cu:CompilationUnit = module.getCompilationUnit(ast.qid.parts.slice(1).join("."));
				if ( !cu ){
					Diagnostic.Report(file.getFileName(), ast.loc, "Can't resolve import");
				}
				imp.target = cu;
			}
			
			unit.imports.add(ast.qid.parts, imp);
		}
		
		private function buildTLD(tld:TopLevelDecl):void {
			if ( tld is FunctionDecl ){
				buildFunction(tld as FunctionDecl);
			}else if ( tld is StructDecl ){
				buildStruct(tld as StructDecl);
			}else if ( tld is ADTDecl ){
				buildADT(tld as ADTDecl);
			}else if ( tld is GlobalVarDecl ){
				buildGlobal(tld as GlobalVarDecl);
			}else{
				Diagnostic.Report(file.getFileName(), tld.loc, "Not implemented:", getQualifiedClassName(tld));
			}
		}
		
		private function buildGlobal(globalVarDecl:GlobalVarDecl):void {
			var global:IRGlobalVar = new IRGlobalVar();
			global.name = globalVarDecl.binder.name;
			global.loc = globalVarDecl.binder.loc;
			global.owner = unit;
			global.type = buildTypeNode(globalVarDecl.type);
			global.value = globalVarDecl.expr;
			
			unit.globals.add(global.name, global);
		}
		
		private function buildADT(adtDecl:ADTDecl):void {
			var adt:IRADT = new IRADT();
			adt.name = adtDecl.name;
			adt.loc = adtDecl.loc;
			adt.owner = unit;
			adt.instanceType = new IRRefType(new Reference(adt.loc, adt));
			
			for each ( var group:FieldGroup in adtDecl.fieldGroups ){
				var type:IRTypeNode = buildTypeNode(group.type);
				for each ( var binder:Binder in group.binders ){
					var field:IRADTField = new IRADTField(adt);
					field.binder = binder;
					field.type = type;
					adt.fields.push(field);
				}
			}
			
			for each ( var cons:ADTConstructor in adtDecl.constructors ){
				var adtCons:IRADTConstructor = new IRADTConstructor(adt);
				adtCons.binder = cons.binder;
				buildParams(adtCons.params, cons.params);
				adt.constructors.push(adtCons);
			}
			
			unit.globals.add(adt.name, adt);
		}
		
		
		private function buildStruct(structDecl:StructDecl):void {
			var struct:IRStruct = new IRStruct();
			struct.name = structDecl.name;
			struct.loc = structDecl.loc;
			struct.owner = unit;
			
			for each ( var group:FieldGroup in structDecl.fieldGroups ){
				var type:IRTypeNode = buildTypeNode(group.type);
				for each ( var binder:Binder in group.binders ){
					var field:IRStructField = new IRStructField(struct);
					field.binder = binder;
					field.type = type;
					struct.fields.push(field);
				}
			}
			
			unit.globals.add(struct.name, struct);
		}
		
		private function buildFunction(functionDecl:FunctionDecl):void {
			var fun:IRFunction = new IRFunction();
			fun.name = functionDecl.name;
			fun.loc = functionDecl.loc;
			fun.ast = functionDecl.body;
			fun.owner = unit;
			
			fun.returnType = buildTypeNode(functionDecl.signature.returnType);
			
			buildParams(fun.params, functionDecl.signature.params);
			
			unit.globals.add(fun.name, fun);
		}
		
		private function buildParams(irParams:Vector.<IRParam>, astParams:Vector.<ParamGroup>):void {
			for each ( var group:ParamGroup in astParams ){
				var type:IRTypeNode = buildTypeNode(group.type);
				for each ( var binder:Binder in group.binders ){
					var param:IRParam = new IRParam;
					param.type = type;
					param.binder = binder;
					irParams.push(param);
				}
			}
		}
		
		public function buildTypeNode(type:AstType):IRTypeNode {
			var node:IRTypeNode = new IRTypeNode;
			node.ast = type;
			return node;
		}
		
	}

}