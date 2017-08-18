package com.meduzik.jf.compiler {
	import com.meduzik.jf.ast.SrcLoc;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.text.TextField;
	import flash.text.TextFormat;
	/**
	 * ...
	 * @author 
	 */
	public class Diagnostic extends Sprite {
		public static const Instance:Diagnostic = new Diagnostic();
		private var tf:TextField;
		
		private var err:Boolean;
		
		public function Diagnostic() {
			tf = new TextField();
			tf.defaultTextFormat = new TextFormat(null, 20);
			tf.wordWrap = true;
			addChild(tf);
			
			addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		private function onAddedToStage(e:Event):void {
			tf.width = stage.stageWidth;
			tf.height = stage.stageHeight;
			
			stage.addEventListener(Event.RESIZE, onStageResize);
		}
		
		private function onStageResize(e:Event):void {
			tf.width = stage.stageWidth;
			tf.height = stage.stageHeight;
		}
		
		public static function Report(file:String, loc:SrcLoc, message:String, ...args):void{
			Instance.report.apply(null, [file, loc, message].concat(args));
		}
		
		public static function Info(message:String, ...args):void{
			Instance.info.apply(null, [message].concat(args));
		}
		
		private function info(message:String, ...args):void {
			tf.appendText(message + " " + args.map(encodeArg).join(' ') + "\n");
			scroll();
		}
		
		private function report(file:String, loc:SrcLoc, message:String, ...args):void {
			tf.appendText(file + "(" + loc.toString() + "): " + message + " " + args.map(encodeArg).join(' ') + "\n");
			scroll();
			err = true;
		}
		
		public function isError():Boolean{
			return err;
		}
		
		private function scroll():void {
			tf.scrollV = tf.maxScrollV;
		}
		
		private function encodeArg(item:*, index:int, array:Array):String {
			return JSON.stringify(item);
		}
		
		
		
	}

}