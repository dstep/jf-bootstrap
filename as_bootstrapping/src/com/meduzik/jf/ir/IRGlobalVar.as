package com.meduzik.jf.ir {
	import com.meduzik.jf.ast.Binder;
	import com.meduzik.jf.ast.expr.AstExpr;
	/**
	 * ...
	 * @author 
	 */
	public class IRGlobalVar extends Symbol{
		
		public var type:IRTypeNode;
		public var value:AstExpr;
		
		public function IRGlobalVar() {
			
		}
		
	}

}