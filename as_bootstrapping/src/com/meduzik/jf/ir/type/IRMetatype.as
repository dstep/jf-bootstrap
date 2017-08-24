package com.meduzik.jf.ir.type {
	import com.meduzik.jf.ir.Symbol;
	/**
	 * ...
	 * @author 
	 */
	public class IRMetatype extends IRType {
		
		public var owner:Symbol;
		
		public function IRMetatype(owner:Symbol) {
			this.owner = owner;
			
		}
		
	}

}