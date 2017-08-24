package com.meduzik.jf.ast.stmt {
	import com.meduzik.jf.ast.expr.AstExpr;
	/**
	 * ...
	 * @author 
	 */
	public class AstStmtAssign extends AstStmt {
		
		public var lhs:AstExpr;
		public var rhs:AstExpr;
		
		public function AstStmtAssign(lhs:AstExpr, rhs:AstExpr) {
			this.rhs = rhs;
			this.lhs = lhs;
			
		}
		
	}

}