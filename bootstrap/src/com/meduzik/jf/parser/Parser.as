package com.meduzik.jf.parser {
	import com.meduzik.jf.ast.ADTConstructor;
	import com.meduzik.jf.ast.ADTDecl;
	import com.meduzik.jf.ast.ASTUnit;
	import com.meduzik.jf.ast.Binder;
	import com.meduzik.jf.ast.FieldGroup;
	import com.meduzik.jf.ast.FunctionBody;
	import com.meduzik.jf.ast.FunctionBodyBlock;
	import com.meduzik.jf.ast.FunctionBodyFFI;
	import com.meduzik.jf.ast.FunctionDecl;
	import com.meduzik.jf.ast.FunctionSignature;
	import com.meduzik.jf.ast.GlobalVarDecl;
	import com.meduzik.jf.ast.ImportDecl;
	import com.meduzik.jf.ast.ParamGroup;
	import com.meduzik.jf.ast.QualID;
	import com.meduzik.jf.ast.SrcLoc;
	import com.meduzik.jf.ast.StructDecl;
	import com.meduzik.jf.ast.TopLevelDecl;
	import com.meduzik.jf.ast.TypeDecl;
	import com.meduzik.jf.ast.expr.AstArrayIndex;
	import com.meduzik.jf.ast.expr.AstBinOp;
	import com.meduzik.jf.ast.expr.AstCallExpr;
	import com.meduzik.jf.ast.expr.AstExpr;
	import com.meduzik.jf.ast.expr.AstExprDot;
	import com.meduzik.jf.ast.expr.AstNew;
	import com.meduzik.jf.ast.expr.AstNumberLit;
	import com.meduzik.jf.ast.expr.AstStringLit;
	import com.meduzik.jf.ast.pattern.AstPattern;
	import com.meduzik.jf.ast.pattern.AstPatternCons;
	import com.meduzik.jf.ast.pattern.AstPatternId;
	import com.meduzik.jf.ast.stmt.AstCase;
	import com.meduzik.jf.ast.stmt.AstExprId;
	import com.meduzik.jf.ast.stmt.AstStmt;
	import com.meduzik.jf.ast.stmt.AstStmtAssign;
	import com.meduzik.jf.ast.stmt.AstStmtBlock;
	import com.meduzik.jf.ast.stmt.AstStmtEval;
	import com.meduzik.jf.ast.stmt.AstStmtIf;
	import com.meduzik.jf.ast.stmt.AstStmtMatch;
	import com.meduzik.jf.ast.stmt.AstStmtRet;
	import com.meduzik.jf.ast.stmt.AstStmtVar;
	import com.meduzik.jf.ast.stmt.AstStmtWhile;
	import com.meduzik.jf.ast.type.AstType;
	import com.meduzik.jf.ast.type.AstTypeArray;
	import com.meduzik.jf.ast.type.AstTypeRef;
	import com.meduzik.jf.compiler.Diagnostic;
	import flash.utils.ByteArray;
	import flash.utils.Dictionary;
	/**
	 * ...
	 * @author 
	 */
	public class Parser {
		private var tokens:Vector.<Token> = new Vector.<Token>();
		private var pos:int;
		
		private static const BinOps:Dictionary = InitBinOps();
		
		private static function InitBinOps():Dictionary{
			var binOps:Dictionary = new Dictionary();
			
			binOps[TokenType.Or] = 3;
			
			binOps[TokenType.And] = 4;
			
			binOps[TokenType.Eq] = 5;
			binOps[TokenType.NEq] = 5;
			binOps[TokenType.Le] = 5;
			binOps[TokenType.Lt] = 5;
			binOps[TokenType.Ge] = 5;
			binOps[TokenType.Gt] = 5;
			
			binOps[TokenType.Plus] = 10;
			binOps[TokenType.Minus] = 10;
			
			binOps[TokenType.Mult] = 11;
			binOps[TokenType.Div] = 11;
			
			
			return binOps;
		}
		
		public function Parser() {
			
		}
		
		public function parse(tokens:Vector.<Token>):ASTUnit{
			this.tokens = tokens;
			pos = 0;
			
			var module:ASTUnit = parseModule();
			
			consume(TokenType.EOF);
			
			return module;
		}
		
		private function consume(tt:TokenType):Token {
			var tok:Token = token;
			if ( peek != tt ){
				error("expected " + tt.id );
			}
			take();
			return tok;
		}
		
		private function error(message:String):void {
			throw new ParseError(location, message);
		}
		
		private function parseModule():ASTUnit {
			var module:ASTUnit = new ASTUnit();
			
			while (parseImport(module)) {}
			
			while (parseTLD(module)){}
			
			return module;
		}
		
		private function parseTLD(module:ASTUnit):Boolean {
			var where:SrcLoc = location;
			var tld:TopLevelDecl;
			switch ( peek ){
			case TokenType.Function:{				
				take();
				tld = parseFunction();	
			}break; 
			case TokenType.Global:{
				take();
				tld = parseGlobal();
			}break;
			case TokenType.ADT:{
				take();
				tld = parseADT();
			}break;
			case TokenType.Struct:{
				take();
				tld = parseStruct();
			}break;
			}
			
			if ( tld ){
				tld.loc = where;
				module.tlds.push(tld);
				return true;
			}else{
				return false;
			}
		}
		
		private function parseGlobal():GlobalVarDecl {
			var global:GlobalVarDecl = new GlobalVarDecl();
			var loc:SrcLoc = location;
			global.binder = new Binder(loc, consume(TokenType.Id).content);
			consume(TokenType.Colon);
			global.type = parseType();
			consume(TokenType.Assign);
			global.expr = parseExpr();
			return global;
		}
		
		private function parseTypeDecl():TypeDecl {
			var typeDecl:TypeDecl = new TypeDecl();
			typeDecl.name = consume(TokenType.Id).content;
			consume(TokenType.Assign);
			typeDecl.baseType = parseType();
			return typeDecl;
		}
		
		private function parseADT():ADTDecl {
			var adt:ADTDecl = new ADTDecl();
			var name:String = consume(TokenType.Id).content;
			
			adt.name = name;
			
			parseConstructors(adt.constructors);
			parseFields(adt.fieldGroups);
			
			consume(TokenType.End);
			
			return adt;
		}
		
		private function parseConstructors(constructors:Vector.<ADTConstructor>):void {
			while ( peek == TokenType.Id ){
				var loc:SrcLoc = location;
				var name:String = token.content;
				take();
				
				var cons:ADTConstructor = new ADTConstructor();
				cons.binder = new Binder(loc, name);
				
				if ( peek == TokenType.LParen ){
					take();
					parseParamGroups(cons.params);
					consume(TokenType.RParen);
				}
				
				constructors.push(cons);
			}
		}
		
		private function parseStruct():StructDecl {
			var struct:StructDecl = new StructDecl();
			var name:String = consume(TokenType.Id).content;
			struct.name = name;
			
			parseFields(struct.fieldGroups);
			
			consume(TokenType.End);
			
			return struct;
		}
		
		private function parseFields(fieldGroups:Vector.<FieldGroup>):void {
			while ( peek == TokenType.Field ){
				var fieldGroup:FieldGroup = new FieldGroup;
				take();
				do{
					var loc:SrcLoc = location;
					var binder:Binder = new Binder(loc, consume(TokenType.Id).content);
					
					fieldGroup.binders.push(binder);
				}while ( peek == TokenType.Id );
				consume(TokenType.Colon);
				fieldGroup.type = parseType();
				
				fieldGroups.push(fieldGroup);
			}
		}
		
		private function parseFunction():TopLevelDecl {
			var name:String = consume(TokenType.Id).content;
			
			var signature:FunctionSignature = parseFuncSignature();
			
			var func:FunctionDecl = new FunctionDecl();
			
			func.signature = signature;
			func.name = name;
			func.body = parseFuncBody();
			
			return func;
		}
		
		private function parseFuncBody():FunctionBody {
			if ( peek == TokenType.Import ){
				take();
				var where:SrcLoc = location;
				var tok:Token = consume(TokenType.StringLit);
				return new FunctionBodyFFI(where, tok.content);
			}else{
				var body:FunctionBodyBlock = new FunctionBodyBlock();
				
				while ( parseStmtInBlock(body.block) ) {}
				
				consume(TokenType.End);
				return body;
			}
		}
		
		private function parseBlock():AstStmtBlock{
			var block:AstStmtBlock = new AstStmtBlock();
			block.loc = location;
			while ( parseStmtInBlock(block) ) {}
			return block;
		}
		
		private function parseStmtInBlock(block:AstStmtBlock):Boolean {
			var stmt:AstStmt = parseStmt();
			if ( stmt ){
				block.stmts.push(stmt);
				return true;
			}
			return false;
		}
		
		private function parseStmt():AstStmt {
			var loc:SrcLoc = location;
			var stmt:AstStmt;
			
			switch ( peek ){
			case TokenType.Match:{
				take();
				expr = parseExpr();
				var match:AstStmtMatch = new AstStmtMatch();
				match.expr = expr;
				while ( peek == TokenType.Case ){
					take();
					var matchCase:AstCase = new AstCase();
					matchCase.pattern = parsePattern();
					if ( !matchCase.pattern ){
						error("expected pattern");
					}
					matchCase.stmt = parseBlock();
					match.cases.push(matchCase);
				}
				stmt = match;
				consume(TokenType.End);
			}break;
			case TokenType.Return:{
				take();
				expr = parseExpr();
				stmt = new AstStmtRet(expr);
			}break;
			case TokenType.While:{
				take();				
				expr = parseExpr();
				var whileStmt:AstStmtWhile = new AstStmtWhile(expr);
				consume(TokenType.Do);
				whileStmt.stmt = parseBlock();
				consume(TokenType.End);
				stmt = whileStmt;
			}break;
			case TokenType.If:{
				var ifStmt:AstStmtIf = new AstStmtIf();
				take();
				expr = parseExpr();
				consume(TokenType.Then);
				ifStmt.cond = expr;
				ifStmt.then = parseBlock();
				
				var branch:AstStmtIf = ifStmt;
				while ( true ){
					if ( peek == TokenType.Else ){
						take();
						branch.else_ = parseBlock();
						consume(TokenType.End);
						break;
					}else if ( peek == TokenType.ElIf ){
						take();
						branch.else_ = new AstStmtIf();
						branch = branch.else_ as AstStmtIf;
						branch.cond = parseExpr();
						branch.loc = location;
						consume(TokenType.Then);
						branch.then = parseBlock();
					}else {
						consume(TokenType.End);
						break;
					}
				}
				stmt = ifStmt;
			}break;
			case TokenType.Var:{
				take();
				var binder:Binder = new Binder(location, token.content);
				take();
				var type:AstType;
				
				if ( peek == TokenType.Colon ){
					take();
					
					type = parseType();
				}
				
				var expr:AstExpr
				
				if ( peek == TokenType.Assign ){
					take();				
					expr = parseExpr();
				}
				
				stmt = new AstStmtVar(binder, type, expr);
			}break;
			default:{
				expr = parseExpr();
				
				if ( peek == TokenType.Assign ){
					take();
					var otherExpr:AstExpr = parseExpr();
					stmt = new AstStmtAssign(expr, otherExpr);
				}else{
					if ( expr ){
						stmt = new AstStmtEval(expr);
					}
				}
			}break;
			}
			
			if ( stmt ){
				stmt.loc = loc;
			}
			return stmt;
		}
		
		private function parsePattern():AstPattern {
			if ( peek == TokenType.Id ){
				var binder:Binder = new Binder(location, token.content);
				take();
				if ( peek == TokenType.LParen ){
					take();
					
					var cons:AstPatternCons = new AstPatternCons();
					cons.id = binder.name;
					cons.loc = binder.loc;
					
					var pat:AstPattern = parsePattern();
					if ( pat ){
						cons.params.push(pat);
						while ( peek == TokenType.Comma ){
							take();
							pat = parsePattern();
							if ( !pat ){
								error("expected pattern");
							}
							cons.params.push(pat);
						}
					}
					
					consume(TokenType.RParen);
					return cons;
				}else{
					return new AstPatternId(binder);
				}
			}
			return null;
		}
		
		private function parseExpr(prec:int = 0):AstExpr {
			var expr:AstExpr = parsePrimExpr();
			
			if ( !expr ){
				return expr;
			}
			
			var flag:Boolean = true;
			while ( flag ){
				var loc:SrcLoc = location;
				
				switch ( peek ){
				case TokenType.Dot:{
					take();
					var name:String = consume(TokenType.Id).content;
					
					expr = new AstExprDot(expr, name);
					expr.loc = loc;
				}break;
				case TokenType.LBracket:{
					take();
					var indexExpr:AstArrayIndex = new AstArrayIndex();
					indexExpr.lhs = expr;
					indexExpr.index = parseExpr();
					consume(TokenType.RBracket);
					expr = indexExpr;
				}break;
				case TokenType.LParen:{
					var callExpr:AstCallExpr = new AstCallExpr();
					callExpr.head = expr;
					take();
					if ( peek != TokenType.RParen ){
						while ( true ){
							callExpr.args.push(parseExpr());
							if ( peek == TokenType.Comma ){
								take();								
							}else{
								break;
							}
						}
					}
					consume(TokenType.RParen);
					expr = callExpr;
				}break;
				default:{
					if ( peek in BinOps && BinOps[peek] >= prec ){
						var op:TokenType = peek;
						take();
						var rhs:AstExpr = parseExpr(BinOps[op] + 1);
						if ( !rhs ){
							error("Expected a second argument");
						}
						expr = new AstBinOp(expr, op, rhs);
					}else{
						flag = false;
					}
				}break;
				}
				
				if ( !flag ){
					break;
				}
				
				expr.loc = loc;
			}
			
			return expr;
		}
		
		private function parsePrimExpr():AstExpr {
			var expr:AstExpr;
			var loc:SrcLoc = location;
			switch ( peek ){
			case TokenType.Id:{
				expr = new AstExprId(token.content);
				take();
			}break;
			case TokenType.Number:{
				expr = new AstNumberLit(token.content);
				take();
			}break;
			case TokenType.StringLit:{
				expr = new AstStringLit(token.content);
				take();
			}break;
			case TokenType.LParen:{
				take();
				expr = parseExpr();
				consume(TokenType.RParen);
			}break;
			case TokenType.New:{
				take();
				var type:AstType = parseType();
				expr = new AstNew(type);
			}break;
			}
			
			if ( expr ){
				expr.loc = loc;
			}
			return expr;
		}
		
		private function parseFuncSignature():FunctionSignature {
			var sig:FunctionSignature = new FunctionSignature();
			consume(TokenType.LParen);
			
			parseParamGroups(sig.params);
			
			consume(TokenType.RParen);
			
			if ( peek == TokenType.Colon ){
				take();
				sig.returnType = parseType();
			}
			
			return sig;
		}
		
		private function parseParamGroups(params:Vector.<ParamGroup>):void {
			if ( peek != TokenType.RParen ){
				parseParamGroup(params);
				while ( peek == TokenType.Comma ) {
					take();
					parseParamGroup(params);
				}
			}
		}
		
		private function parseParamGroup(params:Vector.<ParamGroup>):void {
			var group:ParamGroup = new ParamGroup();
			while ( peek == TokenType.Id ){
				group.binders.push(new Binder(location, token.content));
				take();
			}
			consume(TokenType.Colon);
			group.type = parseType();
			params.push(group);
		}
		
		private function parseType():AstType {
			var ty:AstType;
			var loc:SrcLoc = location;
			if ( peek == TokenType.Id ){				
				ty = new AstTypeRef(token.content);	
				take();
			}
			if ( !ty ){
				return null;
			}
			if ( ty ){
				ty.loc = loc;
			}
			
		rhs:
			loc = location;
			while ( true ){
				if ( peek == TokenType.LBracket ){
					take();
					
					var size:AstExpr;
					if ( peek != TokenType.RBracket ){
						size = parseExpr();
					}
					
					consume(TokenType.RBracket);
					
					var arrayType:AstTypeArray = new AstTypeArray(ty, size);
					arrayType.loc = loc;
					
					ty = arrayType;
				}else{
					break;
				}
			}
			
			return ty;
		}
		
		private function parseImport(module:ASTUnit):Boolean {
			var where:SrcLoc = location;
			if ( peek == TokenType.Import ){
				take();
				var qid:QualID = parseQID();
				var idecl:ImportDecl = new ImportDecl(qid);
				idecl.loc = where;
				module.imports.push(idecl);
				return true;
			}
			return false;
		}
		
		private function get location():SrcLoc {
			return new SrcLoc(token.line, token.col);
		}
		
		private function parseQID():QualID {
			if ( peek != TokenType.Id ){
				error("expected identifier");
			}
			var qid:QualID = new QualID();
			qid.parts.push(token.content);
			take();
			
			while ( peek == TokenType.Dot ){
				take();
				if ( peek != TokenType.Id ){
					error("expected identifier");
				}
				qid.parts.push(token.content);
				take();
			}
			
			return qid;
		}
		
		private function take():void {
			if ( pos < tokens.length - 1 ){
				pos++;
			}
		}
		
		private function get token():Token{
			return tokens[pos];
		}
		
		private function get peek():TokenType{
			return tokens[pos].type;
		}
	}

}