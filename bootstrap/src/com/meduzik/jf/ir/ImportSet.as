package com.meduzik.jf.ir {
	import com.meduzik.jf.ast.QualID;
	/**
	 * ...
	 * @author 
	 */
	public class ImportSet {
		
		public var ns:ImportNamespace;
		
		public const list:Vector.<IRImport> = new Vector.<IRImport>();
		private var owner:IRUnit;
		
		public function ImportSet(owner:IRUnit) {
			this.owner = owner;
			
			ns = new ImportNamespace(owner);
		}
		
		public function add(names:Vector.<String>, decl:IRImport):void{
			ns.add(names, 0, decl);
			list.push(decl);
		}
		
	}

}