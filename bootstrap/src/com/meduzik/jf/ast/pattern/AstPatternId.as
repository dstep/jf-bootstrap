package com.meduzik.jf.ast.pattern {
	import com.meduzik.jf.ast.Binder;
	/**
	 * ...
	 * @author 
	 */
	public class AstPatternId extends AstPattern{
		
		public var binder:Binder;
		
		public function AstPatternId(binder:Binder) {
			this.binder = binder;
			loc = binder.loc;
		}
		
	}

}