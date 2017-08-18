package com.meduzik.jf.ast.expr {
	/**
	 * ...
	 * @author 
	 */
	public class AstExprDot extends AstExpr{
		public var id:String;
		public var lhs:AstExpr;
		
		public function AstExprDot(lhs:AstExpr, id:String) {
			this.id = id;
			this.lhs = lhs;
			
		}
		
	}

}