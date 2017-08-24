package com.meduzik.jf.ast {
	import com.meduzik.jf.ast.type.AstType;
	/**
	 * ...
	 * @author 
	 */
	public class FunctionSignature {
		
		public const params:Vector.<ParamGroup> = new Vector.<ParamGroup>();
		public var returnType:AstType;
		
		public function FunctionSignature() {
			
		}
		
	}

}