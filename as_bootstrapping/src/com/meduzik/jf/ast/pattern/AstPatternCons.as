package com.meduzik.jf.ast.pattern {
	/**
	 * ...
	 * @author 
	 */
	public class AstPatternCons extends AstPattern {
		
		public var id:String;
		public var params:Vector.<AstPattern> = new Vector.<AstPattern>();
		
		public function AstPatternCons() {
			
		}
		
	}

}