package com.meduzik.jf.ast.expr {
	/**
	 * ...
	 * @author 
	 */
	public class AstCallExpr extends AstExpr{
		
		public var head:AstExpr;
		public const args:Vector.<AstExpr> = new Vector.<AstExpr>();
		
		public function AstCallExpr() {
			
		}
		
	}

}