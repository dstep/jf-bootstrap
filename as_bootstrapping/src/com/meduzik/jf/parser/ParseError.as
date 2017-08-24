package com.meduzik.jf.parser {
	import com.meduzik.jf.ast.SrcLoc;
	/**
	 * ...
	 * @author 
	 */
	public class ParseError extends Error{
		private var _loc:SrcLoc;

		public function ParseError(loc:SrcLoc, message:String) {
			super(message);
			_loc = loc;
		}
		
		public function get loc ():SrcLoc {
			return _loc;
		}
	}

}