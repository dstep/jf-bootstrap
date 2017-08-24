package com.meduzik.jf.ir.ref {
	import com.meduzik.jf.ast.SrcLoc;
	import com.meduzik.jf.ir.Symbol;
	/**
	 * ...
	 * @author 
	 */
	public class Reference {
		public var symbol:Symbol;
		public var loc:SrcLoc;
		
		public function Reference(loc:SrcLoc, symbol:Symbol) {
			this.loc = loc;
			this.symbol = symbol;
			
		}
		
	}

}