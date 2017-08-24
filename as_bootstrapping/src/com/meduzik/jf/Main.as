package com.meduzik.jf{
	import com.meduzik.jf.compiler.CompilerContext;
	import com.meduzik.jf.compiler.Diagnostic;
	import flash.desktop.NativeApplication;
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import flash.filesystem.File;
	
	/**
	 * ...
	 * @author 
	 */
	public class Main extends Sprite {
		
		public function Main() {
			addEventListener(Event.ENTER_FRAME, onEnterFirstFrame);
		}
		
		private function onEnterFirstFrame(e:Event):void {
			removeEventListener(Event.ENTER_FRAME, onEnterFirstFrame);
			
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			
			addChild(Diagnostic.Instance);
			
			var cc:CompilerContext = new CompilerContext();
			cc.initialize();
			Diagnostic.Info("Compiler Initialized");
			cc.setOutput(new File("D:\\Dropbox\\language_ws\\jf-bootstrap\\jellyfish\\out"));
			cc.setProject(new File("D:\\Dropbox\\language_ws\\jf-bootstrap\\jellyfish\\compiler\\Compiler.jfproject"));
			cc.compile();
			
			cc.run("main.main.run");
			
			if ( !Diagnostic.Instance.isError() ){
				NativeApplication.nativeApplication.exit();
			}
			
		}
		
	}
	
}