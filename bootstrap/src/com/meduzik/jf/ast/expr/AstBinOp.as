package com.meduzik.jf.ast.expr {
	import com.meduzik.jf.parser.TokenType;
	/**
	 * ...
	 * @author 
	 */
	public class AstBinOp extends AstExpr{
		public var op:TokenType;
		public var rhs:AstExpr;
		public var lhs:AstExpr;
		
		public function AstBinOp(lhs:AstExpr, op:TokenType, rhs:AstExpr) {
			this.op = op;
			this.rhs = rhs;
			this.lhs = lhs;
			
		}
		
	}

}