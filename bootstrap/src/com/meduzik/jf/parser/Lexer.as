package com.meduzik.jf.parser {
	import com.meduzik.jf.ast.ASTUnit;
	import com.meduzik.jf.ast.SrcLoc;
	import flash.utils.ByteArray;
	/**
	 * ...
	 * @author 
	 */
	public class Lexer {
		private var data:ByteArray;
		private var peek:int = -1;
		private var last:int = -1;
		private var tokens:Vector.<Token> = new Vector.<Token>();
		private var currentPos:int;
		private var tokenStart:int;
		private var tokenIndex:int;
		
		private static const Minus:int = '-'.charCodeAt();
		private static const Plus:int = '+'.charCodeAt();
		
		private static const SmallA:int = 'a'.charCodeAt();
		private static const SmallZ:int = 'z'.charCodeAt();
		private static const BigA:int = 'A'.charCodeAt();
		private static const BigZ:int = 'Z'.charCodeAt();
		private static const Dig0:int = '0'.charCodeAt();
		private static const Dig9:int = '9'.charCodeAt();
		private static const SmallE:int = 'e'.charCodeAt();
		private static const BigE:int = 'E'.charCodeAt();
		private static const Apostrophe:int = '\''.charCodeAt();
		private static const Dot:int = '.'.charCodeAt();
		private static const LP:int = '('.charCodeAt();
		private static const RP:int = ')'.charCodeAt();
		private static const Quote:int = '"'.charCodeAt();
		private static const Backslash:int = '\\'.charCodeAt();
		private static const Under:int = '_'.charCodeAt();
		
		private static var OperatorTree:Object = CreateOperatorTree();
		
		public function Lexer() {
			
		}
		
		private static function CreateOperatorTree():Object{
			var obj:Object = {};
			for ( var op:String in TokenType.Operators ){
				var tree:Object = obj;
				for ( var i:int = 0; i < op.length; i++ ){
					var ch:int = op.charCodeAt(i);
					if ( !tree[ch] ){
						tree[ch] = {};						
					}
					tree = tree[ch];
				}
				tree[ -1] = TokenType.Operators[op];
			}
			return obj;
		}
		
		public function lex(data:ByteArray):Vector.<Token>{
			this.data = data;
			data.position = 0;
			take();
			
			while ( peek != -1 ){
				tokenStart = currentPos;
				tokenIndex = data.position;
				if ( peek == 32 || peek == 10 || peek == 13 || peek == 9 ){
					//skip whitespaces
					take();
				}else if ( peek == Minus ){
					lexMinus();
				}else if ( isIdStart(peek) ){
					lexId();
				}else if ( isDig(peek) ){
					lexNum();
				}else if ( peek == Quote ){
					lexString();
				}else if ( OperatorTree[peek] ){
					lexOperator();
				}else{
					error("unexpected character " + String.fromCharCode(peek));
				}
			}
			
			token(TokenType.EOF);
			
			return tokens;
		}
		
		private function lexString():void {
			take();
			while ( peek != Quote ){
				if ( peek == -1 ){
					error("unexpected eof inside string");
				}
				
				if ( peek == Backslash ){
					take();
				}
				take();
			}
			take();
			token(TokenType.StringLit);
		}
		
		private function lexOperator():void {
			var tree:Object = OperatorTree;
			while ( peek >= 0 && tree[peek] ){
				tree = tree[peek];
				take();				
			}
			if ( tree[ -1] ){
				token(tree[ -1]);
			}else{
				error("invalid operator");
			}
		}
		
		private function lexNum():void {
			while ( isDig(peek) ){
				take();
			}
			if ( peek == Dot ){
				take();
				while ( isDig(peek) ){
					take();
				}
			}
			if ( peek == SmallE || peek == BigE ){
				take();
				if ( peek == Plus || peek == Minus ){
					take();
				}
				while ( isDig(peek) ){
					take();
				}
			}
			token(TokenType.Number);
		}
		
		private function isDig(ch:int):Boolean {
			return (ch >= Dig0 && ch <= Dig9);
		}
		
		private function isIdStart(ch:int):Boolean {
			return (ch >= SmallA && ch <= SmallZ) || (ch >= BigA && ch <= BigZ) || ch == Under;
		}
		
		private function isIdChar(ch:int):Boolean {
			return isIdStart(ch) || isDig(ch) || (ch == Apostrophe);
		}
		
		private function lexId():void {
			take();
			while ( isIdChar(peek) ){
				take();
			}
			token(TokenType.Id);
			var tok:Token = tokens[tokens.length - 1];
			var kwdType:TokenType = TokenType.Keywords[tok.content];
			if ( kwdType ){
				tok.type = kwdType;
			}
		}
		
		private function lexMinus():void {
			take();
			if ( peek == Minus ){
				take();
				lexComment();
			}else{
				token(TokenType.Minus);
			}
		}
		
		private function lexComment():void {
			while ( peek != 10 && peek != 13 && peek != -1 ){
				take();
			}
		}
		
		private function token(tt:TokenType):void {
			var tok:Token = new Token;
			tok.type = tt;
			tok.line = (tokenStart >> 16) + 1;
			tok.col = (tokenStart & 0xffff) + 1;
			
			if ( tok.type != TokenType.EOF ){
				var pos:int = data.position;
				data.position = tokenIndex - 1;
				tok.content = data.readUTFBytes(pos - tokenIndex + (peek == -1 ? 1 : 0));
				data.position = pos;
			}
			
			tokens.push(tok);
		}
		
		private function error(message:String):void {
			throw new LexerError(new SrcLoc((tokenStart >> 16) + 1, (tokenStart & 0xffff) + 1), message);
		}
		
		public function take():int{
			if ( peek == 10 ){
				if ( last != 13 ){
					currentPos += 0x10000;
					currentPos &= 0xffff0000;
					last = 10;
				}else{
					last = 0;
				}
			}else if ( peek == 13 ){
				if ( last != 10 ){
					currentPos += 0x10000;
					currentPos &= 0xffff0000;
					last = 13;
				}else{
					last = 0;
				}
			}else{
				currentPos++;
				last = peek;
			}
			
			if ( data.bytesAvailable ){
				peek = data.readByte();
			}else{
				peek = -1;
			}
			return peek;
		}
	}

}