package com.meduzik.jf.ast.type {
	import com.meduzik.jf.ast.expr.AstExpr;
	/**
	 * ...
	 * @author 
	 */
	public class AstTypeArray extends AstType{
		public var size:AstExpr;
		public var elTy:AstType;
		
		public function AstTypeArray(elTy:AstType, size:AstExpr) {
			this.size = size;
			this.elTy = elTy;
			
		}
		
	}

}