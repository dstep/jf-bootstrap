package com.meduzik.jf.ast {
	/**
	 * ...
	 * @author 
	 */
	public class SrcLoc {
		
		public var line:int;
		public var col:int;
		
		public function SrcLoc(line:int, col:int) {
			this.col = col;
			this.line = line;
			
		}
		
		public function toString():String {
			return line + "," + col;
		}
		
	}

}