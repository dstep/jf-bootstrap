package com.meduzik.jf.ir.type {
	/**
	 * ...
	 * @author 
	 */
	public class IRPrimType extends IRType {
		public static const Pointer:IRPrimType = new IRPrimType("pointer");
		public static const I32:IRPrimType = new IRPrimType("i32");
		public static const Str:IRPrimType = new IRPrimType("string");
		public static const Unit:IRPrimType = new IRPrimType("unit");
		public static const Bool:IRPrimType = new IRPrimType("bool");
		
		public static const All:Vector.<IRPrimType> = Vector.<IRPrimType>([
			Pointer,
			I32,
			Str,
			Bool
		]);
		
		public var id:String;
		
		public function IRPrimType(id:String) {
			this.id = id;			
		}
		
	}

}