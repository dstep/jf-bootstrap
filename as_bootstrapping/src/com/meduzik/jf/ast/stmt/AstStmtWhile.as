package com.meduzik.jf.ast.stmt {
	import com.meduzik.jf.ast.expr.AstExpr;
	/**
	 * ...
	 * @author 
	 */
	public class AstStmtWhile extends AstStmt{
		
		public var expr:AstExpr;
		public var stmt:AstStmt;
		
		public function AstStmtWhile(expr:AstExpr) {
			this.expr = expr;
		}
		
	}

}