package com.meduzik.jf.compiler {
	/**
	 * ...
	 * @author 
	 */
	public class Assembly {
		
		private var modulePath:String;
		private var _id:String;
		private var module:Module;
		
		public function Assembly(id:String) {
			_id = id;
			
		}
		
		static public function Parse(id:String, assemblyInfo:Object):Assembly {
			var assembly:Assembly = new Assembly(id);
			assembly.parse(assemblyInfo);
			return assembly;
		}
		
		public function resolve(ctx:CompilerContext):void {
			Diagnostic.Info("Resolving assembly", id);
			module = ctx.getModule(modulePath);
		}
		
		
		private function parse(info:Object):void {
			modulePath = info.module;
			if ( !modulePath ){
				throw new Error("module path is empty");
			}
		}
		
		public function get id():String {
			return _id;
		}
		
	}

}