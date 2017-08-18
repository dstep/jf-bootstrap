package com.meduzik.jf.ir {
	import com.meduzik.jf.ast.Binder;
	import com.meduzik.jf.ir.type.IRFunType;
	/**
	 * ...
	 * @author 
	 */
	public class IRADTConstructor {
		public var owner:IRADT;
		public var binder:Binder;
		public var params:Vector.<IRParam> = new Vector.<IRParam>();
		public var funType:IRFunType;
		public var tag:int;
		
		public function IRADTConstructor(owner:IRADT) {
			this.owner = owner;
			
		}
		
	}

}