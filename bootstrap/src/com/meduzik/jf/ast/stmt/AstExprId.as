package com.meduzik.jf.ast.stmt {
	import com.meduzik.jf.ast.expr.AstExpr;
	/**
	 * ...
	 * @author 
	 */
	public class AstExprId extends AstExpr{
		public var id:String;
		
		public function AstExprId(id:String) {
			this.id = id;
			
		}
		
	}

}