package com.meduzik.jf.ast.stmt {
	import com.meduzik.jf.ast.expr.AstExpr;
	/**
	 * ...
	 * @author 
	 */
	public class AstStmtEval extends AstStmt{
		
		public var expr:AstExpr;
		
		public function AstStmtEval(expr:AstExpr) {
			this.expr = expr;
		}
		
	}

}