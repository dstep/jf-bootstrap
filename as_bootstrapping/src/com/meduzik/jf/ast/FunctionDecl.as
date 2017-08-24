package com.meduzik.jf.ast {
	/**
	 * ...
	 * @author 
	 */
	public class FunctionDecl extends TopLevelDecl{
		
		public var name:String;
		public var signature:FunctionSignature;
		public var body:FunctionBody;
		
		public function FunctionDecl() {
			
		}
		
	}

}