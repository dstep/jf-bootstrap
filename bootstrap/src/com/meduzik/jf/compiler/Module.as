package com.meduzik.jf.compiler {
	import com.meduzik.jf.utils.ReadFileContents;
	import flash.filesystem.File;
	/**
	 * ...
	 * @author 
	 */
	public class Module {
		private var _path:File;
		private var _id:String;
		
		private var name:String;
		private var version:String;
		
		private var sources:Vector.<SourcePath> = new Vector.<SourcePath>();
		
		private var units:Vector.<CompilationUnit> = new Vector.<CompilationUnit>();
		private var unitMap:Object = {};
		
		public function Module(id:String, path:File) {
			_id = id;
			_path = path;
			
		}
		
		static public function Create(ctx:CompilerContext, id:String, path:File):Module {
			var module:Module = new Module(id, path);
			return module;
		}
		
		public function parse(ctx:CompilerContext):void {
			Diagnostic.Info("Parsing module", id);
			var moduleInfo:Object = JSON.parse(ReadFileContents(path.resolvePath("module.json")));
			
			name = moduleInfo.name;
			version = moduleInfo.version;
			
			var sourcesInfo:Array = moduleInfo.sources as Array;
			if ( !sourcesInfo ){
				throw new Error("missing sources");
			}
			
			for each ( var sourceInfo:Object in sourcesInfo ){
				var sourcePath:String = sourceInfo.path;
				sources.push(new SourcePath(sourcePath, path.resolvePath(sourcePath)));
			}
		}
		
		public function getCompilationUnit(name:String):CompilationUnit {
			if ( !unitMap[name] ){
				var unit:CompilationUnit = new CompilationUnit(this, name);
				unitMap[name] = unit;
				units.push(unit);
			}
			return unitMap[name];
		}
		
		public function visit(ctx:CompilerContext):void {			
			for each ( var source:SourcePath in sources ){
				source.visit(ctx, this);
			}
			
			for each ( var unit:CompilationUnit in units ){
				unit.visit(ctx);
			}
		}
		
		public function get path():File {
			return _path;
		}
		
		public function get id():String {
			return _id;
		}
		
	}

}