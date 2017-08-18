package com.meduzik.jf.ir {
	import com.meduzik.jf.ast.Binder;
	/**
	 * ...
	 * @author 
	 */
	public class IRADTField {
		public var owner:IRADT;
		
		public var binder:Binder;
		public var type:IRTypeNode;
		
		public function IRADTField(owner:IRADT) {
			this.owner = owner;
			
		}
		
	}

}