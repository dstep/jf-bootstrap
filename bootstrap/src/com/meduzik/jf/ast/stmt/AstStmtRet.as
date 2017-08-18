package com.meduzik.jf.ast.stmt {
	import com.meduzik.jf.ast.expr.AstExpr;
	/**
	 * ...
	 * @author 
	 */
	public class AstStmtRet extends AstStmt {
		
		public var expr:AstExpr;
		
		public function AstStmtRet(expr:AstExpr) {
			this.expr = expr;
		}
		
	}

}