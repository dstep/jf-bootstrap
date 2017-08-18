package com.meduzik.jf.ast {
	import com.meduzik.jf.ast.type.AstType;
	/**
	 * ...
	 * @author 
	 */
	public class ParamGroup {
		
		public const binders:Vector.<Binder> = new Vector.<Binder>();
		public var type:AstType;
		
		public function ParamGroup() {
			
		}
		
	}

}