package com.meduzik.jf.codegen {
	import com.meduzik.jf.ast.SrcLoc;
	import com.meduzik.jf.ir.IRUnit;
	import flash.utils.ByteArray;
	/**
	 * ...
	 * @author 
	 */
	public class FormattedWriter {
		private var _indent:int = 0;
		private var indents:Vector.<String> = Vector.<String>([""]);
		
		private var code:ByteArray = new ByteArray();
		private var lineEmpty:Boolean = false;
		
		private static const Newline:int = '\n'.charCodeAt();
		
		public function FormattedWriter() {
		}
		
		public function getResult():String{
			code.position = 0;
			return code.readUTFBytes(code.length);
		}
		
		public function write(string:String):void{
			var lines:Array = string.split("\n");
			for ( var i:int = 0; i < lines.length - 1; i++ ){
				_write(lines[i]);
				_endl();
			}
			_write(lines[lines.length - 1]);
		}
		
		public function writeln(string:String = ""):void{
			write(string);
			_endl();
		}
		
		private function _write(line:String):void {
			if ( !line || line.length == 0 ){
				return;
			}
			if ( lineEmpty ){
				code.writeUTFBytes(indents[_indent]);
			}
			code.writeUTFBytes(line);
			lineEmpty = false;
		}
		
		private function _endl():void {
			code.writeByte(Newline);
			lineEmpty = true;
		}
		
		public function indent():void{
			_indent++;
			if ( indents.length <= _indent ){
				indents[indents.length] = indents[indents.length - 1] + "\t";
			}
		}
		
		public function unindent():void{
			_indent--;
		}
		
		public function loc(loc:SrcLoc):void {
			flush();
			writeln("#line " + loc.line);
		}
		
		public function flush():void {
			if ( !lineEmpty ){
				_endl();
			}
		}
		
		public function file(owner:IRUnit, loc:SrcLoc):void {
			flush();
			writeln("#line " + loc.line + " " + JSON.stringify(owner.owner.getFileName()));
		}
		
	}

}