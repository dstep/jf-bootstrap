package com.meduzik.jf.ir {
	/**
	 * ...
	 * @author 
	 */
	public class IRStruct extends Symbol {
		public var fields:Vector.<IRStructField> = new Vector.<IRStructField>();
		
		public function IRStruct() {
			
		}
		
		public function findField(id:String):IRStructField {
			for each ( var field:IRStructField in fields ){
				if ( field.binder.name == id ){
					return field;
				}
			}
			return null;
		}
		
	}

}