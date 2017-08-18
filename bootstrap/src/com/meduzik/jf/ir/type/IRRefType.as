package com.meduzik.jf.ir.type {
	import com.meduzik.jf.ir.ref.Reference;
	/**
	 * ...
	 * @author 
	 */
	public class IRRefType extends IRType{
		public var reference:Reference;
		
		public function IRRefType(reference:Reference) {
			this.reference = reference;
			
		}
		
	}

}