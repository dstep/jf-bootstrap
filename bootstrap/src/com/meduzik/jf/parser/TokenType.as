package com.meduzik.jf.parser {
	/**
	 * ...
	 * @author 
	 */
	public class TokenType {
		public static const EOF:TokenType = new TokenType("eof");
		
		
		public static const Id:TokenType = new TokenType("identifier");
		public static const Number:TokenType = new TokenType("number");
		
		public static const Dot:TokenType = new TokenType("dot");
		
		public static const Minus:TokenType = new TokenType("minus");
		public static const Plus:TokenType = new TokenType("plus");
		public static const Mult:TokenType = new TokenType("mult");
		public static const Div:TokenType = new TokenType("div");
		public static const LParen:TokenType = new TokenType("open parent");
		public static const RParen:TokenType = new TokenType("close paren");
		public static const Assign:TokenType = new TokenType("assign");
		public static const Eq:TokenType = new TokenType("eq");
		public static const NEq:TokenType = new TokenType("neq");
		public static const Le:TokenType = new TokenType("le");
		public static const Lt:TokenType = new TokenType("lt");
		public static const Ge:TokenType = new TokenType("ge");
		public static const Gt:TokenType = new TokenType("gt");
		public static const Colon:TokenType = new TokenType("colon");
		public static const Comma:TokenType = new TokenType("comma");
		public static const LBracket:TokenType = new TokenType("[");
		public static const RBracket:TokenType = new TokenType("]");
		
		public static const Import:TokenType = new TokenType("import");
		public static const Function:TokenType = new TokenType("function");
		public static const End:TokenType = new TokenType("end");
		public static const Var:TokenType = new TokenType("var");
		public static const Type:TokenType = new TokenType("type");
		public static const Struct:TokenType = new TokenType("struct");
		public static const Field:TokenType = new TokenType("field");
		public static const New:TokenType = new TokenType("new");
		public static const Return:TokenType = new TokenType("return");
		public static const If:TokenType = new TokenType("if");
		public static const Then:TokenType = new TokenType("then");
		public static const Else:TokenType = new TokenType("else");
		public static const ElIf:TokenType = new TokenType("elif");		
		public static const While:TokenType = new TokenType("while");
		public static const Do:TokenType = new TokenType("do");
		public static const And:TokenType = new TokenType("and");
		public static const Or:TokenType = new TokenType("or");
		public static const ADT:TokenType = new TokenType("adt");
		public static const Match:TokenType = new TokenType("match");
		public static const Case:TokenType = new TokenType("case");

		public static const StringLit:TokenType = new TokenType("string");
		
		public static const Operators:Object = {
			"(" : LParen,
			")" : RParen,
			"." : Dot,
			"-" : Minus,
			"+" : Plus,
			"*" : Mult,
			"/" : Div,
			":" : Colon,
			"=" : Assign,
			"==" : Eq,
			"<>" : NEq,
			"<" : Lt,
			"<=" : Le,
			">" : Gt,
			">=" : Ge,
			"," : Comma,
			"[" : LBracket,
			"]" : RBracket
		};
		
		public static const Keywords:Object = {
			"import" : Import,
			"function" : Function,
			"end" : End,
			"var" : Var,
			"type" : Type,
			"struct" : Struct,
			"field" : Field,
			"new" : New,
			"return" : Return,
			"if" : If,
			"elif" : ElIf,
			"else" : Else,
			"while" : While,
			"do" : Do,
			"then" : Then,
			"and" : And,
			"or" : Or,
			"adt" : ADT,
			"match" : Match,
			"case" : Case
		};
		
		
		private var _id:String;
		
		public function TokenType(id:String) {
			_id = id;
			
		}
		
		public function get id():String {
			return _id;
		}
		
	}

}