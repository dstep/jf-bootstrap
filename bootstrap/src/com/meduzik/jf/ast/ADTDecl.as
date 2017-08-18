package com.meduzik.jf.ast {
	import com.meduzik.jf.ast.type.AstType;
	/**
	 * ...
	 * @author 
	 */
	public class ADTDecl extends TopLevelDecl {
		
		public var name:String;
		public var constructors:Vector.<ADTConstructor> = new Vector.<ADTConstructor>();
		public var fieldGroups:Vector.<FieldGroup> = new Vector.<FieldGroup>();
		
		public function ADTDecl() {
			
		}
		
	}

}