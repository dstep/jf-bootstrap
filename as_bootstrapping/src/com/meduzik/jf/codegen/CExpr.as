package com.meduzik.jf.codegen {
	import com.meduzik.jf.ir.type.IRType;
	/**
	 * ...
	 * @author 
	 */
	public class CExpr {
		public var type:IRType;
		public var ref:String;
		
		public function CExpr(type:IRType, ref:String) {
			this.ref = ref;
			this.type = type;
			
		}
		
		public function toString():String{
			return ref;
		}
		
	}

}