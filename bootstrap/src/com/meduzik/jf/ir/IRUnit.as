package com.meduzik.jf.ir {
	import com.meduzik.jf.compiler.SourceFile;
	/**
	 * ...
	 * @author 
	 */
	public class IRUnit {
		public var owner:SourceFile;
	
		public var imports:ImportSet;
		
		public const globals:SymbolDict = new SymbolDict();
		
		public function IRUnit(owner:SourceFile) {
			this.owner = owner;
			
			imports = new ImportSet(this);
			
		}
		
	}

}