package com.meduzik.jf.compiler {
	import com.meduzik.jf.compiler.CompilerContext;
	import com.meduzik.jf.utils.ReadFileContents;
	import flash.filesystem.File;
	/**
	 * ...
	 * @author 
	 */
	public class Project {
		
		public function Project() {
			
		}
		
		public function parse(ctx:CompilerContext, file:File):void {
			Diagnostic.Info("Reading project file", file.nativePath);
			var projectInfo:Object = JSON.parse(ReadFileContents(file));
			
			var assemblies:Object = projectInfo.assemblies as Object;
			if ( assemblies ){
				for ( var key:String in assemblies ){
					var assemblyInfo:Object = assemblies[key];
					ctx.addAssembly(key, Assembly.Parse(key, assemblyInfo));
				}
			}
		}
		
	}

}