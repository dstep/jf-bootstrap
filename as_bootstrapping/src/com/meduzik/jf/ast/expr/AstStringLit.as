package com.meduzik.jf.ast.expr {
	/**
	 * ...
	 * @author 
	 */
	public class AstStringLit extends AstExpr{
		public var content:String;
		
		public function AstStringLit(content:String) {
			this.content = content;
			
		}
		
	}

}