package com.meduzik.jf.ir {
	import com.meduzik.jf.compiler.Diagnostic;
	/**
	 * ...
	 * @author 
	 */
	public class ImportNamespace {
		
		public var owner:IRUnit;
		
		private var obj:Object = {};
		private var decl:IRImport;
		
		
		public function ImportNamespace(owner:IRUnit) {
			this.owner = owner;			
		}
		
		public function add(names:Vector.<String>, idx:int, decl:IRImport):void {
			if ( idx < names.length ) {
				var part:String = names[idx];
				if ( !obj[part] ){
					obj[part] = new ImportNamespace(owner);
				}
				
				ImportNamespace(obj[part]).add(names, idx + 1, decl);
			}else{
				if ( this.decl ){
					Diagnostic.Report(owner.owner.getFileName(), decl.loc, "Duplicate import declaration");
				}
				this.decl = decl;
			}
		}
		
	}

}