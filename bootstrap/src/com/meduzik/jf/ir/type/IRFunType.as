package com.meduzik.jf.ir.type {
	/**
	 * ...
	 * @author 
	 */
	public class IRFunType extends IRType{
		public var paramType:Vector.<IRType> = new Vector.<IRType>();
		public var returnType:IRType;
		
		public function IRFunType(returnType:IRType) {
			this.returnType = returnType;			
		}
		
	}

}