package com.meduzik.jf.ir {
	import com.meduzik.jf.ast.FunctionBody;
	import com.meduzik.jf.ir.type.IRType;
	/**
	 * ...
	 * @author 
	 */
	public class IRFunction extends Symbol{
		
		public var ast:FunctionBody;
		
		public var params:Vector.<IRParam> = new Vector.<IRParam>();
		public var returnType:IRTypeNode;
		public var funType:IRType;
		
		public function IRFunction() {
			
		}
		
	}

}