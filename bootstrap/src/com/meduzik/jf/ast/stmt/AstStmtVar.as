package com.meduzik.jf.ast.stmt {
	import com.meduzik.jf.ast.Binder;
	import com.meduzik.jf.ast.expr.AstExpr;
	import com.meduzik.jf.ast.type.AstType;
	import com.meduzik.jf.ir.IRTypeNode;
	import com.meduzik.jf.ir.type.IRType;
	/**
	 * ...
	 * @author 
	 */
	public class AstStmtVar extends AstStmt{
		public var expr:AstExpr;
		public var type:AstType;
		public var binder:Binder;
		public var resolvedType:IRType;
		
		public function AstStmtVar(binder:Binder, type:AstType, expr:AstExpr) {
			this.expr = expr;
			this.type = type;
			this.binder = binder;
			
		}
		
	}

}