package com.meduzik.jf.ast {
	/**
	 * ...
	 * @author 
	 */
	public class Binder extends AstNode {
		public var name:String;
		
		public function Binder(loc:SrcLoc, name:String) {
			this.name = name;
			this.loc = loc;
			
		}
		
	}

}