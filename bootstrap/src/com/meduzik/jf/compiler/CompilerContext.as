package com.meduzik.jf.compiler {
	import com.meduzik.jf.codegen.Codegen;
	import com.meduzik.jf.codegen.FormattedWriter;
	import com.meduzik.jf.utils.ReadFileContents;
	import com.meduzik.jf.utils.WriteFileContents;
	import flash.filesystem.File;
	/**
	 * ...
	 * @author 
	 */
	public class CompilerContext {
		private var projectRoot:File;
		public var outputRoot:File;
		
		private var assemblies:Vector.<Assembly> = new Vector.<Assembly>();
		private var assemblyMap:Object = {};
		
		private var modules:Vector.<Module> = new Vector.<Module>();
		private var moduleMap:Object = {};
		
		private var sources:Vector.<SourceFile> = new Vector.<SourceFile>();
		
		private var writer:FormattedWriter = new FormattedWriter();
		
		public function CompilerContext() {
			
		}
		
		public function initialize():void {
			
		}
		
		public function setOutput(file:File):void{
			outputRoot = file;
		}
		
		public function setProject(file:File):void {
			projectRoot = file.parent;
			
			var project:Project = new Project();
			project.parse(this, file);
			
		}
		
		public function run(symbol:String):void {
			
		}
		
		public function addAssembly(key:String, assembly:Assembly):void {
			Diagnostic.Info("Registered assembly", key);
			assemblies.push(assembly);
			assemblyMap[key] = assembly;
		}
		
		public function compile():void {
			for each ( var assembly:Assembly in assemblies ){			
				assembly.resolve(this);
			}
			
			for each ( var module:Module in modules ){	
				module.parse(this);
				module.visit(this);
			}
			
			for each ( var source:SourceFile in sources ){			
				source.parse(this);
			}
			
			for each ( source in sources ){			
				source.buildIR(this);
			}
			
			for each ( source in sources ){			
				source.compile(this);
			}
			
			for each ( var file:File in outputRoot.getDirectoryListing() ){
				if ( file.isDirectory ){
					file.deleteDirectory(true);
				}else{
					file.deleteFile();
				}				
			}
			
			var codegen:Codegen = new Codegen(this);
			
			for each ( source in sources ){			
				source.codegen(codegen, this);
			}
			
			WriteFileContents(outputRoot.resolvePath("program.c"), codegen.finalize());
		}
		
		public function getModule(modulePath:String):Module {
			modulePath = resolveModulePath(modulePath);
			if ( moduleMap[modulePath] ){
				return moduleMap[modulePath];
			}
			
			var module:Module = Module.Create(this, modulePath, projectRoot.resolvePath(modulePath));
			Diagnostic.Info("Registered module", modulePath);
			modules.push(module);
			moduleMap[modulePath] = module;
			return module;
		}
		
		public function registerSourceFile(source:SourceFile):void {
			sources.push(source);
		}
		
		private function resolveModulePath(modulePath:String):String {
			var moduleFile:File = projectRoot.resolvePath(modulePath);
			
			return projectRoot.getRelativePath(moduleFile);
		}
		
	}

}