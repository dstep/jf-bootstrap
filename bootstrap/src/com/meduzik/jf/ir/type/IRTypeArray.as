package com.meduzik.jf.ir.type {
	import com.meduzik.jf.ast.expr.AstExpr;
	/**
	 * ...
	 * @author 
	 */
	public class IRTypeArray extends IRType {
		
		public var type:IRType;
		public var size:AstExpr;
		public var fixedSize:Number = Number.NaN;
		
		public function IRTypeArray(type:IRType, size:AstExpr) {
			this.size = size;
			this.type = type;
			
		}
		
	}

}