package com.meduzik.jf.compiler {
	import flash.filesystem.File;
	/**
	 * ...
	 * @author 
	 */
	public class CompilationUnit {
		public var module:Module;
		public var name:String;
		
		private var main:SourceFile;
		private var extras:Object = {};
		
		public const sources:Vector.<SourceFile> = new Vector.<SourceFile>();
		
		public function CompilationUnit(module:Module, name:String) {
			this.name = name;
			this.module = module;
			
		}
		
		public function addSourceFile(suffix:String, file:File):void {
			var sourceFile:SourceFile = new SourceFile(this, suffix, file);
			sources.push(sourceFile);
			if ( !suffix ){
				if ( main ){
					throw new Error("main source file already exists for unit " + name);
				}
				main = sourceFile;
			}else{
				if ( extras[suffix] ){
					throw new Error("source file with suffix " + suffix + " already exists for unit " + name);
				}
				extras[suffix] = sourceFile;
			}
		}
		
		public function visit(ctx:CompilerContext):void {
			if ( !main ){
				throw new Error("missing main file for compilation unit " + name);
			}
			for each ( var source:SourceFile in sources ){
				ctx.registerSourceFile(source);
			}
		}
		
		
	}

}