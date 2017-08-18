package com.meduzik.jf.ast {
	import com.meduzik.jf.ast.expr.AstExpr;
	import com.meduzik.jf.ast.type.AstType;
	/**
	 * ...
	 * @author 
	 */
	public class GlobalVarDecl extends TopLevelDecl{
		
		public var binder:Binder;
		public var type:AstType;
		public var expr:AstExpr;
		
		public function GlobalVarDecl() {
			
		}
		
	}

}