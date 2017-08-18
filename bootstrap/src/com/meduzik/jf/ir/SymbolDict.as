package com.meduzik.jf.ir {
	import flash.utils.Dictionary;
	/**
	 * ...
	 * @author 
	 */
	public class SymbolDict {
		
		public const dict:Object = new Object();
		public const list:Vector.<Symbol> = new Vector.<Symbol>();
		
		public function SymbolDict() {
			
		}
		
		public function add(name:String, symbol:Symbol):void {
			dict[name] = symbol;
			list[list.length] = symbol;
		}
		
	}

}