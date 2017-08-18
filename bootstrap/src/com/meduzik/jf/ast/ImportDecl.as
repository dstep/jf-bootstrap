package com.meduzik.jf.ast {
	import com.meduzik.jf.parser.Token;
	/**
	 * ...
	 * @author 
	 */
	public class ImportDecl extends AstNode{
		public var qid:QualID;
		
		public function ImportDecl(qid:QualID) {
			this.qid = qid;			
		}
		
	}

}