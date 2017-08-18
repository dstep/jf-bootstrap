package com.meduzik.jf.ir {
	import com.meduzik.jf.ast.Binder;
	/**
	 * ...
	 * @author 
	 */
	public class IRStructField {
		public var owner:IRStruct;
		
		public var binder:Binder;
		public var type:IRTypeNode;
		
		public function IRStructField(owner:IRStruct) {
			this.owner = owner;
			
		}
		
	}

}