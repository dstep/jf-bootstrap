package com.meduzik.jf.parser {
	import com.meduzik.jf.ast.SrcLoc;
	/**
	 * ...
	 * @author 
	 */
	public class LexerError extends Error {
		private var _loc:SrcLoc;
		
		public function LexerError(loc:SrcLoc, message:String ) {
			super(message);
			_loc = loc;
		}
		
		public function get loc():SrcLoc {
			return _loc;
		}
		
	}

}