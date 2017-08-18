package com.meduzik.jf.compiler {
	import flash.filesystem.File;
	/**
	 * ...
	 * @author 
	 */
	public class SourcePath {
		
		private var localPath:String;
		private var path:File;
		
		public function SourcePath(localPath:String, path:File) {
			this.localPath = localPath;
			this.path = path;
			
			if ( !path.isDirectory ){
				throw new Error("source path is not a directory");
			}
		}
		
		public function visit(ctx:CompilerContext, module:Module):void {
			recursiveWalk(ctx, module, "", path);
		}
		
		private function recursiveWalk(ctx:CompilerContext, module:Module, prefix:String, path:File):void {
			for each ( var file:File in path.getDirectoryListing() ){
				if ( file.isDirectory ){
					recursiveWalk(ctx, module, prefix + file.name + ".", file);
				}
				
				if ( file.extension == "jf" ){
					var basename:String = file.name.substr(0, file.name.length - 3);
					var unitName:String;
					var suffixName:String;
					if ( basename.indexOf(".") >= 0 ){
						unitName = basename.substr(0, basename.indexOf("."));
						suffixName = basename.substr(basename.indexOf(".") + 1);
					}else{
						unitName = basename;
					}
					
					var fullUnitName:String = prefix + unitName;
					
					var unit:CompilationUnit = module.getCompilationUnit(fullUnitName);
					unit.addSourceFile(suffixName, file);					
				}
			}
		}
		
	}

}