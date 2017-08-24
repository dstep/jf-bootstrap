package com.meduzik.jf.ast {
	import com.meduzik.jf.ast.type.AstType;
	/**
	 * ...
	 * @author 
	 */
	public class StructDecl extends TopLevelDecl {
		
		public var name:String;
		public var fieldGroups:Vector.<FieldGroup> = new Vector.<FieldGroup>();
		
		
		public function StructDecl() {
			
		}
		
	}

}