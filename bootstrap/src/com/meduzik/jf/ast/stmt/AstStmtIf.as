package com.meduzik.jf.ast.stmt {
	import com.meduzik.jf.ast.expr.AstExpr;
	/**
	 * ...
	 * @author 
	 */
	public class AstStmtIf extends AstStmt {
		
		public var cond:AstExpr;
		public var then:AstStmt;
		public var else_:AstStmt;
		
		public function AstStmtIf() {
			
		}
		
	}

}