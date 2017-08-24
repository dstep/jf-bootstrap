package com.meduzik.jf.ast.expr {
	/**
	 * ...
	 * @author 
	 */
	public class AstNumberLit extends AstExpr{
		public var content:String;
		
		public function AstNumberLit(content:String) {
			this.content = content;
			
		}
		
	}

}