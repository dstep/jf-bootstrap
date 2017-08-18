package com.meduzik.jf.ircompiler {
	import avmplus.getQualifiedClassName;
	import com.meduzik.jf.ast.SrcLoc;
	import com.meduzik.jf.ast.type.AstType;
	import com.meduzik.jf.ast.type.AstTypeRef;
	import com.meduzik.jf.compiler.CompilationUnit;
	import com.meduzik.jf.compiler.CompilerContext;
	import com.meduzik.jf.compiler.Diagnostic;
	import com.meduzik.jf.compiler.SourceFile;
	import com.meduzik.jf.ir.IRADT;
	import com.meduzik.jf.ir.IRADTConstructor;
	import com.meduzik.jf.ir.IRADTField;
	import com.meduzik.jf.ir.IRFunction;
	import com.meduzik.jf.ir.IRImport;
	import com.meduzik.jf.ir.IRParam;
	import com.meduzik.jf.ir.IRStruct;
	import com.meduzik.jf.ir.IRStructField;
	import com.meduzik.jf.ir.IRTypeNode;
	import com.meduzik.jf.ir.IRUnit;
	import com.meduzik.jf.ir.Symbol;
	import com.meduzik.jf.ir.ref.Reference;
	import com.meduzik.jf.ir.type.IRFunType;
	import com.meduzik.jf.ir.type.IRPrimType;
	import com.meduzik.jf.ir.type.IRRefType;
	import com.meduzik.jf.ir.type.IRType;
	/**
	 * ...
	 * @author 
	 */
	public class IRCompiler {
		private var ctx:CompilerContext;
		private var unit:IRUnit;
		private var source:SourceFile;
		
		public function IRCompiler(ctx:CompilerContext, source:SourceFile) {
			this.source = source;
			this.ctx = ctx;
			
			unit = source.ir;
		}
		
		public function compile(unit:IRUnit):void{
			this.unit = unit;	
			
			for each ( var symbol:Symbol in unit.globals.list ){
				compileSymbol(symbol);
			}
		}		
		
		private function compileSymbol(symbol:Symbol):void {
			if ( symbol is IRFunction ){
				compileFunction(symbol as IRFunction);
			}else if ( symbol is IRStruct ){
				compileStruct(symbol as IRStruct);
			}else if ( symbol is IRADT ){
				compileADT(symbol as IRADT);
			}else{
				Diagnostic.Report(source.getFileName(), symbol.loc, "Symbol not implemented", getQualifiedClassName(symbol));
			}
		}
		
		private function compileADT(adt:IRADT):void {
			for each ( var field:IRADTField in adt.fields ){
				compileADTField(field);
			}
			var tag:int = 0;
			for each ( var cons:IRADTConstructor in adt.constructors ){
				cons.tag = tag;
				compileADTConstructor(cons);
				tag++;
			}
		}
		
		private function compileADTField(field:IRADTField):void {
			compileTypeNode(field.type);
		}
		
		private function compileADTConstructor(cons:IRADTConstructor):void {
			for each ( var param:IRParam in cons.params ){
				compileTypeNode(param.type);
			}
			
			var funType:IRFunType = new IRFunType(cons.owner.instanceType);
			for each ( param in cons.params ){
				funType.paramType.push(param.type.resolution);
			}
			cons.funType = funType;
		}
		
		private function compileStruct(struct:IRStruct):void {
			for each ( var field:IRStructField in struct.fields ){
				compileStructField(field);
			}
		}
		
		private function compileStructField(field:IRStructField):void {
			compileTypeNode(field.type);
		}
		
		private function compileFunction(fun:IRFunction):void {
			compileFunctionDecl(fun);
		}
		
		private function compileFunctionDecl(fun:IRFunction):void {
			for each ( var param:IRParam in fun.params ){
				compileTypeNode(param.type);
			}
			compileTypeNode(fun.returnType);
			
			var funType:IRFunType = new IRFunType(fun.returnType.resolution);
			for each ( param in fun.params ){
				funType.paramType.push(param.type.resolution);
			}
			fun.funType = funType;
		}
		
		public function compileTypeNode(type:IRTypeNode):void {
			if ( !type.resolution ){
				type.resolution = compileType(type, type.ast);
			}
		}
		
		private function compileType(type:IRTypeNode, ast:AstType):IRType {
			if ( !ast ){
				return IRPrimType.Unit;
			}
			if ( ast is AstTypeRef ){
				var ref:AstTypeRef = ast as AstTypeRef;
				for each ( var prim:IRPrimType in IRPrimType.All ){
					if ( prim.id == ref.id ){
						return prim;
					}
				}
				var reference:Reference = resolve(ref.loc, ref.id);
				if ( !reference ){
					Diagnostic.Report(source.getFileName(), ast.loc, "Can't resolve name", ref.id);
					return null;
				}
				return new IRRefType(reference);
			}else{
				Diagnostic.Report(source.getFileName(), ast.loc, "Can't resolve type", getQualifiedClassName(ast));
				return null;
			}
		}
		
		public function resolve(loc:SrcLoc, id:String):Reference {
			var symbol:Symbol = findSymbol(this.source, id);
			if ( symbol ){
				return new Reference(loc, symbol);
			}
			var resolutions:Vector.<Symbol> = new Vector.<Symbol>();
			for each ( var imp:IRImport in unit.imports.list ){
				var cu:CompilationUnit = imp.target;
				if ( cu ){
					for each ( var source:SourceFile in cu.sources ){
						var theirSymbol:Symbol = findSymbol(source, id);
						if ( theirSymbol ){
							resolutions.push(theirSymbol);
						}
					}
				}
			}
			if ( resolutions.length > 1 ){
				Diagnostic.Report(source.getFileName(), loc, "Ambigious name", id, symbol, resolutions);
			}
			if ( resolutions.length == 0 ){
				return null;
			}
			return new Reference(loc, resolutions[0]);
		}
		
		private function findSymbol(source:SourceFile, id:String):Symbol {
			return source.ir.globals.dict[id];
		}
	}

}