package com.meduzik.jf.ast.expr {
	import com.meduzik.jf.ast.type.AstType;
	/**
	 * ...
	 * @author 
	 */
	public class AstNew extends AstExpr {
		public var type:AstType;
		
		public function AstNew(type:AstType) {
			this.type = type;			
		}
		
	}

}