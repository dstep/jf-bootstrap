package com.meduzik.jf.compiler {
	import com.meduzik.jf.ast.ASTUnit;
	import com.meduzik.jf.codegen.Codegen;
	import com.meduzik.jf.codegen.CodegenError;
	import com.meduzik.jf.codegen.FormattedWriter;
	import com.meduzik.jf.ir.IRUnit;
	import com.meduzik.jf.irbuilder.IRUnitBuilder;
	import com.meduzik.jf.ircompiler.IRCompiler;
	import com.meduzik.jf.parser.Lexer;
	import com.meduzik.jf.parser.LexerError;
	import com.meduzik.jf.parser.ParseError;
	import com.meduzik.jf.parser.Parser;
	import com.meduzik.jf.utils.ReadFileData;
	import com.meduzik.jf.utils.WriteFileContents;
	import flash.filesystem.File;
	import flash.utils.ByteArray;
	/**
	 * ...
	 * @author 
	 */
	public class SourceFile {
		public var unit:CompilationUnit;
		public var suffix:String;
		public var file:File;
		public var ast:ASTUnit;
		
		public var ir:IRUnit;
		
		public function SourceFile(unit:CompilationUnit, suffix:String, file:File) {
			this.file = file;
			this.suffix = suffix;
			this.unit = unit;
			
		}
		
		public function parse(ctx:CompilerContext):void {
			Diagnostic.Info("Parsing source file", file.nativePath);
			var data:ByteArray = ReadFileData(file);
			
			try{
				ast = new Parser().parse(new Lexer().lex(data));
			}catch (le:LexerError){
				Diagnostic.Report(file.nativePath, le.loc, "Lexer: " + le.message);
			}catch (pe:ParseError){
				Diagnostic.Report(file.nativePath, pe.loc, "Parser: " + pe.message);
			}
		}
		
		public function buildIR(ctx:CompilerContext):void{
			Diagnostic.Info("Building IR for source file", file.nativePath);
			
			ir = new IRUnitBuilder(ctx, this).resolve(ast);
		}
		
		public function getFileName():String {
			return file.nativePath;
		}
		
		public function compile(ctx:CompilerContext):void {
			Diagnostic.Info("Compiling source file", file.nativePath);
			
			new IRCompiler(ctx, this).compile(ir);
		}
		
		public function codegen(codegen:Codegen, ctx:CompilerContext):void {
			Diagnostic.Info("Codegen for source file", file.nativePath);
			
			try{
				codegen.codegen(this, ir);
			}catch (e:CodegenError){
			}
		}
		
	}

}