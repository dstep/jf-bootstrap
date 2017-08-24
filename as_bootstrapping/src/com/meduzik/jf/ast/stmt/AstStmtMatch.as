package com.meduzik.jf.ast.stmt {
	import com.meduzik.jf.ast.expr.AstExpr;
	/**
	 * ...
	 * @author 
	 */
	public class AstStmtMatch extends AstStmt{
		
		public var expr:AstExpr;
		
		public var cases:Vector.<AstCase> = new Vector.<AstCase>();
		
		public function AstStmtMatch() {
			
		}
		
	}

}