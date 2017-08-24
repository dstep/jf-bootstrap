package com.meduzik.jf.ast {
	/**
	 * ...
	 * @author 
	 */
	public class FunctionBodyFFI extends FunctionBody{
		public var string:String;
		public var loc:SrcLoc;
		
		public function FunctionBodyFFI(loc:SrcLoc, string:String) {
			this.string = string;
			this.loc = loc;
			
		}
		
	}

}