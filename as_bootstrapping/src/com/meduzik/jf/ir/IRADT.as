package com.meduzik.jf.ir {
	import com.meduzik.jf.ast.ADTConstructor;
	import com.meduzik.jf.ir.ref.Reference;
	import com.meduzik.jf.ir.type.IRMetatype;
	import com.meduzik.jf.ir.type.IRRefType;
	import com.meduzik.jf.ir.type.IRType;
	/**
	 * ...
	 * @author 
	 */
	public class IRADT extends Symbol {
		public var constructors:Vector.<IRADTConstructor> = new Vector.<IRADTConstructor>();
		public var fields:Vector.<IRADTField> = new Vector.<IRADTField>();
		public var selfType:IRMetatype;
		public var instanceType:IRType;
		
		public function IRADT() {
			selfType = new IRMetatype(this);			
		}
		
		public function findConstructor(id:String):IRADTConstructor {
			for each ( var cons:IRADTConstructor in constructors ){
				if ( cons.binder.name == id ){
					return cons;
				}
			}
			return null;
		}
		
		public function findField(id:String):IRADTField {
			for each ( var field:IRADTField in fields ){
				if ( field.binder.name == id ){
					return field;
				}
			}
			return null;
		}
		
		
		
	}

}