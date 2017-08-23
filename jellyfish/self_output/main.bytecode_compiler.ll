; ModuleID = 'main.bytecode_compiler'
source_filename = "main.bytecode_compiler"

%"adt$main.bytecode.Coerce" = type { i32 }
%"adt$main.bytecode_compiler.BCCompiler" = type { i32, %"adt$main.compiler.CompilerContext.169"*, %"adt$main.ir.IRSourceFile.170"*, %"adt$main.ir.IRType.161"*, %"adt$main.bytecode.FunctionFrame.171"*, %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.ir_builder.IRBuilder.172"*, %"adt$main.ir_compiler.IRCompiler.173"*, %"adt$main.bytecode_compiler.Scope"* }
%"adt$main.compiler.CompilerContext.169" = type { i32, i8*, %"adt$main.ir.IRCompilationUnitList.240"* }
%"adt$main.ir.IRCompilationUnitList.240" = type { i32 }
%"adt$main.ir.IRSourceFile.170" = type { i32, %"adt$main.ir.SourceFileRef.226"*, %"adt$main.ir.IRCompilationUnit.227"*, %"adt$main.ir.IRImportList.228"*, %"adt$main.ir.IRSymbolList.229"* }
%"adt$main.ir.SourceFileRef.226" = type { i32, i8*, i8*, i8*, i8* }
%"adt$main.ir.IRCompilationUnit.227" = type { i32, i8*, %"adt$main.ir.IRSourceFileList.238"* }
%"adt$main.ir.IRSourceFileList.238" = type { i32 }
%"adt$main.ir.IRImportList.228" = type opaque
%"adt$main.ir.IRSymbolList.229" = type { i32 }
%"adt$main.bytecode.FunctionFrame.171" = type { i32, %"adt$main.bytecode.VariableList.232"*, %"adt$main.bytecode.BasicBlock.182"*, %"adt$main.bytecode.BasicBlockList.233"* }
%"adt$main.bytecode.VariableList.232" = type opaque
%"adt$main.bytecode.BasicBlock.182" = type opaque
%"adt$main.bytecode.BasicBlockList.233" = type opaque
%"adt$main.bytecode_builder.BCBuilder" = type { i32, %"adt$main.bytecode.BasicBlock.182"*, %"adt$main.bytecode.DebugLoc.202"* }
%"adt$main.bytecode.DebugLoc.202" = type opaque
%"adt$main.ir_builder.IRBuilder.172" = type { i32, %"adt$main.compiler.CompilerContext.169"*, %"adt$main.ir.IRSourceFile.170"* }
%"adt$main.ir_compiler.IRCompiler.173" = type opaque
%"adt$main.bytecode_compiler.Scope" = type { i32, %"adt$main.bytecode_compiler.Termination"*, %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.ScopeBinding"* }
%"adt$main.bytecode_compiler.Termination" = type { i32 }
%"adt$main.bytecode_compiler.ScopeBinding" = type { i32 }
%"adt$main.ir.IRType.161" = type { i32 }
%"adtc$main.ir.IRType.ArrayUnsized.166" = type { i32, %"adt$main.ir.IRType.161"* }
%"adtc$main.ir.IRType.ADT.164" = type { i32, %"adt$main.ir.IRADTDecl.165"* }
%"adt$main.ir.IRADTDecl.165" = type { i32, %"adt$main.ir.IRADTConsList.220"*, %"adt$main.ir.IRADTFieldList.221"*, %"adt$main.ir.IRSymbol.176"*, %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRType.161"* }
%"adt$main.ir.IRADTConsList.220" = type { i32 }
%"adt$main.ir.IRADTFieldList.221" = type opaque
%"adt$main.ir.IRSymbol.176" = type { i32, %"adt$main.ir.IRSourceFile.170"*, %"adt$main.ast.SrcLoc.167"*, i8* }
%"adt$main.ast.SrcLoc.167" = type { i32 }
%"adtc$main.ir.IRType.Prim.162" = type { i32, %"adt$main.ir.IRPrimType.163"* }
%"adt$main.ir.IRPrimType.163" = type { i32 }
%"adtc$main.ast.SrcLoc.At.236" = type { i32, i32, i32 }
%"adt$main.bytecode.ValueRef.168" = type { i32 }
%"adt$main.ast_expr.AstExpr.174" = type { i32, %"adt$main.ast.SrcLoc.167"* }
%"adt$main.ir.MaybeIRType.175" = type opaque
%"adt$main.bytecode.ValueRefList.179" = type opaque
%"adt$main.bytecode.CallableRef" = type { i32 }
%"adt$main.bytecode.PHIList.181" = type opaque
%"adt$main.bytecode.Intrinsic.183" = type opaque
%"adt$main.bytecode.Comparison.184" = type opaque
%"adt$main.ir.MaybeIRADTCons.185" = type { i32 }
%"adt$main.bytecode.IndexableRef" = type { i32 }
%"adt$main.bytecode_compiler.LocalRef" = type { i32 }
%"adtc$main.bytecode.CallableRef.ADTConstructor" = type { i32, %"adt$main.ir.IRADTCons.194"* }
%"adt$main.ir.IRADTCons.194" = type { i32, %"adt$main.ir.IRADTDecl.165"*, i32, i8*, %"adt$main.ast.SrcLoc.167"*, %"adt$main.ir.IRParamList.195"*, %"adt$main.ir.IRType.161"* }
%"adt$main.ir.IRParamList.195" = type { i32 }
%"adtc$main.bytecode.CallableRef.Function" = type { i32, %"adt$main.ir.IRFunctionDecl.203"* }
%"adt$main.ir.IRFunctionDecl.203" = type { i32, %"adt$main.ir.IRSymbol.176"*, %"adt$main.ir.IRParamList.195"*, %"adt$main.ir.IRTypeNode.230"*, %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRFunctionBody.231"* }
%"adt$main.ir.IRTypeNode.230" = type { i32, i1, %"adt$main.ast.SrcLoc.167"*, %"adt$main.ir.IRType.161"* }
%"adt$main.ir.IRFunctionBody.231" = type { i32, %"adt$main.ast.SrcLoc.167"* }
%"adtc$main.ir.IRType.Function.196" = type { i32, %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRTypeList.178"* }
%"adt$main.ir.IRTypeList.178" = type { i32 }
%"adtc$main.ast_expr.AstExpr.Call" = type { i32, %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExprList.177"* }
%"adt$main.ast_expr.AstExprList.177" = type { i32 }
%"adt$main.bytecode.ArithOp.201" = type opaque
%"adtc$main.ast_expr.AstExpr.BinOp" = type { i32, %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.BinOp.200"*, %"adt$main.ast_expr.AstExpr.174"* }
%"adt$main.ast_expr.BinOp.200" = type { i32 }
%"adtc$main.ir.MaybeIRADTField.Just.198" = type { i32, %"adt$main.ir.IRADTField.199"* }
%"adt$main.ir.IRADTField.199" = type opaque
%"adt$main.ir.MaybeIRADTField.197" = type { i32 }
%"adtc$main.bytecode.IndexableRef.Value" = type { i32, %"adt$main.bytecode.ValueRef.168"* }
%"adtc$main.ir.MaybeIRADTCons.Just.193" = type { i32, %"adt$main.ir.IRADTCons.194"* }
%"adtc$main.ir.IRSymbol.ADT.192" = type { i32, %"adt$main.ir.IRSourceFile.170"*, %"adt$main.ast.SrcLoc.167"*, i8*, %"adt$main.ir.IRADTDecl.165"* }
%"adtc$main.bytecode.IndexableRef.Symbol" = type { i32, %"adt$main.ir.IRSymbol.176"* }
%"adtc$main.ast_expr.AstExpr.Dot" = type { i32, %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast_expr.AstExpr.174"*, i8* }
%"adtc$main.ir.IRSymbol.Global.190" = type { i32, %"adt$main.ir.IRSourceFile.170"*, %"adt$main.ast.SrcLoc.167"*, i8*, %"adt$main.ir.IRGlobalDecl.191"* }
%"adt$main.ir.IRGlobalDecl.191" = type { i32, %"adt$main.ir.IRSymbol.176"*, %"adt$main.ir.IRTypeNode.230"*, %"adt$main.ir.IRExprNode.188"* }
%"adt$main.ir.IRExprNode.188" = type { i32, %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.bytecode.FunctionFrame.171"* }
%"adtc$main.bytecode_compiler.LocalRef.Global" = type { i32, %"adt$main.ir.IRSymbol.176"* }
%"adtc$main.bytecode_compiler.LocalRef.Variable" = type { i32, %"adt$main.bytecode.Variable.189"* }
%"adt$main.bytecode.Variable.189" = type { i32, %"adt$main.ir.IRType.161"*, %"adt$main.bytecode.DebugLoc.202"* }
%"adtc$main.bytecode_compiler.LocalRef.Value" = type { i32, %"adt$main.bytecode.ValueRef.168"* }
%"adtc$main.ast_expr.AstExpr.Id" = type { i32, %"adt$main.ast.SrcLoc.167"*, i8* }
%"adtc$main.ast_expr.AstExpr.Index" = type { i32, %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"* }
%"adtc$main.ir.IRType.ArraySized.187" = type { i32, %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRExprNode.188"* }
%"adtc$main.ast_expr.AstExpr.New" = type { i32, %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast_type.AstType.186"* }
%"adt$main.ast_type.AstType.186" = type { i32, %"adt$main.ast.SrcLoc.167"* }
%"adtc$main.ast_expr.AstExpr.StringLit" = type { i32, %"adt$main.ast.SrcLoc.167"*, i8* }
%"adtc$main.ast_expr.AstExpr.NumberLit" = type { i32, %"adt$main.ast.SrcLoc.167"*, i8* }
%"adtc$main.bytecode_compiler.ScopeBinding.Binding" = type { i32, i8*, %"adt$main.bytecode_compiler.LocalRef"*, %"adt$main.bytecode_compiler.ScopeBinding"* }
%"adtc$main.ir.IRTypeList.Cons.180" = type { i32, %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRTypeList.178"* }
%"adtc$main.ast_expr.AstExprList.Cons" = type { i32, %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExprList.177"* }
%"adtc$main.ir.IRSymbol.Function.204" = type { i32, %"adt$main.ir.IRSourceFile.170"*, %"adt$main.ast.SrcLoc.167"*, i8*, %"adt$main.ir.IRFunctionDecl.203"* }
%"adt$main.bytecode.WritableReference" = type { i32 }
%"adt$main.ast_stmt.AstStmt.205" = type { i32, %"adt$main.ast.SrcLoc.167"* }
%"adt$main.ast_stmt.AstPatternList.206" = type { i32 }
%"adt$main.ast_stmt.AstCaseList.207" = type { i32 }
%"adt$main.bytecode.ADTJumpCase.208" = type { i32 }
%"adt$main.bytecode.MaybeValueRef" = type { i32 }
%"adtc$main.ast_stmt.AstStmt.Block" = type { i32, %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast_stmt.AstStmtList.216"* }
%"adt$main.ast_stmt.AstStmtList.216" = type { i32 }
%"adtc$main.ast_expr.MaybeAstExpr.Just.212" = type { i32, %"adt$main.ast_expr.AstExpr.174"* }
%"adtc$main.ast_stmt.AstStmt.Ret" = type { i32, %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast_expr.MaybeAstExpr.211"* }
%"adt$main.ast_expr.MaybeAstExpr.211" = type { i32 }
%"adtc$main.ast_stmt.MaybeAstStmt.Just.219" = type { i32, %"adt$main.ast_stmt.AstStmt.205"* }
%"adtc$main.ast_stmt.AstStmt.If" = type { i32, %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_stmt.AstStmt.205"*, %"adt$main.ast_stmt.MaybeAstStmt.218"* }
%"adt$main.ast_stmt.MaybeAstStmt.218" = type { i32 }
%"adtc$main.bytecode.ValueRef.ConstBool.217" = type { i32, i1, %"adt$main.ir.IRType.161"* }
%"adtc$main.ast_stmt.AstStmt.While" = type { i32, %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_stmt.AstStmtList.216"* }
%"adtc$main.ast_stmt.AstPatternList.Cons" = type { i32, %"adt$main.ast_stmt.AstPattern.215"*, %"adt$main.ast_stmt.AstPatternList.206"* }
%"adt$main.ast_stmt.AstPattern.215" = type { i32, %"adt$main.ast.SrcLoc.167"* }
%"adtc$main.ast_stmt.AstPattern.Cons" = type { i32, %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.Binder.209"*, %"adt$main.ast_stmt.AstPatternList.206"* }
%"adt$main.ast.Binder.209" = type opaque
%"adtc$main.ast_stmt.AstPattern.Id" = type { i32, %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.Binder.209"* }
%"adtc$main.ast_stmt.AstCaseList.Cons" = type { i32, %"adt$main.ast_stmt.AstCase.214"*, %"adt$main.ast_stmt.AstCaseList.207"* }
%"adt$main.ast_stmt.AstCase.214" = type { i32, %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast_stmt.AstPattern.215"*, %"adt$main.ast_stmt.AstStmtList.216"* }
%"adtc$main.ast_stmt.AstStmt.Match" = type { i32, %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_stmt.AstCaseList.207"* }
%"adtc$main.bytecode.WritableReference.ArrayIndex" = type { i32, %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRef.168"*, %"adt$main.ir.IRType.161"* }
%"adtc$main.bytecode.WritableReference.ADTField" = type { i32, %"adt$main.bytecode.ValueRef.168"*, %"adt$main.ir.IRADTField.199"* }
%"adtc$main.bytecode.WritableReference.Global" = type { i32, %"adt$main.ir.IRGlobalDecl.191"* }
%"adtc$main.bytecode.WritableReference.Variable" = type { i32, %"adt$main.bytecode.Variable.189"* }
%"adtc$main.ast_stmt.AstStmt.Assign" = type { i32, %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"* }
%"adtc$main.ast_stmt.AstStmt.Eval" = type { i32, %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast_expr.AstExpr.174"* }
%"adtc$main.bytecode.MaybeValueRef.Just" = type { i32, %"adt$main.bytecode.ValueRef.168"* }
%"adtc$main.ast_type.MaybeAstType.Just.213" = type { i32, %"adt$main.ast_type.AstType.186"* }
%"adtc$main.ast_stmt.AstStmt.Var" = type { i32, %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.Binder.209"*, %"adt$main.ast_type.MaybeAstType.210"*, %"adt$main.ast_expr.MaybeAstExpr.211"* }
%"adt$main.ast_type.MaybeAstType.210" = type { i32 }
%"adtc$main.bytecode_compiler.Termination.Always" = type { i32 }
%"adtc$main.ast_stmt.AstStmtList.Cons" = type { i32, %"adt$main.ast_stmt.AstStmt.205"*, %"adt$main.ast_stmt.AstStmtList.216"* }
%"adtc$main.ir.IRParamList.Cons.224" = type { i32, %"adt$main.ir.IRParam.225"*, %"adt$main.ir.IRParamList.195"* }
%"adt$main.ir.IRParam.225" = type { i32, i8*, %"adt$main.ast.SrcLoc.167"*, %"adt$main.ir.IRTypeNode.230"* }
%"adtc$main.ir.IRADTConsList.Cons.222" = type { i32, %"adt$main.ir.IRADTCons.194"*, %"adt$main.ir.IRADTConsList.220"* }
%"adtc$main.bytecode.ADTJumpCase.Cons.223" = type { i32, %"adt$main.ir.IRADTCons.194"*, %"adt$main.bytecode.BasicBlock.182"*, %"adt$main.bytecode.ADTJumpCase.208"* }
%"adtc$main.bytecode_compiler.Scope.New" = type { i32, %"adt$main.bytecode_compiler.Termination"*, %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.ScopeBinding"* }
%"adtc$main.bytecode_compiler.ScopeBinding.Nil" = type { i32 }
%"adtc$main.bytecode_compiler.Termination.Never" = type { i32 }
%"adtc$main.ir.IRFunctionBody.Block.234" = type { i32, %"adt$main.ast.SrcLoc.167"*, %"adt$main.ir.IRBlockNode.235"* }
%"adt$main.ir.IRBlockNode.235" = type { i32, %"adt$main.ast_stmt.AstStmtList.216"*, %"adt$main.bytecode.FunctionFrame.171"* }
%"adtc$main.ir.IRSymbolList.Cons.237" = type { i32, %"adt$main.ir.IRSymbol.176"*, %"adt$main.ir.IRSymbolList.229"* }
%"adtc$main.bytecode_compiler.BCCompiler.New" = type { i32, %"adt$main.compiler.CompilerContext.169"*, %"adt$main.ir.IRSourceFile.170"*, %"adt$main.ir.IRType.161"*, %"adt$main.bytecode.FunctionFrame.171"*, %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.ir_builder.IRBuilder.172"*, %"adt$main.ir_compiler.IRCompiler.173"*, %"adt$main.bytecode_compiler.Scope"* }
%"adtc$main.ir.IRSourceFileList.Cons.239" = type { i32, %"adt$main.ir.IRSourceFile.170"*, %"adt$main.ir.IRSourceFileList.238"* }
%"adtc$main.ir.IRCompilationUnitList.Cons.241" = type { i32, %"adt$main.ir.IRCompilationUnit.227"*, %"adt$main.ir.IRCompilationUnitList.240"* }
%"adt$main.bytecode_compiler.MaybeLocalRef" = type { i32 }
%"adtc$main.bytecode_compiler.MaybeLocalRef.Nothing" = type { i32 }
%"adtc$main.bytecode_compiler.MaybeLocalRef.Just" = type { i32, %"adt$main.bytecode_compiler.LocalRef"* }
%"adt$main.bytecode_compiler.MaybeScope" = type { i32 }
%"adtc$main.bytecode_compiler.MaybeScope.Nothing" = type { i32 }
%"adtc$main.bytecode_compiler.MaybeScope.Just" = type { i32, %"adt$main.bytecode_compiler.Scope"* }
%"adtc$main.bytecode_compiler.Termination.Maybe" = type { i32 }

@0 = private global [24 x i8] c"types are not unifiable\00"
@1 = private global [18 x i8] c"can't coerce type\00"
@2 = private global [21 x i8] c"not enough arguments\00"
@3 = private global [19 x i8] c"too many arguments\00"
@4 = private global [41 x i8] c"'new' is only available for sized arrays\00"
@5 = private global [45 x i8] c"writing to this reference is not implemented\00"
@6 = private global [45 x i8] c"writing to this reference is not implemented\00"
@7 = private global [5 x i8] c"true\00"
@8 = private global [6 x i8] c"false\00"
@9 = private global [6 x i8] c"undef\00"
@10 = private global [49 x i8] c"reading this symbol reference is not implemented\00"
@11 = private global [23 x i8] c"invalid dot expression\00"
@12 = private global [26 x i8] c"adt constructor not found\00"
@13 = private global [50 x i8] c"indexing this symbol reference is not implemented\00"
@14 = private global [14 x i8] c"no such field\00"
@15 = private global [43 x i8] c"indexing this reference is not implemented\00"
@16 = private global [25 x i8] c"operator not implemented\00"
@17 = private global [23 x i8] c"is not a callable type\00"
@18 = private global [49 x i8] c"calling this symbol reference is not implemented\00"
@19 = private global [42 x i8] c"calling this reference is not implemented\00"
@20 = private global [26 x i8] c"adt constructor not found\00"
@21 = private global [50 x i8] c"indexing this symbol reference is not implemented\00"
@22 = private global [43 x i8] c"indexing this reference is not implemented\00"
@23 = private global [54 x i8] c"expression is not implemented as a callable reference\00"
@24 = private global [32 x i8] c"temporary value is not writable\00"
@25 = private global [52 x i8] c"writing to this symbol reference is not implemented\00"
@26 = private global [45 x i8] c"writing to this reference is not implemented\00"
@27 = private global [45 x i8] c"writing to this reference is not implemented\00"
@28 = private global [14 x i8] c"no such field\00"
@29 = private global [45 x i8] c"writing to this reference is not implemented\00"
@30 = private global [45 x i8] c"writing to this reference is not implemented\00"
@31 = private global [54 x i8] c"expression is not implemented as a writable reference\00"
@32 = private global [10 x i8] c"dead code\00"
@33 = private global [55 x i8] c"either type declaration or init expression is required\00"
@34 = private global [24 x i8] c"match case is redundand\00"
@35 = private global [34 x i8] c"adt doesn't have such constructor\00"
@36 = private global [26 x i8] c"can't match non-adt value\00"
@37 = private global [15 x i8] c"duplicate case\00"
@38 = private global [18 x i8] c"too many patterns\00"
@39 = private global [30 x i8] c"nested patterns not supported\00"
@40 = private global [45 x i8] c"control reaches the end of non-unit function\00"
@41 = private global [7 x i8] c"(line \00"
@42 = private global [7 x i8] c", col \00"
@43 = private global [22 x i8] c"): BCCompiler Error: \00"
@44 = private global [37 x i8] c"+++ Running bytecode compilation on \00"
@45 = private global [5 x i8] c" +++\00"
@46 = private global [13 x i8] c"--- Leaving \00"
@47 = private global [5 x i8] c" ---\00"

define %"adt$main.bytecode.Coerce"* @"fn$main.bytecode_compiler.BCCompileFindCoerce"(%"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.ir.IRType.161"* %actualType, %"adt$main.ir.IRType.161"* %targetType) {
entry:
  %bake.targetType = alloca %"adt$main.ir.IRType.161"*
  %bake.actualType = alloca %"adt$main.ir.IRType.161"*
  %bake.bc = alloca %"adt$main.bytecode_compiler.BCCompiler"*
  store %"adt$main.ir.IRType.161"* %targetType, %"adt$main.ir.IRType.161"** %bake.targetType
  store %"adt$main.ir.IRType.161"* %actualType, %"adt$main.ir.IRType.161"** %bake.actualType
  store %"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  br label %76

; <label>:0:                                      ; preds = %3
  %1 = call %"adt$main.bytecode.Coerce"* @"adtcfn$adtc$main.bytecode.Coerce.ID"()
  ret %"adt$main.bytecode.Coerce"* %1

; <label>:2:                                      ; preds = %3
  br label %11

; <label>:3:                                      ; preds = %12
  %4 = bitcast %"adt$main.ir.IRType.161"* %16 to %"adtc$main.ir.IRType.ArrayUnsized.166"*
  %5 = getelementptr inbounds %"adtc$main.ir.IRType.ArrayUnsized.166", %"adtc$main.ir.IRType.ArrayUnsized.166"* %4, i32 0, i32 1
  %6 = load %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRType.161"** %5
  %7 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %8 = call %"adt$main.bytecode.Coerce"* @"fn$main.bytecode_compiler.BCCompileFindCoerce"(%"adt$main.bytecode_compiler.BCCompiler"* %7, %"adt$main.ir.IRType.161"* %15, %"adt$main.ir.IRType.161"* %6)
  %9 = getelementptr inbounds %"adt$main.bytecode.Coerce", %"adt$main.bytecode.Coerce"* %8, i32 0, i32 0
  %10 = load i32, i32* %9
  switch i32 %10, label %2 [
    i32 2, label %0
  ]

; <label>:11:                                     ; preds = %2, %12
  br label %61

; <label>:12:                                     ; preds = %72
  %13 = bitcast %"adt$main.ir.IRType.161"* %73 to %"adtc$main.ir.IRType.ArrayUnsized.166"*
  %14 = getelementptr inbounds %"adtc$main.ir.IRType.ArrayUnsized.166", %"adtc$main.ir.IRType.ArrayUnsized.166"* %13, i32 0, i32 1
  %15 = load %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRType.161"** %14
  %16 = load %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRType.161"** %bake.targetType
  %17 = getelementptr inbounds %"adt$main.ir.IRType.161", %"adt$main.ir.IRType.161"* %16, i32 0, i32 0
  %18 = load i32, i32* %17
  switch i32 %18, label %11 [
    i32 4, label %3
  ]

; <label>:19:                                     ; preds = %20
  br label %34

; <label>:20:                                     ; preds = %23
  br label %19

; <label>:21:                                     ; preds = %23
  %22 = call %"adt$main.bytecode.Coerce"* @"adtcfn$adtc$main.bytecode.Coerce.ID"()
  ret %"adt$main.bytecode.Coerce"* %22

; <label>:23:                                     ; preds = %35
  %24 = bitcast %"adt$main.ir.IRType.161"* %39 to %"adtc$main.ir.IRType.ADT.164"*
  %25 = getelementptr inbounds %"adtc$main.ir.IRType.ADT.164", %"adtc$main.ir.IRType.ADT.164"* %24, i32 0, i32 1
  %26 = load %"adt$main.ir.IRADTDecl.165"*, %"adt$main.ir.IRADTDecl.165"** %25
  %27 = bitcast %"adt$main.ir.IRADTDecl.165"* %38 to i8*
  %28 = bitcast %"adt$main.ir.IRADTDecl.165"* %26 to i8*
  %29 = ptrtoint i8* %27 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  %32 = sdiv exact i64 %31, ptrtoint (i8* getelementptr (i8, i8* null, i32 1) to i64)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %21, label %20

; <label>:34:                                     ; preds = %19, %35
  br label %61

; <label>:35:                                     ; preds = %72
  %36 = bitcast %"adt$main.ir.IRType.161"* %73 to %"adtc$main.ir.IRType.ADT.164"*
  %37 = getelementptr inbounds %"adtc$main.ir.IRType.ADT.164", %"adtc$main.ir.IRType.ADT.164"* %36, i32 0, i32 1
  %38 = load %"adt$main.ir.IRADTDecl.165"*, %"adt$main.ir.IRADTDecl.165"** %37
  %39 = load %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRType.161"** %bake.targetType
  %40 = getelementptr inbounds %"adt$main.ir.IRType.161", %"adt$main.ir.IRType.161"* %39, i32 0, i32 0
  %41 = load i32, i32* %40
  switch i32 %41, label %34 [
    i32 2, label %23
  ]

; <label>:42:                                     ; preds = %43
  br label %53

; <label>:43:                                     ; preds = %46
  br label %42

; <label>:44:                                     ; preds = %46
  %45 = call %"adt$main.bytecode.Coerce"* @"adtcfn$adtc$main.bytecode.Coerce.ID"()
  ret %"adt$main.bytecode.Coerce"* %45

; <label>:46:                                     ; preds = %54
  %47 = bitcast %"adt$main.ir.IRType.161"* %58 to %"adtc$main.ir.IRType.Prim.162"*
  %48 = getelementptr inbounds %"adtc$main.ir.IRType.Prim.162", %"adtc$main.ir.IRType.Prim.162"* %47, i32 0, i32 1
  %49 = load %"adt$main.ir.IRPrimType.163"*, %"adt$main.ir.IRPrimType.163"** %48
  %50 = call i32 @"fn$main.ir.PrimGetTag"(%"adt$main.ir.IRPrimType.163"* %57)
  %51 = call i32 @"fn$main.ir.PrimGetTag"(%"adt$main.ir.IRPrimType.163"* %49)
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %44, label %43

; <label>:53:                                     ; preds = %42, %54
  br label %61

; <label>:54:                                     ; preds = %72
  %55 = bitcast %"adt$main.ir.IRType.161"* %73 to %"adtc$main.ir.IRType.Prim.162"*
  %56 = getelementptr inbounds %"adtc$main.ir.IRType.Prim.162", %"adtc$main.ir.IRType.Prim.162"* %55, i32 0, i32 1
  %57 = load %"adt$main.ir.IRPrimType.163"*, %"adt$main.ir.IRPrimType.163"** %56
  %58 = load %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRType.161"** %bake.targetType
  %59 = getelementptr inbounds %"adt$main.ir.IRType.161", %"adt$main.ir.IRType.161"* %58, i32 0, i32 0
  %60 = load i32, i32* %59
  switch i32 %60, label %53 [
    i32 1, label %46
  ]

; <label>:61:                                     ; preds = %11, %34, %53, %72
  %62 = call %"adt$main.bytecode.Coerce"* @"adtcfn$adtc$main.bytecode.Coerce.None"()
  ret %"adt$main.bytecode.Coerce"* %62

; <label>:63:                                     ; preds = %66
  %64 = call %"adt$main.bytecode.Coerce"* @"adtcfn$adtc$main.bytecode.Coerce.FromUndef"()
  ret %"adt$main.bytecode.Coerce"* %64

; <label>:65:                                     ; preds = %66
  br label %72

; <label>:66:                                     ; preds = %76
  %67 = bitcast %"adt$main.ir.IRType.161"* %77 to %"adtc$main.ir.IRType.Prim.162"*
  %68 = getelementptr inbounds %"adtc$main.ir.IRType.Prim.162", %"adtc$main.ir.IRType.Prim.162"* %67, i32 0, i32 1
  %69 = load %"adt$main.ir.IRPrimType.163"*, %"adt$main.ir.IRPrimType.163"** %68
  %70 = getelementptr inbounds %"adt$main.ir.IRPrimType.163", %"adt$main.ir.IRPrimType.163"* %69, i32 0, i32 0
  %71 = load i32, i32* %70
  switch i32 %71, label %65 [
    i32 1, label %63
  ]

; <label>:72:                                     ; preds = %65, %76
  %73 = load %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRType.161"** %bake.actualType
  %74 = getelementptr inbounds %"adt$main.ir.IRType.161", %"adt$main.ir.IRType.161"* %73, i32 0, i32 0
  %75 = load i32, i32* %74
  switch i32 %75, label %61 [
    i32 4, label %12
    i32 2, label %35
    i32 1, label %54
  ]

; <label>:76:                                     ; preds = %entry
  %77 = load %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRType.161"** %bake.actualType
  %78 = getelementptr inbounds %"adt$main.ir.IRType.161", %"adt$main.ir.IRType.161"* %77, i32 0, i32 0
  %79 = load i32, i32* %78
  switch i32 %79, label %72 [
    i32 1, label %66
  ]
}

declare %"adt$main.bytecode.Coerce"* @"adtcfn$adtc$main.bytecode.Coerce.FromUndef"()

declare %"adt$main.bytecode.Coerce"* @"adtcfn$adtc$main.bytecode.Coerce.None"()

declare i32 @"fn$main.ir.PrimGetTag"(%"adt$main.ir.IRPrimType.163"*)

declare %"adt$main.bytecode.Coerce"* @"adtcfn$adtc$main.bytecode.Coerce.ID"()

define %"adt$main.ir.IRType.161"* @"fn$main.bytecode_compiler.BCCompileUnifyTypes"(%"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.ast.SrcLoc.167"* %loc, %"adt$main.ir.IRType.161"* %leftTy, %"adt$main.ir.IRType.161"* %rightTy) {
entry:
  %coerce = alloca %"adt$main.bytecode.Coerce"*
  %bake.rightTy = alloca %"adt$main.ir.IRType.161"*
  %bake.leftTy = alloca %"adt$main.ir.IRType.161"*
  %bake.loc = alloca %"adt$main.ast.SrcLoc.167"*
  %bake.bc = alloca %"adt$main.bytecode_compiler.BCCompiler"*
  store %"adt$main.ir.IRType.161"* %rightTy, %"adt$main.ir.IRType.161"** %bake.rightTy
  store %"adt$main.ir.IRType.161"* %leftTy, %"adt$main.ir.IRType.161"** %bake.leftTy
  store %"adt$main.ast.SrcLoc.167"* %loc, %"adt$main.ast.SrcLoc.167"** %bake.loc
  store %"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  br label %6

; <label>:0:                                      ; preds = %6
  %1 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %2 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %bake.loc
  call void @"fn$main.bytecode_compiler.BCCompilerError"(%"adt$main.bytecode_compiler.BCCompiler"* %1, %"adt$main.ast.SrcLoc.167"* %2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @0, i32 0, i32 0))
  unreachable

; <label>:3:                                      ; preds = %6
  %4 = load %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRType.161"** %bake.leftTy
  ret %"adt$main.ir.IRType.161"* %4
                                                  ; No predecessors!
  unreachable

; <label>:6:                                      ; preds = %entry
  %7 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %8 = load %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRType.161"** %bake.leftTy
  %9 = load %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRType.161"** %bake.rightTy
  %10 = call %"adt$main.bytecode.Coerce"* @"fn$main.bytecode_compiler.BCCompileFindCoerce"(%"adt$main.bytecode_compiler.BCCompiler"* %7, %"adt$main.ir.IRType.161"* %8, %"adt$main.ir.IRType.161"* %9)
  store %"adt$main.bytecode.Coerce"* %10, %"adt$main.bytecode.Coerce"** %coerce
  %11 = load %"adt$main.bytecode.Coerce"*, %"adt$main.bytecode.Coerce"** %coerce
  %12 = getelementptr inbounds %"adt$main.bytecode.Coerce", %"adt$main.bytecode.Coerce"* %11, i32 0, i32 0
  %13 = load i32, i32* %12
  switch i32 %13, label %0 [
    i32 2, label %3
  ]
}

define void @"fn$main.bytecode_compiler.BCCompilerError"(%"adt$main.bytecode_compiler.BCCompiler"* %compiler, %"adt$main.ast.SrcLoc.167"* %loc, i8* %message) {
entry:
  %bake.message = alloca i8*
  %bake.loc = alloca %"adt$main.ast.SrcLoc.167"*
  %bake.compiler = alloca %"adt$main.bytecode_compiler.BCCompiler"*
  store i8* %message, i8** %bake.message
  store %"adt$main.ast.SrcLoc.167"* %loc, %"adt$main.ast.SrcLoc.167"** %bake.loc
  store %"adt$main.bytecode_compiler.BCCompiler"* %compiler, %"adt$main.bytecode_compiler.BCCompiler"** %bake.compiler
  br label %26

; <label>:0:                                      ; preds = %26
  %1 = bitcast %"adt$main.ast.SrcLoc.167"* %27 to %"adtc$main.ast.SrcLoc.At.236"*
  %2 = getelementptr inbounds %"adtc$main.ast.SrcLoc.At.236", %"adtc$main.ast.SrcLoc.At.236"* %1, i32 0, i32 1
  %3 = load i32, i32* %2
  %4 = bitcast %"adt$main.ast.SrcLoc.167"* %27 to %"adtc$main.ast.SrcLoc.At.236"*
  %5 = getelementptr inbounds %"adtc$main.ast.SrcLoc.At.236", %"adtc$main.ast.SrcLoc.At.236"* %4, i32 0, i32 2
  %6 = load i32, i32* %5
  %7 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.compiler
  %8 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %7, i32 0, i32 2
  %9 = load %"adt$main.ir.IRSourceFile.170"*, %"adt$main.ir.IRSourceFile.170"** %8
  %10 = getelementptr inbounds %"adt$main.ir.IRSourceFile.170", %"adt$main.ir.IRSourceFile.170"* %9, i32 0, i32 1
  %11 = load %"adt$main.ir.SourceFileRef.226"*, %"adt$main.ir.SourceFileRef.226"** %10
  %12 = getelementptr inbounds %"adt$main.ir.SourceFileRef.226", %"adt$main.ir.SourceFileRef.226"* %11, i32 0, i32 4
  %13 = load i8*, i8** %12
  %14 = call i8* @jf_string_concat(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @41, i32 0, i32 0))
  %15 = add i32 %3, 1
  %16 = call i8* @"fn$main.prelude.IntToStr"(i32 %15)
  %17 = call i8* @jf_string_concat(i8* %14, i8* %16)
  %18 = call i8* @jf_string_concat(i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @42, i32 0, i32 0))
  %19 = add i32 %6, 1
  %20 = call i8* @"fn$main.prelude.IntToStr"(i32 %19)
  %21 = call i8* @jf_string_concat(i8* %18, i8* %20)
  %22 = call i8* @jf_string_concat(i8* %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @43, i32 0, i32 0))
  %23 = load i8*, i8** %bake.message
  %24 = call i8* @jf_string_concat(i8* %22, i8* %23)
  call void @"fn$main.prelude.WriteLn"(i8* %24)
  br label %25

; <label>:25:                                     ; preds = %0, %26
  call void @"fn$main.prelude.Exit"(i32 1)
  unreachable

; <label>:26:                                     ; preds = %entry
  %27 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %bake.loc
  %28 = getelementptr inbounds %"adt$main.ast.SrcLoc.167", %"adt$main.ast.SrcLoc.167"* %27, i32 0, i32 0
  %29 = load i32, i32* %28
  switch i32 %29, label %25 [
    i32 0, label %0
  ]
}

define %"adt$main.bytecode.ValueRef.168"* @"fn$main.bytecode_compiler.BCCompileCoerce"(%"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.ast.SrcLoc.167"* %loc, %"adt$main.bytecode.ValueRef.168"* %val, %"adt$main.ir.IRType.161"* %targetType) {
entry:
  %coerce = alloca %"adt$main.bytecode.Coerce"*
  %actualType = alloca %"adt$main.ir.IRType.161"*
  %bake.targetType = alloca %"adt$main.ir.IRType.161"*
  %bake.val = alloca %"adt$main.bytecode.ValueRef.168"*
  %bake.loc = alloca %"adt$main.ast.SrcLoc.167"*
  %bake.bc = alloca %"adt$main.bytecode_compiler.BCCompiler"*
  store %"adt$main.ir.IRType.161"* %targetType, %"adt$main.ir.IRType.161"** %bake.targetType
  store %"adt$main.bytecode.ValueRef.168"* %val, %"adt$main.bytecode.ValueRef.168"** %bake.val
  store %"adt$main.ast.SrcLoc.167"* %loc, %"adt$main.ast.SrcLoc.167"** %bake.loc
  store %"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  br label %12

; <label>:0:                                      ; preds = %12
  %1 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %2 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %1, i32 0, i32 5
  %3 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %2
  call void @"fn$main.bytecode_builder.BCBuilderUnreachable"(%"adt$main.bytecode_builder.BCBuilder"* %3)
  %4 = load %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRType.161"** %bake.targetType
  %5 = call %"adt$main.bytecode.ValueRef.168"* @"adtcfn$adtc$main.bytecode.ValueRef.Undef"(%"adt$main.ir.IRType.161"* %4)
  ret %"adt$main.bytecode.ValueRef.168"* %5

; <label>:6:                                      ; preds = %12
  %7 = load %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRef.168"** %bake.val
  ret %"adt$main.bytecode.ValueRef.168"* %7

; <label>:8:                                      ; preds = %12
  %9 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %10 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %bake.loc
  call void @"fn$main.bytecode_compiler.BCCompilerError"(%"adt$main.bytecode_compiler.BCCompiler"* %9, %"adt$main.ast.SrcLoc.167"* %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @1, i32 0, i32 0))
  unreachable

; <label>:11:                                     ; preds = %12
  unreachable

; <label>:12:                                     ; preds = %entry
  %13 = load %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRef.168"** %bake.val
  %14 = call %"adt$main.ir.IRType.161"* @"fn$main.bytecode.ValueRefGetType"(%"adt$main.bytecode.ValueRef.168"* %13)
  store %"adt$main.ir.IRType.161"* %14, %"adt$main.ir.IRType.161"** %actualType
  %15 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %16 = load %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRType.161"** %actualType
  %17 = load %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRType.161"** %bake.targetType
  %18 = call %"adt$main.bytecode.Coerce"* @"fn$main.bytecode_compiler.BCCompileFindCoerce"(%"adt$main.bytecode_compiler.BCCompiler"* %15, %"adt$main.ir.IRType.161"* %16, %"adt$main.ir.IRType.161"* %17)
  store %"adt$main.bytecode.Coerce"* %18, %"adt$main.bytecode.Coerce"** %coerce
  %19 = load %"adt$main.bytecode.Coerce"*, %"adt$main.bytecode.Coerce"** %coerce
  %20 = getelementptr inbounds %"adt$main.bytecode.Coerce", %"adt$main.bytecode.Coerce"* %19, i32 0, i32 0
  %21 = load i32, i32* %20
  switch i32 %21, label %11 [
    i32 1, label %0
    i32 2, label %6
    i32 0, label %8
  ]
}

declare %"adt$main.ir.IRType.161"* @"fn$main.bytecode.ValueRefGetType"(%"adt$main.bytecode.ValueRef.168"*)

declare void @"fn$main.bytecode_builder.BCBuilderUnreachable"(%"adt$main.bytecode_builder.BCBuilder"*)

declare %"adt$main.bytecode.ValueRef.168"* @"adtcfn$adtc$main.bytecode.ValueRef.Undef"(%"adt$main.ir.IRType.161"*)

define %"adt$main.bytecode.ValueRef.168"* @"fn$main.bytecode_compiler.BCCompileExprAs"(%"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.ast_expr.AstExpr.174"* %ast, %"adt$main.ir.IRType.161"* %type) {
entry:
  %val = alloca %"adt$main.bytecode.ValueRef.168"*
  %bake.type = alloca %"adt$main.ir.IRType.161"*
  %bake.ast = alloca %"adt$main.ast_expr.AstExpr.174"*
  %bake.bc = alloca %"adt$main.bytecode_compiler.BCCompiler"*
  store %"adt$main.ir.IRType.161"* %type, %"adt$main.ir.IRType.161"** %bake.type
  store %"adt$main.ast_expr.AstExpr.174"* %ast, %"adt$main.ast_expr.AstExpr.174"** %bake.ast
  store %"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  br label %0

; <label>:0:                                      ; preds = %entry
  %1 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %2 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %bake.ast
  %3 = load %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRType.161"** %bake.type
  %4 = call %"adt$main.ir.MaybeIRType.175"* @"adtcfn$adtc$main.ir.MaybeIRType.Just"(%"adt$main.ir.IRType.161"* %3)
  %5 = call %"adt$main.bytecode.ValueRef.168"* @"fn$main.bytecode_compiler.BCCompileExpr"(%"adt$main.bytecode_compiler.BCCompiler"* %1, %"adt$main.ast_expr.AstExpr.174"* %2, %"adt$main.ir.MaybeIRType.175"* %4)
  store %"adt$main.bytecode.ValueRef.168"* %5, %"adt$main.bytecode.ValueRef.168"** %val
  %6 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %7 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %bake.ast
  %8 = getelementptr inbounds %"adt$main.ast_expr.AstExpr.174", %"adt$main.ast_expr.AstExpr.174"* %7, i32 0, i32 1
  %9 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %8
  %10 = load %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRef.168"** %val
  %11 = load %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRType.161"** %bake.type
  %12 = call %"adt$main.bytecode.ValueRef.168"* @"fn$main.bytecode_compiler.BCCompileCoerce"(%"adt$main.bytecode_compiler.BCCompiler"* %6, %"adt$main.ast.SrcLoc.167"* %9, %"adt$main.bytecode.ValueRef.168"* %10, %"adt$main.ir.IRType.161"* %11)
  store %"adt$main.bytecode.ValueRef.168"* %12, %"adt$main.bytecode.ValueRef.168"** %val
  %13 = load %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRef.168"** %val
  ret %"adt$main.bytecode.ValueRef.168"* %13
}

declare %"adt$main.ir.MaybeIRType.175"* @"adtcfn$adtc$main.ir.MaybeIRType.Just"(%"adt$main.ir.IRType.161"*)

define %"adt$main.bytecode.ValueRef.168"* @"fn$main.bytecode_compiler.BCCompileExpr"(%"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.ast_expr.AstExpr.174"* %ast, %"adt$main.ir.MaybeIRType.175"* %m_type) {
entry:
  %args = alloca %"adt$main.bytecode.ValueRefList.179"*
  %type = alloca %"adt$main.ir.IRType.161"*
  %head_val = alloca %"adt$main.bytecode.CallableRef"*
  %phi2 = alloca %"adt$main.bytecode.PHIList.181"*
  %phi1 = alloca %"adt$main.bytecode.PHIList.181"*
  %phi0 = alloca %"adt$main.bytecode.PHIList.181"*
  %exitBlock = alloca %"adt$main.bytecode.BasicBlock.182"*
  %rExpr = alloca %"adt$main.bytecode.ValueRef.168"*
  %currentBlock = alloca %"adt$main.bytecode.BasicBlock.182"*
  %joinBlock = alloca %"adt$main.bytecode.BasicBlock.182"*
  %secondBlock = alloca %"adt$main.bytecode.BasicBlock.182"*
  %lExpr = alloca %"adt$main.bytecode.ValueRef.168"*
  %boolTy = alloca %"adt$main.ir.IRType.161"*
  %intrinsic = alloca %"adt$main.bytecode.Intrinsic.183"*
  %ok = alloca i1
  %intrinsic1 = alloca %"adt$main.bytecode.Intrinsic.183"*
  %cmpOp = alloca %"adt$main.bytecode.Comparison.184"*
  %commonType = alloca %"adt$main.ir.IRType.161"*
  %rExpr2 = alloca %"adt$main.bytecode.ValueRef.168"*
  %lExpr3 = alloca %"adt$main.bytecode.ValueRef.168"*
  %opId = alloca i32
  %args4 = alloca %"adt$main.bytecode.ValueRefList.179"*
  %m_cons = alloca %"adt$main.ir.MaybeIRADTCons.185"*
  %ref = alloca %"adt$main.bytecode.IndexableRef"*
  %ref5 = alloca %"adt$main.bytecode_compiler.LocalRef"*
  %idx = alloca %"adt$main.bytecode.ValueRef.168"*
  %ref6 = alloca %"adt$main.bytecode.IndexableRef"*
  %sizeVal = alloca %"adt$main.bytecode.ValueRef.168"*
  %str = alloca i8*
  %num = alloca i32
  %bake.m_type = alloca %"adt$main.ir.MaybeIRType.175"*
  %bake.ast = alloca %"adt$main.ast_expr.AstExpr.174"*
  %bake.bc = alloca %"adt$main.bytecode_compiler.BCCompiler"*
  store %"adt$main.ir.MaybeIRType.175"* %m_type, %"adt$main.ir.MaybeIRType.175"** %bake.m_type
  store %"adt$main.ast_expr.AstExpr.174"* %ast, %"adt$main.ast_expr.AstExpr.174"** %bake.ast
  store %"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  br label %614

; <label>:0:                                      ; preds = %39
  %1 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %2 = getelementptr inbounds %"adt$main.ast_expr.AstExpr.174", %"adt$main.ast_expr.AstExpr.174"* %42, i32 0, i32 1
  %3 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %2
  call void @"fn$main.bytecode_compiler.BCCompilerError"(%"adt$main.bytecode_compiler.BCCompiler"* %1, %"adt$main.ast.SrcLoc.167"* %3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @17, i32 0, i32 0))
  unreachable

; <label>:4:                                      ; preds = %23
  %5 = bitcast %"adt$main.bytecode.CallableRef"* %35 to %"adtc$main.bytecode.CallableRef.ADTConstructor"*
  %6 = getelementptr inbounds %"adtc$main.bytecode.CallableRef.ADTConstructor", %"adtc$main.bytecode.CallableRef.ADTConstructor"* %5, i32 0, i32 1
  %7 = load %"adt$main.ir.IRADTCons.194"*, %"adt$main.ir.IRADTCons.194"** %6
  %8 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %9 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %8, i32 0, i32 5
  %10 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %9
  %11 = load %"adt$main.bytecode.ValueRefList.179"*, %"adt$main.bytecode.ValueRefList.179"** %args
  %12 = call %"adt$main.bytecode.ValueRef.168"* @"fn$main.bytecode_builder.BCBuilderCallConstructor"(%"adt$main.bytecode_builder.BCBuilder"* %10, %"adt$main.ir.IRADTCons.194"* %7, %"adt$main.bytecode.ValueRefList.179"* %11, %"adt$main.ir.IRType.161"* %26)
  ret %"adt$main.bytecode.ValueRef.168"* %12

; <label>:13:                                     ; preds = %23
  %14 = bitcast %"adt$main.bytecode.CallableRef"* %35 to %"adtc$main.bytecode.CallableRef.Function"*
  %15 = getelementptr inbounds %"adtc$main.bytecode.CallableRef.Function", %"adtc$main.bytecode.CallableRef.Function"* %14, i32 0, i32 1
  %16 = load %"adt$main.ir.IRFunctionDecl.203"*, %"adt$main.ir.IRFunctionDecl.203"** %15
  %17 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %18 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %17, i32 0, i32 5
  %19 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %18
  %20 = load %"adt$main.bytecode.ValueRefList.179"*, %"adt$main.bytecode.ValueRefList.179"** %args
  %21 = call %"adt$main.bytecode.ValueRef.168"* @"fn$main.bytecode_builder.BCBuilderCallFunction"(%"adt$main.bytecode_builder.BCBuilder"* %19, %"adt$main.ir.IRFunctionDecl.203"* %16, %"adt$main.bytecode.ValueRefList.179"* %20, %"adt$main.ir.IRType.161"* %26)
  ret %"adt$main.bytecode.ValueRef.168"* %21

; <label>:22:                                     ; preds = %23
  br label %38

; <label>:23:                                     ; preds = %39
  %24 = bitcast %"adt$main.ir.IRType.161"* %51 to %"adtc$main.ir.IRType.Function.196"*
  %25 = getelementptr inbounds %"adtc$main.ir.IRType.Function.196", %"adtc$main.ir.IRType.Function.196"* %24, i32 0, i32 1
  %26 = load %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRType.161"** %25
  %27 = bitcast %"adt$main.ir.IRType.161"* %51 to %"adtc$main.ir.IRType.Function.196"*
  %28 = getelementptr inbounds %"adtc$main.ir.IRType.Function.196", %"adtc$main.ir.IRType.Function.196"* %27, i32 0, i32 2
  %29 = load %"adt$main.ir.IRTypeList.178"*, %"adt$main.ir.IRTypeList.178"** %28
  %30 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %31 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %bake.ast
  %32 = getelementptr inbounds %"adt$main.ast_expr.AstExpr.174", %"adt$main.ast_expr.AstExpr.174"* %31, i32 0, i32 1
  %33 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %32
  %34 = call %"adt$main.bytecode.ValueRefList.179"* @"fn$main.bytecode_compiler.BCCompileArgs"(%"adt$main.bytecode_compiler.BCCompiler"* %30, %"adt$main.ast.SrcLoc.167"* %33, %"adt$main.ast_expr.AstExprList.177"* %45, %"adt$main.ir.IRTypeList.178"* %29)
  store %"adt$main.bytecode.ValueRefList.179"* %34, %"adt$main.bytecode.ValueRefList.179"** %args
  %35 = load %"adt$main.bytecode.CallableRef"*, %"adt$main.bytecode.CallableRef"** %head_val
  %36 = getelementptr inbounds %"adt$main.bytecode.CallableRef", %"adt$main.bytecode.CallableRef"* %35, i32 0, i32 0
  %37 = load i32, i32* %36
  switch i32 %37, label %22 [
    i32 1, label %4
    i32 0, label %13
  ]

; <label>:38:                                     ; preds = %22
  br label %613

; <label>:39:                                     ; preds = %614
  %40 = bitcast %"adt$main.ast_expr.AstExpr.174"* %619 to %"adtc$main.ast_expr.AstExpr.Call"*
  %41 = getelementptr inbounds %"adtc$main.ast_expr.AstExpr.Call", %"adtc$main.ast_expr.AstExpr.Call"* %40, i32 0, i32 2
  %42 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %41
  %43 = bitcast %"adt$main.ast_expr.AstExpr.174"* %619 to %"adtc$main.ast_expr.AstExpr.Call"*
  %44 = getelementptr inbounds %"adtc$main.ast_expr.AstExpr.Call", %"adtc$main.ast_expr.AstExpr.Call"* %43, i32 0, i32 3
  %45 = load %"adt$main.ast_expr.AstExprList.177"*, %"adt$main.ast_expr.AstExprList.177"** %44
  %46 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %47 = load %"adt$main.ir.MaybeIRType.175"*, %"adt$main.ir.MaybeIRType.175"** %bake.m_type
  %48 = call %"adt$main.bytecode.CallableRef"* @"fn$main.bytecode_compiler.BCCompileCallableReference"(%"adt$main.bytecode_compiler.BCCompiler"* %46, %"adt$main.ast_expr.AstExpr.174"* %42, %"adt$main.ir.MaybeIRType.175"* %47)
  store %"adt$main.bytecode.CallableRef"* %48, %"adt$main.bytecode.CallableRef"** %head_val
  %49 = load %"adt$main.bytecode.CallableRef"*, %"adt$main.bytecode.CallableRef"** %head_val
  %50 = call %"adt$main.ir.IRType.161"* @"fn$main.bytecode.CallableRefGetType"(%"adt$main.bytecode.CallableRef"* %49)
  store %"adt$main.ir.IRType.161"* %50, %"adt$main.ir.IRType.161"** %type
  %51 = load %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRType.161"** %type
  %52 = getelementptr inbounds %"adt$main.ir.IRType.161", %"adt$main.ir.IRType.161"* %51, i32 0, i32 0
  %53 = load i32, i32* %52
  switch i32 %53, label %0 [
    i32 6, label %23
  ]

; <label>:54:                                     ; preds = %93, %100
  %55 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %56 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %55, i32 0, i32 5
  %57 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %56
  %58 = load %"adt$main.bytecode.BasicBlock.182"*, %"adt$main.bytecode.BasicBlock.182"** %secondBlock
  call void @"fn$main.bytecode_builder.BCBuilderSetInsertPoint"(%"adt$main.bytecode_builder.BCBuilder"* %57, %"adt$main.bytecode.BasicBlock.182"* %58)
  %59 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %60 = load %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRType.161"** %boolTy
  %61 = call %"adt$main.bytecode.ValueRef.168"* @"fn$main.bytecode_compiler.BCCompileExprAs"(%"adt$main.bytecode_compiler.BCCompiler"* %59, %"adt$main.ast_expr.AstExpr.174"* %339, %"adt$main.ir.IRType.161"* %60)
  store %"adt$main.bytecode.ValueRef.168"* %61, %"adt$main.bytecode.ValueRef.168"** %rExpr
  %62 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %63 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %62, i32 0, i32 5
  %64 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %63
  %65 = getelementptr inbounds %"adt$main.bytecode_builder.BCBuilder", %"adt$main.bytecode_builder.BCBuilder"* %64, i32 0, i32 1
  %66 = load %"adt$main.bytecode.BasicBlock.182"*, %"adt$main.bytecode.BasicBlock.182"** %65
  store %"adt$main.bytecode.BasicBlock.182"* %66, %"adt$main.bytecode.BasicBlock.182"** %exitBlock
  %67 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %68 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %67, i32 0, i32 5
  %69 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %68
  %70 = load %"adt$main.bytecode.BasicBlock.182"*, %"adt$main.bytecode.BasicBlock.182"** %joinBlock
  call void @"fn$main.bytecode_builder.BCBuilderJump"(%"adt$main.bytecode_builder.BCBuilder"* %69, %"adt$main.bytecode.BasicBlock.182"* %70)
  %71 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %72 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %71, i32 0, i32 5
  %73 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %72
  %74 = load %"adt$main.bytecode.BasicBlock.182"*, %"adt$main.bytecode.BasicBlock.182"** %joinBlock
  call void @"fn$main.bytecode_builder.BCBuilderSetInsertPoint"(%"adt$main.bytecode_builder.BCBuilder"* %73, %"adt$main.bytecode.BasicBlock.182"* %74)
  %75 = call %"adt$main.bytecode.PHIList.181"* @"adtcfn$adtc$main.bytecode.PHIList.Nil"()
  store %"adt$main.bytecode.PHIList.181"* %75, %"adt$main.bytecode.PHIList.181"** %phi0
  %76 = load %"adt$main.bytecode.BasicBlock.182"*, %"adt$main.bytecode.BasicBlock.182"** %currentBlock
  %77 = load i32, i32* %opId
  %78 = icmp eq i32 %77, 5
  %79 = load %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRType.161"** %boolTy
  %80 = call %"adt$main.bytecode.ValueRef.168"* @"adtcfn$adtc$main.bytecode.ValueRef.ConstBool"(i1 %78, %"adt$main.ir.IRType.161"* %79)
  %81 = load %"adt$main.bytecode.PHIList.181"*, %"adt$main.bytecode.PHIList.181"** %phi0
  %82 = call %"adt$main.bytecode.PHIList.181"* @"adtcfn$adtc$main.bytecode.PHIList.Cons"(%"adt$main.bytecode.BasicBlock.182"* %76, %"adt$main.bytecode.ValueRef.168"* %80, %"adt$main.bytecode.PHIList.181"* %81)
  store %"adt$main.bytecode.PHIList.181"* %82, %"adt$main.bytecode.PHIList.181"** %phi1
  %83 = load %"adt$main.bytecode.BasicBlock.182"*, %"adt$main.bytecode.BasicBlock.182"** %exitBlock
  %84 = load %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRef.168"** %rExpr
  %85 = load %"adt$main.bytecode.PHIList.181"*, %"adt$main.bytecode.PHIList.181"** %phi1
  %86 = call %"adt$main.bytecode.PHIList.181"* @"adtcfn$adtc$main.bytecode.PHIList.Cons"(%"adt$main.bytecode.BasicBlock.182"* %83, %"adt$main.bytecode.ValueRef.168"* %84, %"adt$main.bytecode.PHIList.181"* %85)
  store %"adt$main.bytecode.PHIList.181"* %86, %"adt$main.bytecode.PHIList.181"** %phi2
  %87 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %88 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %87, i32 0, i32 5
  %89 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %88
  %90 = load %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRType.161"** %boolTy
  %91 = load %"adt$main.bytecode.PHIList.181"*, %"adt$main.bytecode.PHIList.181"** %phi2
  %92 = call %"adt$main.bytecode.ValueRef.168"* @"fn$main.bytecode_builder.BCBuilderPHI"(%"adt$main.bytecode_builder.BCBuilder"* %89, %"adt$main.ir.IRType.161"* %90, %"adt$main.bytecode.PHIList.181"* %91)
  ret %"adt$main.bytecode.ValueRef.168"* %92

; <label>:93:                                     ; preds = %109
  %94 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %95 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %94, i32 0, i32 5
  %96 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %95
  %97 = load %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRef.168"** %lExpr
  %98 = load %"adt$main.bytecode.BasicBlock.182"*, %"adt$main.bytecode.BasicBlock.182"** %joinBlock
  %99 = load %"adt$main.bytecode.BasicBlock.182"*, %"adt$main.bytecode.BasicBlock.182"** %secondBlock
  call void @"fn$main.bytecode_builder.BCBuilderCondJump"(%"adt$main.bytecode_builder.BCBuilder"* %96, %"adt$main.bytecode.ValueRef.168"* %97, %"adt$main.bytecode.BasicBlock.182"* %98, %"adt$main.bytecode.BasicBlock.182"* %99)
  br label %54

; <label>:100:                                    ; preds = %109
  %101 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %102 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %101, i32 0, i32 5
  %103 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %102
  %104 = load %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRef.168"** %lExpr
  %105 = load %"adt$main.bytecode.BasicBlock.182"*, %"adt$main.bytecode.BasicBlock.182"** %secondBlock
  %106 = load %"adt$main.bytecode.BasicBlock.182"*, %"adt$main.bytecode.BasicBlock.182"** %joinBlock
  call void @"fn$main.bytecode_builder.BCBuilderCondJump"(%"adt$main.bytecode_builder.BCBuilder"* %103, %"adt$main.bytecode.ValueRef.168"* %104, %"adt$main.bytecode.BasicBlock.182"* %105, %"adt$main.bytecode.BasicBlock.182"* %106)
  br label %54

; <label>:107:                                    ; preds = %108
  br label %274

; <label>:108:                                    ; preds = %130
  br label %107

; <label>:109:                                    ; preds = %130
  %110 = call %"adt$main.ir.IRPrimType.163"* @"adtcfn$adtc$main.ir.IRPrimType.Bool"()
  %111 = call %"adt$main.ir.IRType.161"* @"adtcfn$adtc$main.ir.IRType.Prim"(%"adt$main.ir.IRPrimType.163"* %110)
  store %"adt$main.ir.IRType.161"* %111, %"adt$main.ir.IRType.161"** %boolTy
  %112 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %113 = load %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRType.161"** %boolTy
  %114 = call %"adt$main.bytecode.ValueRef.168"* @"fn$main.bytecode_compiler.BCCompileExprAs"(%"adt$main.bytecode_compiler.BCCompiler"* %112, %"adt$main.ast_expr.AstExpr.174"* %333, %"adt$main.ir.IRType.161"* %113)
  store %"adt$main.bytecode.ValueRef.168"* %114, %"adt$main.bytecode.ValueRef.168"** %lExpr
  %115 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %116 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %115, i32 0, i32 4
  %117 = load %"adt$main.bytecode.FunctionFrame.171"*, %"adt$main.bytecode.FunctionFrame.171"** %116
  %118 = call %"adt$main.bytecode.BasicBlock.182"* @"fn$main.bytecode.BasicBlockCreate"(%"adt$main.bytecode.FunctionFrame.171"* %117)
  store %"adt$main.bytecode.BasicBlock.182"* %118, %"adt$main.bytecode.BasicBlock.182"** %secondBlock
  %119 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %120 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %119, i32 0, i32 4
  %121 = load %"adt$main.bytecode.FunctionFrame.171"*, %"adt$main.bytecode.FunctionFrame.171"** %120
  %122 = call %"adt$main.bytecode.BasicBlock.182"* @"fn$main.bytecode.BasicBlockCreate"(%"adt$main.bytecode.FunctionFrame.171"* %121)
  store %"adt$main.bytecode.BasicBlock.182"* %122, %"adt$main.bytecode.BasicBlock.182"** %joinBlock
  %123 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %124 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %123, i32 0, i32 5
  %125 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %124
  %126 = getelementptr inbounds %"adt$main.bytecode_builder.BCBuilder", %"adt$main.bytecode_builder.BCBuilder"* %125, i32 0, i32 1
  %127 = load %"adt$main.bytecode.BasicBlock.182"*, %"adt$main.bytecode.BasicBlock.182"** %126
  store %"adt$main.bytecode.BasicBlock.182"* %127, %"adt$main.bytecode.BasicBlock.182"** %currentBlock
  %128 = load i32, i32* %opId
  %129 = icmp eq i32 %128, 4
  br i1 %129, label %100, label %93

; <label>:130:                                    ; preds = %132, %279
  %131 = phi i1 [ %134, %132 ], [ true, %279 ]
  br i1 %131, label %109, label %108

; <label>:132:                                    ; preds = %279
  %133 = load i32, i32* %opId
  %134 = icmp eq i32 %133, 5
  br label %130

; <label>:135:                                    ; preds = %159
  %136 = call %"adt$main.bytecode.ArithOp.201"* @"adtcfn$adtc$main.bytecode.ArithOp.Multiply"()
  %137 = call %"adt$main.bytecode.Intrinsic.183"* @"adtcfn$adtc$main.bytecode.Intrinsic.Arith"(%"adt$main.bytecode.ArithOp.201"* %136)
  store %"adt$main.bytecode.Intrinsic.183"* %137, %"adt$main.bytecode.Intrinsic.183"** %intrinsic
  br label %147

; <label>:138:                                    ; preds = %159
  %139 = call %"adt$main.bytecode.ArithOp.201"* @"adtcfn$adtc$main.bytecode.ArithOp.Divide"()
  %140 = call %"adt$main.bytecode.Intrinsic.183"* @"adtcfn$adtc$main.bytecode.Intrinsic.Arith"(%"adt$main.bytecode.ArithOp.201"* %139)
  store %"adt$main.bytecode.Intrinsic.183"* %140, %"adt$main.bytecode.Intrinsic.183"** %intrinsic
  br label %147

; <label>:141:                                    ; preds = %159
  %142 = call %"adt$main.bytecode.ArithOp.201"* @"adtcfn$adtc$main.bytecode.ArithOp.Minus"()
  %143 = call %"adt$main.bytecode.Intrinsic.183"* @"adtcfn$adtc$main.bytecode.Intrinsic.Arith"(%"adt$main.bytecode.ArithOp.201"* %142)
  store %"adt$main.bytecode.Intrinsic.183"* %143, %"adt$main.bytecode.Intrinsic.183"** %intrinsic
  br label %147

; <label>:144:                                    ; preds = %159
  %145 = call %"adt$main.bytecode.ArithOp.201"* @"adtcfn$adtc$main.bytecode.ArithOp.Plus"()
  %146 = call %"adt$main.bytecode.Intrinsic.183"* @"adtcfn$adtc$main.bytecode.Intrinsic.Arith"(%"adt$main.bytecode.ArithOp.201"* %145)
  store %"adt$main.bytecode.Intrinsic.183"* %146, %"adt$main.bytecode.Intrinsic.183"** %intrinsic
  br label %147

; <label>:147:                                    ; preds = %135, %138, %141, %144, %159
  %148 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %149 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %148, i32 0, i32 5
  %150 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %149
  %151 = load %"adt$main.bytecode.Intrinsic.183"*, %"adt$main.bytecode.Intrinsic.183"** %intrinsic
  %152 = load %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRef.168"** %lExpr3
  %153 = load %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRef.168"** %rExpr2
  %154 = call %"adt$main.bytecode.ValueRefList.179"* @"adtcfn$adtc$main.bytecode.ValueRefList.Nil"()
  %155 = call %"adt$main.bytecode.ValueRefList.179"* @"adtcfn$adtc$main.bytecode.ValueRefList.Cons"(%"adt$main.bytecode.ValueRef.168"* %153, %"adt$main.bytecode.ValueRefList.179"* %154)
  %156 = call %"adt$main.bytecode.ValueRefList.179"* @"adtcfn$adtc$main.bytecode.ValueRefList.Cons"(%"adt$main.bytecode.ValueRef.168"* %152, %"adt$main.bytecode.ValueRefList.179"* %155)
  %157 = load %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRType.161"** %commonType
  %158 = call %"adt$main.bytecode.ValueRef.168"* @"fn$main.bytecode_builder.BCBuilderCallIntrinsic"(%"adt$main.bytecode_builder.BCBuilder"* %150, %"adt$main.bytecode.Intrinsic.183"* %151, %"adt$main.bytecode.ValueRefList.179"* %156, %"adt$main.ir.IRType.161"* %157)
  ret %"adt$main.bytecode.ValueRef.168"* %158

; <label>:159:                                    ; preds = %163
  %160 = getelementptr inbounds %"adt$main.ast_expr.BinOp.200", %"adt$main.ast_expr.BinOp.200"* %336, i32 0, i32 0
  %161 = load i32, i32* %160
  switch i32 %161, label %147 [
    i32 9, label %135
    i32 8, label %138
    i32 6, label %141
    i32 7, label %144
  ]

; <label>:162:                                    ; preds = %163
  br label %169

; <label>:163:                                    ; preds = %172
  %164 = bitcast %"adt$main.ir.IRType.161"* %173 to %"adtc$main.ir.IRType.Prim.162"*
  %165 = getelementptr inbounds %"adtc$main.ir.IRType.Prim.162", %"adtc$main.ir.IRType.Prim.162"* %164, i32 0, i32 1
  %166 = load %"adt$main.ir.IRPrimType.163"*, %"adt$main.ir.IRPrimType.163"** %165
  %167 = getelementptr inbounds %"adt$main.ir.IRPrimType.163", %"adt$main.ir.IRPrimType.163"* %166, i32 0, i32 0
  %168 = load i32, i32* %167
  switch i32 %168, label %162 [
    i32 2, label %159
  ]

; <label>:169:                                    ; preds = %162, %172
  br label %170

; <label>:170:                                    ; preds = %169, %171
  br label %274

; <label>:171:                                    ; preds = %176
  br label %170

; <label>:172:                                    ; preds = %176
  %173 = load %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRType.161"** %commonType
  %174 = getelementptr inbounds %"adt$main.ir.IRType.161", %"adt$main.ir.IRType.161"* %173, i32 0, i32 0
  %175 = load i32, i32* %174
  switch i32 %175, label %169 [
    i32 1, label %163
  ]

; <label>:176:                                    ; preds = %178, %265
  %177 = phi i1 [ %180, %178 ], [ true, %265 ]
  br i1 %177, label %172, label %171

; <label>:178:                                    ; preds = %265
  %179 = load i32, i32* %opId
  %180 = icmp eq i32 %179, 3
  br label %176

; <label>:181:                                    ; preds = %194
  %182 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %183 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %182, i32 0, i32 5
  %184 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %183
  %185 = call %"adt$main.bytecode.Intrinsic.183"* @"adtcfn$adtc$main.bytecode.Intrinsic.StringConcat"()
  %186 = load %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRef.168"** %lExpr3
  %187 = load %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRef.168"** %rExpr2
  %188 = call %"adt$main.bytecode.ValueRefList.179"* @"adtcfn$adtc$main.bytecode.ValueRefList.Nil"()
  %189 = call %"adt$main.bytecode.ValueRefList.179"* @"adtcfn$adtc$main.bytecode.ValueRefList.Cons"(%"adt$main.bytecode.ValueRef.168"* %187, %"adt$main.bytecode.ValueRefList.179"* %188)
  %190 = call %"adt$main.bytecode.ValueRefList.179"* @"adtcfn$adtc$main.bytecode.ValueRefList.Cons"(%"adt$main.bytecode.ValueRef.168"* %186, %"adt$main.bytecode.ValueRefList.179"* %189)
  %191 = load %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRType.161"** %commonType
  %192 = call %"adt$main.bytecode.ValueRef.168"* @"fn$main.bytecode_builder.BCBuilderCallIntrinsic"(%"adt$main.bytecode_builder.BCBuilder"* %184, %"adt$main.bytecode.Intrinsic.183"* %185, %"adt$main.bytecode.ValueRefList.179"* %190, %"adt$main.ir.IRType.161"* %191)
  ret %"adt$main.bytecode.ValueRef.168"* %192

; <label>:193:                                    ; preds = %194
  br label %200

; <label>:194:                                    ; preds = %203
  %195 = bitcast %"adt$main.ir.IRType.161"* %204 to %"adtc$main.ir.IRType.Prim.162"*
  %196 = getelementptr inbounds %"adtc$main.ir.IRType.Prim.162", %"adtc$main.ir.IRType.Prim.162"* %195, i32 0, i32 1
  %197 = load %"adt$main.ir.IRPrimType.163"*, %"adt$main.ir.IRPrimType.163"** %196
  %198 = getelementptr inbounds %"adt$main.ir.IRPrimType.163", %"adt$main.ir.IRPrimType.163"* %197, i32 0, i32 0
  %199 = load i32, i32* %198
  switch i32 %199, label %193 [
    i32 3, label %181
  ]

; <label>:200:                                    ; preds = %193, %203
  br label %201

; <label>:201:                                    ; preds = %200, %202
  br label %265

; <label>:202:                                    ; preds = %268
  br label %201

; <label>:203:                                    ; preds = %268
  %204 = load %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRType.161"** %commonType
  %205 = getelementptr inbounds %"adt$main.ir.IRType.161", %"adt$main.ir.IRType.161"* %204, i32 0, i32 0
  %206 = load i32, i32* %205
  switch i32 %206, label %200 [
    i32 1, label %194
  ]

; <label>:207:                                    ; preds = %208
  br label %265

; <label>:208:                                    ; preds = %247
  br label %207

; <label>:209:                                    ; preds = %247
  %210 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %211 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %210, i32 0, i32 5
  %212 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %211
  %213 = load %"adt$main.bytecode.Intrinsic.183"*, %"adt$main.bytecode.Intrinsic.183"** %intrinsic1
  %214 = load %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRef.168"** %lExpr3
  %215 = load %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRef.168"** %rExpr2
  %216 = call %"adt$main.bytecode.ValueRefList.179"* @"adtcfn$adtc$main.bytecode.ValueRefList.Nil"()
  %217 = call %"adt$main.bytecode.ValueRefList.179"* @"adtcfn$adtc$main.bytecode.ValueRefList.Cons"(%"adt$main.bytecode.ValueRef.168"* %215, %"adt$main.bytecode.ValueRefList.179"* %216)
  %218 = call %"adt$main.bytecode.ValueRefList.179"* @"adtcfn$adtc$main.bytecode.ValueRefList.Cons"(%"adt$main.bytecode.ValueRef.168"* %214, %"adt$main.bytecode.ValueRefList.179"* %217)
  %219 = call %"adt$main.ir.IRPrimType.163"* @"adtcfn$adtc$main.ir.IRPrimType.Bool"()
  %220 = call %"adt$main.ir.IRType.161"* @"adtcfn$adtc$main.ir.IRType.Prim"(%"adt$main.ir.IRPrimType.163"* %219)
  %221 = call %"adt$main.bytecode.ValueRef.168"* @"fn$main.bytecode_builder.BCBuilderCallIntrinsic"(%"adt$main.bytecode_builder.BCBuilder"* %212, %"adt$main.bytecode.Intrinsic.183"* %213, %"adt$main.bytecode.ValueRefList.179"* %218, %"adt$main.ir.IRType.161"* %220)
  ret %"adt$main.bytecode.ValueRef.168"* %221

; <label>:222:                                    ; preds = %261
  %223 = bitcast %"adt$main.ir.IRType.161"* %262 to %"adtc$main.ir.IRType.ADT.164"*
  %224 = getelementptr inbounds %"adtc$main.ir.IRType.ADT.164", %"adtc$main.ir.IRType.ADT.164"* %223, i32 0, i32 1
  %225 = load %"adt$main.ir.IRADTDecl.165"*, %"adt$main.ir.IRADTDecl.165"** %224
  store i1 true, i1* %ok
  %226 = load %"adt$main.bytecode.Comparison.184"*, %"adt$main.bytecode.Comparison.184"** %cmpOp
  %227 = call %"adt$main.bytecode.Intrinsic.183"* @"adtcfn$adtc$main.bytecode.Intrinsic.CompareRefEq"(%"adt$main.bytecode.Comparison.184"* %226)
  store %"adt$main.bytecode.Intrinsic.183"* %227, %"adt$main.bytecode.Intrinsic.183"** %intrinsic1
  br label %247

; <label>:228:                                    ; preds = %241
  store i1 true, i1* %ok
  %229 = load %"adt$main.bytecode.Comparison.184"*, %"adt$main.bytecode.Comparison.184"** %cmpOp
  %230 = call %"adt$main.bytecode.Intrinsic.183"* @"adtcfn$adtc$main.bytecode.Intrinsic.ComparePointer"(%"adt$main.bytecode.Comparison.184"* %229)
  store %"adt$main.bytecode.Intrinsic.183"* %230, %"adt$main.bytecode.Intrinsic.183"** %intrinsic1
  br label %240

; <label>:231:                                    ; preds = %241
  store i1 true, i1* %ok
  %232 = load %"adt$main.bytecode.Comparison.184"*, %"adt$main.bytecode.Comparison.184"** %cmpOp
  %233 = call %"adt$main.bytecode.Intrinsic.183"* @"adtcfn$adtc$main.bytecode.Intrinsic.CompareString"(%"adt$main.bytecode.Comparison.184"* %232)
  store %"adt$main.bytecode.Intrinsic.183"* %233, %"adt$main.bytecode.Intrinsic.183"** %intrinsic1
  br label %240

; <label>:234:                                    ; preds = %241
  store i1 true, i1* %ok
  %235 = load %"adt$main.bytecode.Comparison.184"*, %"adt$main.bytecode.Comparison.184"** %cmpOp
  %236 = call %"adt$main.bytecode.Intrinsic.183"* @"adtcfn$adtc$main.bytecode.Intrinsic.CompareI32"(%"adt$main.bytecode.Comparison.184"* %235)
  store %"adt$main.bytecode.Intrinsic.183"* %236, %"adt$main.bytecode.Intrinsic.183"** %intrinsic1
  br label %240

; <label>:237:                                    ; preds = %241
  store i1 true, i1* %ok
  %238 = load %"adt$main.bytecode.Comparison.184"*, %"adt$main.bytecode.Comparison.184"** %cmpOp
  %239 = call %"adt$main.bytecode.Intrinsic.183"* @"adtcfn$adtc$main.bytecode.Intrinsic.CompareBool"(%"adt$main.bytecode.Comparison.184"* %238)
  store %"adt$main.bytecode.Intrinsic.183"* %239, %"adt$main.bytecode.Intrinsic.183"** %intrinsic1
  br label %240

; <label>:240:                                    ; preds = %228, %231, %234, %237, %241
  br label %247

; <label>:241:                                    ; preds = %261
  %242 = bitcast %"adt$main.ir.IRType.161"* %262 to %"adtc$main.ir.IRType.Prim.162"*
  %243 = getelementptr inbounds %"adtc$main.ir.IRType.Prim.162", %"adtc$main.ir.IRType.Prim.162"* %242, i32 0, i32 1
  %244 = load %"adt$main.ir.IRPrimType.163"*, %"adt$main.ir.IRPrimType.163"** %243
  %245 = getelementptr inbounds %"adt$main.ir.IRPrimType.163", %"adt$main.ir.IRPrimType.163"* %244, i32 0, i32 0
  %246 = load i32, i32* %245
  switch i32 %246, label %240 [
    i32 4, label %228
    i32 3, label %231
    i32 2, label %234
    i32 5, label %237
  ]

; <label>:247:                                    ; preds = %222, %240, %261
  %248 = load i1, i1* %ok
  br i1 %248, label %209, label %208

; <label>:249:                                    ; preds = %271
  %250 = call %"adt$main.bytecode.Comparison.184"* @"adtcfn$adtc$main.bytecode.Comparison.GE"()
  store %"adt$main.bytecode.Comparison.184"* %250, %"adt$main.bytecode.Comparison.184"** %cmpOp
  br label %261

; <label>:251:                                    ; preds = %271
  %252 = call %"adt$main.bytecode.Comparison.184"* @"adtcfn$adtc$main.bytecode.Comparison.LE"()
  store %"adt$main.bytecode.Comparison.184"* %252, %"adt$main.bytecode.Comparison.184"** %cmpOp
  br label %261

; <label>:253:                                    ; preds = %271
  %254 = call %"adt$main.bytecode.Comparison.184"* @"adtcfn$adtc$main.bytecode.Comparison.GT"()
  store %"adt$main.bytecode.Comparison.184"* %254, %"adt$main.bytecode.Comparison.184"** %cmpOp
  br label %261

; <label>:255:                                    ; preds = %271
  %256 = call %"adt$main.bytecode.Comparison.184"* @"adtcfn$adtc$main.bytecode.Comparison.LT"()
  store %"adt$main.bytecode.Comparison.184"* %256, %"adt$main.bytecode.Comparison.184"** %cmpOp
  br label %261

; <label>:257:                                    ; preds = %271
  %258 = call %"adt$main.bytecode.Comparison.184"* @"adtcfn$adtc$main.bytecode.Comparison.NE"()
  store %"adt$main.bytecode.Comparison.184"* %258, %"adt$main.bytecode.Comparison.184"** %cmpOp
  br label %261

; <label>:259:                                    ; preds = %271
  %260 = call %"adt$main.bytecode.Comparison.184"* @"adtcfn$adtc$main.bytecode.Comparison.EQ"()
  store %"adt$main.bytecode.Comparison.184"* %260, %"adt$main.bytecode.Comparison.184"** %cmpOp
  br label %261

; <label>:261:                                    ; preds = %249, %251, %253, %255, %257, %259, %271
  store i1 false, i1* %ok
  %262 = load %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRType.161"** %commonType
  %263 = getelementptr inbounds %"adt$main.ir.IRType.161", %"adt$main.ir.IRType.161"* %262, i32 0, i32 0
  %264 = load i32, i32* %263
  switch i32 %264, label %247 [
    i32 2, label %222
    i32 1, label %241
  ]

; <label>:265:                                    ; preds = %201, %207
  %266 = load i32, i32* %opId
  %267 = icmp eq i32 %266, 2
  br i1 %267, label %176, label %178

; <label>:268:                                    ; preds = %282
  %269 = load i32, i32* %opId
  %270 = icmp eq i32 %269, 2
  br i1 %270, label %203, label %202

; <label>:271:                                    ; preds = %282
  %272 = getelementptr inbounds %"adt$main.ast_expr.BinOp.200", %"adt$main.ast_expr.BinOp.200"* %336, i32 0, i32 0
  %273 = load i32, i32* %272
  switch i32 %273, label %261 [
    i32 5, label %249
    i32 4, label %251
    i32 3, label %253
    i32 2, label %255
    i32 1, label %257
    i32 0, label %259
  ]

; <label>:274:                                    ; preds = %107, %170
  %275 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %276 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %bake.ast
  %277 = getelementptr inbounds %"adt$main.ast_expr.AstExpr.174", %"adt$main.ast_expr.AstExpr.174"* %276, i32 0, i32 1
  %278 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %277
  call void @"fn$main.bytecode_compiler.BCCompilerError"(%"adt$main.bytecode_compiler.BCCompiler"* %275, %"adt$main.ast.SrcLoc.167"* %278, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0))
  unreachable

; <label>:279:                                    ; preds = %310
  %280 = load i32, i32* %opId
  %281 = icmp eq i32 %280, 4
  br i1 %281, label %130, label %132

; <label>:282:                                    ; preds = %310
  %283 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %284 = call %"adt$main.bytecode.ValueRef.168"* @"fn$main.bytecode_compiler.BCCompileExprNoHint"(%"adt$main.bytecode_compiler.BCCompiler"* %283, %"adt$main.ast_expr.AstExpr.174"* %333)
  store %"adt$main.bytecode.ValueRef.168"* %284, %"adt$main.bytecode.ValueRef.168"** %lExpr3
  %285 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %286 = call %"adt$main.bytecode.ValueRef.168"* @"fn$main.bytecode_compiler.BCCompileExprNoHint"(%"adt$main.bytecode_compiler.BCCompiler"* %285, %"adt$main.ast_expr.AstExpr.174"* %339)
  store %"adt$main.bytecode.ValueRef.168"* %286, %"adt$main.bytecode.ValueRef.168"** %rExpr2
  %287 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %288 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %bake.ast
  %289 = getelementptr inbounds %"adt$main.ast_expr.AstExpr.174", %"adt$main.ast_expr.AstExpr.174"* %288, i32 0, i32 1
  %290 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %289
  %291 = load %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRef.168"** %lExpr3
  %292 = call %"adt$main.ir.IRType.161"* @"fn$main.bytecode.ValueRefGetType"(%"adt$main.bytecode.ValueRef.168"* %291)
  %293 = load %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRef.168"** %rExpr2
  %294 = call %"adt$main.ir.IRType.161"* @"fn$main.bytecode.ValueRefGetType"(%"adt$main.bytecode.ValueRef.168"* %293)
  %295 = call %"adt$main.ir.IRType.161"* @"fn$main.bytecode_compiler.BCCompileUnifyTypes"(%"adt$main.bytecode_compiler.BCCompiler"* %287, %"adt$main.ast.SrcLoc.167"* %290, %"adt$main.ir.IRType.161"* %292, %"adt$main.ir.IRType.161"* %294)
  store %"adt$main.ir.IRType.161"* %295, %"adt$main.ir.IRType.161"** %commonType
  %296 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %297 = getelementptr inbounds %"adt$main.ast_expr.AstExpr.174", %"adt$main.ast_expr.AstExpr.174"* %333, i32 0, i32 1
  %298 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %297
  %299 = load %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRef.168"** %lExpr3
  %300 = load %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRType.161"** %commonType
  %301 = call %"adt$main.bytecode.ValueRef.168"* @"fn$main.bytecode_compiler.BCCompileCoerce"(%"adt$main.bytecode_compiler.BCCompiler"* %296, %"adt$main.ast.SrcLoc.167"* %298, %"adt$main.bytecode.ValueRef.168"* %299, %"adt$main.ir.IRType.161"* %300)
  store %"adt$main.bytecode.ValueRef.168"* %301, %"adt$main.bytecode.ValueRef.168"** %lExpr3
  %302 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %303 = getelementptr inbounds %"adt$main.ast_expr.AstExpr.174", %"adt$main.ast_expr.AstExpr.174"* %339, i32 0, i32 1
  %304 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %303
  %305 = load %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRef.168"** %rExpr2
  %306 = load %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRType.161"** %commonType
  %307 = call %"adt$main.bytecode.ValueRef.168"* @"fn$main.bytecode_compiler.BCCompileCoerce"(%"adt$main.bytecode_compiler.BCCompiler"* %302, %"adt$main.ast.SrcLoc.167"* %304, %"adt$main.bytecode.ValueRef.168"* %305, %"adt$main.ir.IRType.161"* %306)
  store %"adt$main.bytecode.ValueRef.168"* %307, %"adt$main.bytecode.ValueRef.168"** %rExpr2
  %308 = load i32, i32* %opId
  %309 = icmp eq i32 %308, 1
  br i1 %309, label %271, label %268

; <label>:310:                                    ; preds = %312, %327
  %311 = phi i1 [ %314, %312 ], [ false, %327 ]
  br i1 %311, label %282, label %279

; <label>:312:                                    ; preds = %327
  %313 = load i32, i32* %opId
  %314 = icmp sle i32 %313, 3
  br label %310

; <label>:315:                                    ; preds = %330
  store i32 5, i32* %opId
  br label %327

; <label>:316:                                    ; preds = %330
  store i32 4, i32* %opId
  br label %327

; <label>:317:                                    ; preds = %330
  store i32 3, i32* %opId
  br label %327

; <label>:318:                                    ; preds = %330
  store i32 3, i32* %opId
  br label %327

; <label>:319:                                    ; preds = %330
  store i32 3, i32* %opId
  br label %327

; <label>:320:                                    ; preds = %330
  store i32 2, i32* %opId
  br label %327

; <label>:321:                                    ; preds = %330
  store i32 1, i32* %opId
  br label %327

; <label>:322:                                    ; preds = %330
  store i32 1, i32* %opId
  br label %327

; <label>:323:                                    ; preds = %330
  store i32 1, i32* %opId
  br label %327

; <label>:324:                                    ; preds = %330
  store i32 1, i32* %opId
  br label %327

; <label>:325:                                    ; preds = %330
  store i32 1, i32* %opId
  br label %327

; <label>:326:                                    ; preds = %330
  store i32 1, i32* %opId
  br label %327

; <label>:327:                                    ; preds = %315, %316, %317, %318, %319, %320, %321, %322, %323, %324, %325, %326, %330
  %328 = load i32, i32* %opId
  %329 = icmp sge i32 %328, 1
  br i1 %329, label %312, label %310

; <label>:330:                                    ; preds = %614
  %331 = bitcast %"adt$main.ast_expr.AstExpr.174"* %619 to %"adtc$main.ast_expr.AstExpr.BinOp"*
  %332 = getelementptr inbounds %"adtc$main.ast_expr.AstExpr.BinOp", %"adtc$main.ast_expr.AstExpr.BinOp"* %331, i32 0, i32 2
  %333 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %332
  %334 = bitcast %"adt$main.ast_expr.AstExpr.174"* %619 to %"adtc$main.ast_expr.AstExpr.BinOp"*
  %335 = getelementptr inbounds %"adtc$main.ast_expr.AstExpr.BinOp", %"adtc$main.ast_expr.AstExpr.BinOp"* %334, i32 0, i32 3
  %336 = load %"adt$main.ast_expr.BinOp.200"*, %"adt$main.ast_expr.BinOp.200"** %335
  %337 = bitcast %"adt$main.ast_expr.AstExpr.174"* %619 to %"adtc$main.ast_expr.AstExpr.BinOp"*
  %338 = getelementptr inbounds %"adtc$main.ast_expr.AstExpr.BinOp", %"adtc$main.ast_expr.AstExpr.BinOp"* %337, i32 0, i32 4
  %339 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %338
  store i32 0, i32* %opId
  %340 = getelementptr inbounds %"adt$main.ast_expr.BinOp.200", %"adt$main.ast_expr.BinOp.200"* %336, i32 0, i32 0
  %341 = load i32, i32* %340
  switch i32 %341, label %327 [
    i32 11, label %315
    i32 10, label %316
    i32 6, label %317
    i32 9, label %318
    i32 8, label %319
    i32 7, label %320
    i32 5, label %321
    i32 4, label %322
    i32 3, label %323
    i32 2, label %324
    i32 1, label %325
    i32 0, label %326
  ]

; <label>:342:                                    ; preds = %369
  %343 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %344 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %bake.ast
  %345 = getelementptr inbounds %"adt$main.ast_expr.AstExpr.174", %"adt$main.ast_expr.AstExpr.174"* %344, i32 0, i32 1
  %346 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %345
  call void @"fn$main.bytecode_compiler.BCCompilerError"(%"adt$main.bytecode_compiler.BCCompiler"* %343, %"adt$main.ast.SrcLoc.167"* %346, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @15, i32 0, i32 0))
  unreachable

; <label>:347:                                    ; preds = %361
  %348 = bitcast %"adt$main.ir.MaybeIRADTField.197"* %365 to %"adtc$main.ir.MaybeIRADTField.Just.198"*
  %349 = getelementptr inbounds %"adtc$main.ir.MaybeIRADTField.Just.198", %"adtc$main.ir.MaybeIRADTField.Just.198"* %348, i32 0, i32 1
  %350 = load %"adt$main.ir.IRADTField.199"*, %"adt$main.ir.IRADTField.199"** %349
  %351 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %352 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %351, i32 0, i32 5
  %353 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %352
  %354 = call %"adt$main.bytecode.ValueRef.168"* @"fn$main.bytecode_builder.BCBuilderReadADTField"(%"adt$main.bytecode_builder.BCBuilder"* %353, %"adt$main.bytecode.ValueRef.168"* %372, %"adt$main.ir.IRADTField.199"* %350)
  ret %"adt$main.bytecode.ValueRef.168"* %354

; <label>:355:                                    ; preds = %361
  %356 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %357 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %bake.ast
  %358 = getelementptr inbounds %"adt$main.ast_expr.AstExpr.174", %"adt$main.ast_expr.AstExpr.174"* %357, i32 0, i32 1
  %359 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %358
  call void @"fn$main.bytecode_compiler.BCCompilerError"(%"adt$main.bytecode_compiler.BCCompiler"* %356, %"adt$main.ast.SrcLoc.167"* %359, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @14, i32 0, i32 0))
  unreachable

; <label>:360:                                    ; preds = %361
  br label %368

; <label>:361:                                    ; preds = %369
  %362 = bitcast %"adt$main.ir.IRType.161"* %373 to %"adtc$main.ir.IRType.ADT.164"*
  %363 = getelementptr inbounds %"adtc$main.ir.IRType.ADT.164", %"adtc$main.ir.IRType.ADT.164"* %362, i32 0, i32 1
  %364 = load %"adt$main.ir.IRADTDecl.165"*, %"adt$main.ir.IRADTDecl.165"** %363
  %365 = call %"adt$main.ir.MaybeIRADTField.197"* @"fn$main.ir.IRADTFindField"(%"adt$main.ir.IRADTDecl.165"* %364, i8* %440)
  %366 = getelementptr inbounds %"adt$main.ir.MaybeIRADTField.197", %"adt$main.ir.MaybeIRADTField.197"* %365, i32 0, i32 0
  %367 = load i32, i32* %366
  switch i32 %367, label %360 [
    i32 1, label %347
    i32 0, label %355
  ]

; <label>:368:                                    ; preds = %360
  br label %429

; <label>:369:                                    ; preds = %434
  %370 = bitcast %"adt$main.bytecode.IndexableRef"* %443 to %"adtc$main.bytecode.IndexableRef.Value"*
  %371 = getelementptr inbounds %"adtc$main.bytecode.IndexableRef.Value", %"adtc$main.bytecode.IndexableRef.Value"* %370, i32 0, i32 1
  %372 = load %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRef.168"** %371
  %373 = call %"adt$main.ir.IRType.161"* @"fn$main.bytecode.ValueRefGetType"(%"adt$main.bytecode.ValueRef.168"* %372)
  %374 = getelementptr inbounds %"adt$main.ir.IRType.161", %"adt$main.ir.IRType.161"* %373, i32 0, i32 0
  %375 = load i32, i32* %374
  switch i32 %375, label %342 [
    i32 2, label %361
  ]

; <label>:376:                                    ; preds = %423
  %377 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %378 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %bake.ast
  %379 = getelementptr inbounds %"adt$main.ast_expr.AstExpr.174", %"adt$main.ast_expr.AstExpr.174"* %378, i32 0, i32 1
  %380 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %379
  call void @"fn$main.bytecode_compiler.BCCompilerError"(%"adt$main.bytecode_compiler.BCCompiler"* %377, %"adt$main.ast.SrcLoc.167"* %380, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @13, i32 0, i32 0))
  unreachable

; <label>:381:                                    ; preds = %400
  %382 = bitcast %"adt$main.ir.IRType.161"* %405 to %"adtc$main.ir.IRType.Function.196"*
  %383 = getelementptr inbounds %"adtc$main.ir.IRType.Function.196", %"adtc$main.ir.IRType.Function.196"* %382, i32 0, i32 1
  %384 = load %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRType.161"** %383
  %385 = bitcast %"adt$main.ir.IRType.161"* %405 to %"adtc$main.ir.IRType.Function.196"*
  %386 = getelementptr inbounds %"adtc$main.ir.IRType.Function.196", %"adtc$main.ir.IRType.Function.196"* %385, i32 0, i32 2
  %387 = load %"adt$main.ir.IRTypeList.178"*, %"adt$main.ir.IRTypeList.178"** %386
  %388 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %389 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %bake.ast
  %390 = getelementptr inbounds %"adt$main.ast_expr.AstExpr.174", %"adt$main.ast_expr.AstExpr.174"* %389, i32 0, i32 1
  %391 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %390
  %392 = call %"adt$main.ast_expr.AstExprList.177"* @"adtcfn$adtc$main.ast_expr.AstExprList.Nil"()
  %393 = call %"adt$main.bytecode.ValueRefList.179"* @"fn$main.bytecode_compiler.BCCompileArgs"(%"adt$main.bytecode_compiler.BCCompiler"* %388, %"adt$main.ast.SrcLoc.167"* %391, %"adt$main.ast_expr.AstExprList.177"* %392, %"adt$main.ir.IRTypeList.178"* %387)
  store %"adt$main.bytecode.ValueRefList.179"* %393, %"adt$main.bytecode.ValueRefList.179"** %args4
  %394 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %395 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %394, i32 0, i32 5
  %396 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %395
  %397 = load %"adt$main.bytecode.ValueRefList.179"*, %"adt$main.bytecode.ValueRefList.179"** %args4
  %398 = call %"adt$main.bytecode.ValueRef.168"* @"fn$main.bytecode_builder.BCBuilderCallConstructor"(%"adt$main.bytecode_builder.BCBuilder"* %396, %"adt$main.ir.IRADTCons.194"* %403, %"adt$main.bytecode.ValueRefList.179"* %397, %"adt$main.ir.IRType.161"* %384)
  ret %"adt$main.bytecode.ValueRef.168"* %398

; <label>:399:                                    ; preds = %400
  br label %413

; <label>:400:                                    ; preds = %414
  %401 = bitcast %"adt$main.ir.MaybeIRADTCons.185"* %419 to %"adtc$main.ir.MaybeIRADTCons.Just.193"*
  %402 = getelementptr inbounds %"adtc$main.ir.MaybeIRADTCons.Just.193", %"adtc$main.ir.MaybeIRADTCons.Just.193"* %401, i32 0, i32 1
  %403 = load %"adt$main.ir.IRADTCons.194"*, %"adt$main.ir.IRADTCons.194"** %402
  %404 = getelementptr inbounds %"adt$main.ir.IRADTCons.194", %"adt$main.ir.IRADTCons.194"* %403, i32 0, i32 6
  %405 = load %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRType.161"** %404
  %406 = getelementptr inbounds %"adt$main.ir.IRType.161", %"adt$main.ir.IRType.161"* %405, i32 0, i32 0
  %407 = load i32, i32* %406
  switch i32 %407, label %399 [
    i32 6, label %381
  ]

; <label>:408:                                    ; preds = %414
  %409 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %410 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %bake.ast
  %411 = getelementptr inbounds %"adt$main.ast_expr.AstExpr.174", %"adt$main.ast_expr.AstExpr.174"* %410, i32 0, i32 1
  %412 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %411
  call void @"fn$main.bytecode_compiler.BCCompilerError"(%"adt$main.bytecode_compiler.BCCompiler"* %409, %"adt$main.ast.SrcLoc.167"* %412, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @12, i32 0, i32 0))
  unreachable

; <label>:413:                                    ; preds = %399, %414
  br label %422

; <label>:414:                                    ; preds = %423
  %415 = bitcast %"adt$main.ir.IRSymbol.176"* %426 to %"adtc$main.ir.IRSymbol.ADT.192"*
  %416 = getelementptr inbounds %"adtc$main.ir.IRSymbol.ADT.192", %"adtc$main.ir.IRSymbol.ADT.192"* %415, i32 0, i32 4
  %417 = load %"adt$main.ir.IRADTDecl.165"*, %"adt$main.ir.IRADTDecl.165"** %416
  %418 = call %"adt$main.ir.MaybeIRADTCons.185"* @"fn$main.ir.IRADTFindConstructor"(%"adt$main.ir.IRADTDecl.165"* %417, i8* %440)
  store %"adt$main.ir.MaybeIRADTCons.185"* %418, %"adt$main.ir.MaybeIRADTCons.185"** %m_cons
  %419 = load %"adt$main.ir.MaybeIRADTCons.185"*, %"adt$main.ir.MaybeIRADTCons.185"** %m_cons
  %420 = getelementptr inbounds %"adt$main.ir.MaybeIRADTCons.185", %"adt$main.ir.MaybeIRADTCons.185"* %419, i32 0, i32 0
  %421 = load i32, i32* %420
  switch i32 %421, label %413 [
    i32 1, label %400
    i32 0, label %408
  ]

; <label>:422:                                    ; preds = %413
  br label %429

; <label>:423:                                    ; preds = %434
  %424 = bitcast %"adt$main.bytecode.IndexableRef"* %443 to %"adtc$main.bytecode.IndexableRef.Symbol"*
  %425 = getelementptr inbounds %"adtc$main.bytecode.IndexableRef.Symbol", %"adtc$main.bytecode.IndexableRef.Symbol"* %424, i32 0, i32 1
  %426 = load %"adt$main.ir.IRSymbol.176"*, %"adt$main.ir.IRSymbol.176"** %425
  %427 = getelementptr inbounds %"adt$main.ir.IRSymbol.176", %"adt$main.ir.IRSymbol.176"* %426, i32 0, i32 0
  %428 = load i32, i32* %427
  switch i32 %428, label %376 [
    i32 2, label %414
  ]

; <label>:429:                                    ; preds = %368, %422, %434
  %430 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %431 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %bake.ast
  %432 = getelementptr inbounds %"adt$main.ast_expr.AstExpr.174", %"adt$main.ast_expr.AstExpr.174"* %431, i32 0, i32 1
  %433 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %432
  call void @"fn$main.bytecode_compiler.BCCompilerError"(%"adt$main.bytecode_compiler.BCCompiler"* %430, %"adt$main.ast.SrcLoc.167"* %433, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @11, i32 0, i32 0))
  unreachable

; <label>:434:                                    ; preds = %614
  %435 = bitcast %"adt$main.ast_expr.AstExpr.174"* %619 to %"adtc$main.ast_expr.AstExpr.Dot"*
  %436 = getelementptr inbounds %"adtc$main.ast_expr.AstExpr.Dot", %"adtc$main.ast_expr.AstExpr.Dot"* %435, i32 0, i32 2
  %437 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %436
  %438 = bitcast %"adt$main.ast_expr.AstExpr.174"* %619 to %"adtc$main.ast_expr.AstExpr.Dot"*
  %439 = getelementptr inbounds %"adtc$main.ast_expr.AstExpr.Dot", %"adtc$main.ast_expr.AstExpr.Dot"* %438, i32 0, i32 3
  %440 = load i8*, i8** %439
  %441 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %442 = call %"adt$main.bytecode.IndexableRef"* @"fn$main.bytecode_compiler.BCCompileIndexableReference"(%"adt$main.bytecode_compiler.BCCompiler"* %441, %"adt$main.ast_expr.AstExpr.174"* %437)
  store %"adt$main.bytecode.IndexableRef"* %442, %"adt$main.bytecode.IndexableRef"** %ref
  %443 = load %"adt$main.bytecode.IndexableRef"*, %"adt$main.bytecode.IndexableRef"** %ref
  %444 = getelementptr inbounds %"adt$main.bytecode.IndexableRef", %"adt$main.bytecode.IndexableRef"* %443, i32 0, i32 0
  %445 = load i32, i32* %444
  switch i32 %445, label %429 [
    i32 1, label %369
    i32 0, label %423
  ]

; <label>:446:                                    ; preds = %460
  %447 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %448 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %bake.ast
  %449 = getelementptr inbounds %"adt$main.ast_expr.AstExpr.174", %"adt$main.ast_expr.AstExpr.174"* %448, i32 0, i32 1
  %450 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %449
  call void @"fn$main.bytecode_compiler.BCCompilerError"(%"adt$main.bytecode_compiler.BCCompiler"* %447, %"adt$main.ast.SrcLoc.167"* %450, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @10, i32 0, i32 0))
  unreachable

; <label>:451:                                    ; preds = %460
  %452 = bitcast %"adt$main.ir.IRSymbol.176"* %463 to %"adtc$main.ir.IRSymbol.Global.190"*
  %453 = getelementptr inbounds %"adtc$main.ir.IRSymbol.Global.190", %"adtc$main.ir.IRSymbol.Global.190"* %452, i32 0, i32 4
  %454 = load %"adt$main.ir.IRGlobalDecl.191"*, %"adt$main.ir.IRGlobalDecl.191"** %453
  %455 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %456 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %455, i32 0, i32 5
  %457 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %456
  %458 = call %"adt$main.bytecode.ValueRef.168"* @"fn$main.bytecode_builder.BCBuilderReadGlobal"(%"adt$main.bytecode_builder.BCBuilder"* %457, %"adt$main.ir.IRGlobalDecl.191"* %454)
  ret %"adt$main.bytecode.ValueRef.168"* %458
                                                  ; No predecessors!
  br label %478

; <label>:460:                                    ; preds = %493
  %461 = bitcast %"adt$main.bytecode_compiler.LocalRef"* %499 to %"adtc$main.bytecode_compiler.LocalRef.Global"*
  %462 = getelementptr inbounds %"adtc$main.bytecode_compiler.LocalRef.Global", %"adtc$main.bytecode_compiler.LocalRef.Global"* %461, i32 0, i32 1
  %463 = load %"adt$main.ir.IRSymbol.176"*, %"adt$main.ir.IRSymbol.176"** %462
  %464 = getelementptr inbounds %"adt$main.ir.IRSymbol.176", %"adt$main.ir.IRSymbol.176"* %463, i32 0, i32 0
  %465 = load i32, i32* %464
  switch i32 %465, label %446 [
    i32 1, label %451
  ]

; <label>:466:                                    ; preds = %493
  %467 = bitcast %"adt$main.bytecode_compiler.LocalRef"* %499 to %"adtc$main.bytecode_compiler.LocalRef.Variable"*
  %468 = getelementptr inbounds %"adtc$main.bytecode_compiler.LocalRef.Variable", %"adtc$main.bytecode_compiler.LocalRef.Variable"* %467, i32 0, i32 1
  %469 = load %"adt$main.bytecode.Variable.189"*, %"adt$main.bytecode.Variable.189"** %468
  %470 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %471 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %470, i32 0, i32 5
  %472 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %471
  %473 = call %"adt$main.bytecode.ValueRef.168"* @"fn$main.bytecode_builder.BCBuilderReadVariable"(%"adt$main.bytecode_builder.BCBuilder"* %472, %"adt$main.bytecode.Variable.189"* %469)
  ret %"adt$main.bytecode.ValueRef.168"* %473

; <label>:474:                                    ; preds = %493
  %475 = bitcast %"adt$main.bytecode_compiler.LocalRef"* %499 to %"adtc$main.bytecode_compiler.LocalRef.Value"*
  %476 = getelementptr inbounds %"adtc$main.bytecode_compiler.LocalRef.Value", %"adtc$main.bytecode_compiler.LocalRef.Value"* %475, i32 0, i32 1
  %477 = load %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRef.168"** %476
  ret %"adt$main.bytecode.ValueRef.168"* %477

; <label>:478:                                    ; preds = %459, %493
  br label %613

; <label>:479:                                    ; preds = %480
  br label %485

; <label>:480:                                    ; preds = %486
  br label %479

; <label>:481:                                    ; preds = %486
  %482 = call %"adt$main.ir.IRPrimType.163"* @"adtcfn$adtc$main.ir.IRPrimType.Undef"()
  %483 = call %"adt$main.ir.IRType.161"* @"adtcfn$adtc$main.ir.IRType.Prim"(%"adt$main.ir.IRPrimType.163"* %482)
  %484 = call %"adt$main.bytecode.ValueRef.168"* @"adtcfn$adtc$main.bytecode.ValueRef.Undef"(%"adt$main.ir.IRType.161"* %483)
  ret %"adt$main.bytecode.ValueRef.168"* %484

; <label>:485:                                    ; preds = %479
  br label %493

; <label>:486:                                    ; preds = %502
  %487 = call i32 @jf_string_compare(i8* %512, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @9, i32 0, i32 0))
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %481, label %480

; <label>:489:                                    ; preds = %502
  %490 = call %"adt$main.ir.IRPrimType.163"* @"adtcfn$adtc$main.ir.IRPrimType.Bool"()
  %491 = call %"adt$main.ir.IRType.161"* @"adtcfn$adtc$main.ir.IRType.Prim"(%"adt$main.ir.IRPrimType.163"* %490)
  %492 = call %"adt$main.bytecode.ValueRef.168"* @"adtcfn$adtc$main.bytecode.ValueRef.ConstBool"(i1 false, %"adt$main.ir.IRType.161"* %491)
  ret %"adt$main.bytecode.ValueRef.168"* %492

; <label>:493:                                    ; preds = %485
  %494 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %495 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %bake.ast
  %496 = getelementptr inbounds %"adt$main.ast_expr.AstExpr.174", %"adt$main.ast_expr.AstExpr.174"* %495, i32 0, i32 1
  %497 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %496
  %498 = call %"adt$main.bytecode_compiler.LocalRef"* @"fn$main.bytecode_compiler.BCCompilerResolveRef"(%"adt$main.bytecode_compiler.BCCompiler"* %494, %"adt$main.ast.SrcLoc.167"* %497, i8* %512)
  store %"adt$main.bytecode_compiler.LocalRef"* %498, %"adt$main.bytecode_compiler.LocalRef"** %ref5
  %499 = load %"adt$main.bytecode_compiler.LocalRef"*, %"adt$main.bytecode_compiler.LocalRef"** %ref5
  %500 = getelementptr inbounds %"adt$main.bytecode_compiler.LocalRef", %"adt$main.bytecode_compiler.LocalRef"* %499, i32 0, i32 0
  %501 = load i32, i32* %500
  switch i32 %501, label %478 [
    i32 2, label %460
    i32 1, label %466
    i32 0, label %474
  ]

; <label>:502:                                    ; preds = %509
  %503 = call i32 @jf_string_compare(i8* %512, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @8, i32 0, i32 0))
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %489, label %486

; <label>:505:                                    ; preds = %509
  %506 = call %"adt$main.ir.IRPrimType.163"* @"adtcfn$adtc$main.ir.IRPrimType.Bool"()
  %507 = call %"adt$main.ir.IRType.161"* @"adtcfn$adtc$main.ir.IRType.Prim"(%"adt$main.ir.IRPrimType.163"* %506)
  %508 = call %"adt$main.bytecode.ValueRef.168"* @"adtcfn$adtc$main.bytecode.ValueRef.ConstBool"(i1 true, %"adt$main.ir.IRType.161"* %507)
  ret %"adt$main.bytecode.ValueRef.168"* %508

; <label>:509:                                    ; preds = %614
  %510 = bitcast %"adt$main.ast_expr.AstExpr.174"* %619 to %"adtc$main.ast_expr.AstExpr.Id"*
  %511 = getelementptr inbounds %"adtc$main.ast_expr.AstExpr.Id", %"adtc$main.ast_expr.AstExpr.Id"* %510, i32 0, i32 2
  %512 = load i8*, i8** %511
  %513 = call i32 @jf_string_compare(i8* %512, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @7, i32 0, i32 0))
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %505, label %502

; <label>:515:                                    ; preds = %547
  %516 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %517 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %bake.ast
  %518 = getelementptr inbounds %"adt$main.ast_expr.AstExpr.174", %"adt$main.ast_expr.AstExpr.174"* %517, i32 0, i32 1
  %519 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %518
  call void @"fn$main.bytecode_compiler.BCCompilerError"(%"adt$main.bytecode_compiler.BCCompiler"* %516, %"adt$main.ast.SrcLoc.167"* %519, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @6, i32 0, i32 0))
  unreachable

; <label>:520:                                    ; preds = %539
  %521 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %522 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %bake.ast
  %523 = getelementptr inbounds %"adt$main.ast_expr.AstExpr.174", %"adt$main.ast_expr.AstExpr.174"* %522, i32 0, i32 1
  %524 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %523
  call void @"fn$main.bytecode_compiler.BCCompilerError"(%"adt$main.bytecode_compiler.BCCompiler"* %521, %"adt$main.ast.SrcLoc.167"* %524, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @5, i32 0, i32 0))
  unreachable

; <label>:525:                                    ; preds = %539
  %526 = bitcast %"adt$main.ir.IRType.161"* %543 to %"adtc$main.ir.IRType.ArrayUnsized.166"*
  %527 = getelementptr inbounds %"adtc$main.ir.IRType.ArrayUnsized.166", %"adtc$main.ir.IRType.ArrayUnsized.166"* %526, i32 0, i32 1
  %528 = load %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRType.161"** %527
  %529 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %530 = call %"adt$main.ir.IRPrimType.163"* @"adtcfn$adtc$main.ir.IRPrimType.I32"()
  %531 = call %"adt$main.ir.IRType.161"* @"adtcfn$adtc$main.ir.IRType.Prim"(%"adt$main.ir.IRPrimType.163"* %530)
  %532 = call %"adt$main.bytecode.ValueRef.168"* @"fn$main.bytecode_compiler.BCCompileExprAs"(%"adt$main.bytecode_compiler.BCCompiler"* %529, %"adt$main.ast_expr.AstExpr.174"* %553, %"adt$main.ir.IRType.161"* %531)
  store %"adt$main.bytecode.ValueRef.168"* %532, %"adt$main.bytecode.ValueRef.168"** %idx
  %533 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %534 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %533, i32 0, i32 5
  %535 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %534
  %536 = load %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRef.168"** %idx
  %537 = call %"adt$main.bytecode.ValueRef.168"* @"fn$main.bytecode_builder.BCBuilderArrayRead"(%"adt$main.bytecode_builder.BCBuilder"* %535, %"adt$main.bytecode.ValueRef.168"* %542, %"adt$main.bytecode.ValueRef.168"* %536, %"adt$main.ir.IRType.161"* %528)
  ret %"adt$main.bytecode.ValueRef.168"* %537
                                                  ; No predecessors!
  br label %546

; <label>:539:                                    ; preds = %547
  %540 = bitcast %"adt$main.bytecode.IndexableRef"* %556 to %"adtc$main.bytecode.IndexableRef.Value"*
  %541 = getelementptr inbounds %"adtc$main.bytecode.IndexableRef.Value", %"adtc$main.bytecode.IndexableRef.Value"* %540, i32 0, i32 1
  %542 = load %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRef.168"** %541
  %543 = call %"adt$main.ir.IRType.161"* @"fn$main.bytecode.ValueRefGetType"(%"adt$main.bytecode.ValueRef.168"* %542)
  %544 = getelementptr inbounds %"adt$main.ir.IRType.161", %"adt$main.ir.IRType.161"* %543, i32 0, i32 0
  %545 = load i32, i32* %544
  switch i32 %545, label %520 [
    i32 4, label %525
  ]

; <label>:546:                                    ; preds = %538
  br label %613

; <label>:547:                                    ; preds = %614
  %548 = bitcast %"adt$main.ast_expr.AstExpr.174"* %619 to %"adtc$main.ast_expr.AstExpr.Index"*
  %549 = getelementptr inbounds %"adtc$main.ast_expr.AstExpr.Index", %"adtc$main.ast_expr.AstExpr.Index"* %548, i32 0, i32 2
  %550 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %549
  %551 = bitcast %"adt$main.ast_expr.AstExpr.174"* %619 to %"adtc$main.ast_expr.AstExpr.Index"*
  %552 = getelementptr inbounds %"adtc$main.ast_expr.AstExpr.Index", %"adtc$main.ast_expr.AstExpr.Index"* %551, i32 0, i32 3
  %553 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %552
  %554 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %555 = call %"adt$main.bytecode.IndexableRef"* @"fn$main.bytecode_compiler.BCCompileIndexableReference"(%"adt$main.bytecode_compiler.BCCompiler"* %554, %"adt$main.ast_expr.AstExpr.174"* %550)
  store %"adt$main.bytecode.IndexableRef"* %555, %"adt$main.bytecode.IndexableRef"** %ref6
  %556 = load %"adt$main.bytecode.IndexableRef"*, %"adt$main.bytecode.IndexableRef"** %ref6
  %557 = getelementptr inbounds %"adt$main.bytecode.IndexableRef", %"adt$main.bytecode.IndexableRef"* %556, i32 0, i32 0
  %558 = load i32, i32* %557
  switch i32 %558, label %515 [
    i32 1, label %539
  ]

; <label>:559:                                    ; preds = %587
  %560 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %561 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %bake.ast
  %562 = getelementptr inbounds %"adt$main.ast_expr.AstExpr.174", %"adt$main.ast_expr.AstExpr.174"* %561, i32 0, i32 1
  %563 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %562
  call void @"fn$main.bytecode_compiler.BCCompilerError"(%"adt$main.bytecode_compiler.BCCompiler"* %560, %"adt$main.ast.SrcLoc.167"* %563, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @4, i32 0, i32 0))
  unreachable

; <label>:564:                                    ; preds = %587
  %565 = bitcast %"adt$main.ir.IRType.161"* %592 to %"adtc$main.ir.IRType.ArraySized.187"*
  %566 = getelementptr inbounds %"adtc$main.ir.IRType.ArraySized.187", %"adtc$main.ir.IRType.ArraySized.187"* %565, i32 0, i32 1
  %567 = load %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRType.161"** %566
  %568 = bitcast %"adt$main.ir.IRType.161"* %592 to %"adtc$main.ir.IRType.ArraySized.187"*
  %569 = getelementptr inbounds %"adtc$main.ir.IRType.ArraySized.187", %"adtc$main.ir.IRType.ArraySized.187"* %568, i32 0, i32 2
  %570 = load %"adt$main.ir.IRExprNode.188"*, %"adt$main.ir.IRExprNode.188"** %569
  %571 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %572 = getelementptr inbounds %"adt$main.ir.IRExprNode.188", %"adt$main.ir.IRExprNode.188"* %570, i32 0, i32 2
  %573 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %572
  %574 = call %"adt$main.ir.IRPrimType.163"* @"adtcfn$adtc$main.ir.IRPrimType.I32"()
  %575 = call %"adt$main.ir.IRType.161"* @"adtcfn$adtc$main.ir.IRType.Prim"(%"adt$main.ir.IRPrimType.163"* %574)
  %576 = call %"adt$main.bytecode.ValueRef.168"* @"fn$main.bytecode_compiler.BCCompileExprAs"(%"adt$main.bytecode_compiler.BCCompiler"* %571, %"adt$main.ast_expr.AstExpr.174"* %573, %"adt$main.ir.IRType.161"* %575)
  store %"adt$main.bytecode.ValueRef.168"* %576, %"adt$main.bytecode.ValueRef.168"** %sizeVal
  %577 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %578 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %577, i32 0, i32 5
  %579 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %578
  %580 = call %"adt$main.bytecode.Intrinsic.183"* @"adtcfn$adtc$main.bytecode.Intrinsic.NewArray"(%"adt$main.ir.IRType.161"* %567)
  %581 = load %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRef.168"** %sizeVal
  %582 = call %"adt$main.bytecode.ValueRefList.179"* @"adtcfn$adtc$main.bytecode.ValueRefList.Nil"()
  %583 = call %"adt$main.bytecode.ValueRefList.179"* @"adtcfn$adtc$main.bytecode.ValueRefList.Cons"(%"adt$main.bytecode.ValueRef.168"* %581, %"adt$main.bytecode.ValueRefList.179"* %582)
  %584 = call %"adt$main.ir.IRType.161"* @"adtcfn$adtc$main.ir.IRType.ArrayUnsized"(%"adt$main.ir.IRType.161"* %567)
  %585 = call %"adt$main.bytecode.ValueRef.168"* @"fn$main.bytecode_builder.BCBuilderCallIntrinsic"(%"adt$main.bytecode_builder.BCBuilder"* %579, %"adt$main.bytecode.Intrinsic.183"* %580, %"adt$main.bytecode.ValueRefList.179"* %583, %"adt$main.ir.IRType.161"* %584)
  ret %"adt$main.bytecode.ValueRef.168"* %585
                                                  ; No predecessors!
  br label %613

; <label>:587:                                    ; preds = %614
  %588 = bitcast %"adt$main.ast_expr.AstExpr.174"* %619 to %"adtc$main.ast_expr.AstExpr.New"*
  %589 = getelementptr inbounds %"adtc$main.ast_expr.AstExpr.New", %"adtc$main.ast_expr.AstExpr.New"* %588, i32 0, i32 2
  %590 = load %"adt$main.ast_type.AstType.186"*, %"adt$main.ast_type.AstType.186"** %589
  %591 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %592 = call %"adt$main.ir.IRType.161"* @"fn$main.bytecode_compiler.BCResolveType"(%"adt$main.bytecode_compiler.BCCompiler"* %591, %"adt$main.ast_type.AstType.186"* %590)
  %593 = getelementptr inbounds %"adt$main.ir.IRType.161", %"adt$main.ir.IRType.161"* %592, i32 0, i32 0
  %594 = load i32, i32* %593
  switch i32 %594, label %559 [
    i32 5, label %564
  ]

; <label>:595:                                    ; preds = %614
  %596 = bitcast %"adt$main.ast_expr.AstExpr.174"* %619 to %"adtc$main.ast_expr.AstExpr.StringLit"*
  %597 = getelementptr inbounds %"adtc$main.ast_expr.AstExpr.StringLit", %"adtc$main.ast_expr.AstExpr.StringLit"* %596, i32 0, i32 2
  %598 = load i8*, i8** %597
  %599 = call i8* @"fn$main.prelude.DecodeStr"(i8* %598)
  store i8* %599, i8** %str
  %600 = load i8*, i8** %str
  %601 = call %"adt$main.ir.IRPrimType.163"* @"adtcfn$adtc$main.ir.IRPrimType.String"()
  %602 = call %"adt$main.ir.IRType.161"* @"adtcfn$adtc$main.ir.IRType.Prim"(%"adt$main.ir.IRPrimType.163"* %601)
  %603 = call %"adt$main.bytecode.ValueRef.168"* @"adtcfn$adtc$main.bytecode.ValueRef.ConstString"(i8* %600, %"adt$main.ir.IRType.161"* %602)
  ret %"adt$main.bytecode.ValueRef.168"* %603

; <label>:604:                                    ; preds = %614
  %605 = bitcast %"adt$main.ast_expr.AstExpr.174"* %619 to %"adtc$main.ast_expr.AstExpr.NumberLit"*
  %606 = getelementptr inbounds %"adtc$main.ast_expr.AstExpr.NumberLit", %"adtc$main.ast_expr.AstExpr.NumberLit"* %605, i32 0, i32 2
  %607 = load i8*, i8** %606
  %608 = call i32 @"fn$main.prelude.StrToInt"(i8* %607)
  store i32 %608, i32* %num
  %609 = load i32, i32* %num
  %610 = call %"adt$main.ir.IRPrimType.163"* @"adtcfn$adtc$main.ir.IRPrimType.I32"()
  %611 = call %"adt$main.ir.IRType.161"* @"adtcfn$adtc$main.ir.IRType.Prim"(%"adt$main.ir.IRPrimType.163"* %610)
  %612 = call %"adt$main.bytecode.ValueRef.168"* @"adtcfn$adtc$main.bytecode.ValueRef.ConstNum"(i32 %609, %"adt$main.ir.IRType.161"* %611)
  ret %"adt$main.bytecode.ValueRef.168"* %612

; <label>:613:                                    ; preds = %38, %478, %546, %586, %614
  unreachable

; <label>:614:                                    ; preds = %entry
  %615 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %616 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %bake.ast
  %617 = getelementptr inbounds %"adt$main.ast_expr.AstExpr.174", %"adt$main.ast_expr.AstExpr.174"* %616, i32 0, i32 1
  %618 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %617
  call void @"fn$main.bytecode_compiler.Loc"(%"adt$main.bytecode_compiler.BCCompiler"* %615, %"adt$main.ast.SrcLoc.167"* %618)
  %619 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %bake.ast
  %620 = getelementptr inbounds %"adt$main.ast_expr.AstExpr.174", %"adt$main.ast_expr.AstExpr.174"* %619, i32 0, i32 0
  %621 = load i32, i32* %620
  switch i32 %621, label %613 [
    i32 3, label %39
    i32 5, label %330
    i32 1, label %434
    i32 0, label %509
    i32 4, label %547
    i32 2, label %587
    i32 6, label %595
    i32 7, label %604
  ]
}

define %"adt$main.bytecode.ValueRef.168"* @"fn$main.bytecode_compiler.BCCompileExprNoHint"(%"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.ast_expr.AstExpr.174"* %ast) {
entry:
  %bake.ast = alloca %"adt$main.ast_expr.AstExpr.174"*
  %bake.bc = alloca %"adt$main.bytecode_compiler.BCCompiler"*
  store %"adt$main.ast_expr.AstExpr.174"* %ast, %"adt$main.ast_expr.AstExpr.174"** %bake.ast
  store %"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  br label %0

; <label>:0:                                      ; preds = %entry
  %1 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %2 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %bake.ast
  %3 = call %"adt$main.ir.MaybeIRType.175"* @"adtcfn$adtc$main.ir.MaybeIRType.Nothing"()
  %4 = call %"adt$main.bytecode.ValueRef.168"* @"fn$main.bytecode_compiler.BCCompileExpr"(%"adt$main.bytecode_compiler.BCCompiler"* %1, %"adt$main.ast_expr.AstExpr.174"* %2, %"adt$main.ir.MaybeIRType.175"* %3)
  ret %"adt$main.bytecode.ValueRef.168"* %4
}

declare %"adt$main.ir.MaybeIRType.175"* @"adtcfn$adtc$main.ir.MaybeIRType.Nothing"()

define %"adt$main.bytecode_compiler.LocalRef"* @"fn$main.bytecode_compiler.BCCompilerResolveGlobal"(%"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.ast.SrcLoc.167"* %loc, i8* %id, %"adt$main.bytecode_compiler.Scope"* %scope) {
entry:
  %ref = alloca %"adt$main.bytecode_compiler.LocalRef"*
  %symbol = alloca %"adt$main.ir.IRSymbol.176"*
  %bake.scope = alloca %"adt$main.bytecode_compiler.Scope"*
  %bake.id = alloca i8*
  %bake.loc = alloca %"adt$main.ast.SrcLoc.167"*
  %bake.bc = alloca %"adt$main.bytecode_compiler.BCCompiler"*
  store %"adt$main.bytecode_compiler.Scope"* %scope, %"adt$main.bytecode_compiler.Scope"** %bake.scope
  store i8* %id, i8** %bake.id
  store %"adt$main.ast.SrcLoc.167"* %loc, %"adt$main.ast.SrcLoc.167"** %bake.loc
  store %"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  br label %0

; <label>:0:                                      ; preds = %entry
  %1 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %2 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %1, i32 0, i32 7
  %3 = load %"adt$main.ir_compiler.IRCompiler.173"*, %"adt$main.ir_compiler.IRCompiler.173"** %2
  %4 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %bake.loc
  %5 = load i8*, i8** %bake.id
  %6 = call %"adt$main.ir.IRSymbol.176"* @"fn$main.ir_compiler.IRResolveGlobalSymbol"(%"adt$main.ir_compiler.IRCompiler.173"* %3, %"adt$main.ast.SrcLoc.167"* %4, i8* %5)
  store %"adt$main.ir.IRSymbol.176"* %6, %"adt$main.ir.IRSymbol.176"** %symbol
  %7 = load %"adt$main.ir.IRSymbol.176"*, %"adt$main.ir.IRSymbol.176"** %symbol
  %8 = call %"adt$main.bytecode_compiler.LocalRef"* @"adtcfn$adtc$main.bytecode_compiler.LocalRef.Global"(%"adt$main.ir.IRSymbol.176"* %7)
  store %"adt$main.bytecode_compiler.LocalRef"* %8, %"adt$main.bytecode_compiler.LocalRef"** %ref
  %9 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %bake.scope
  %10 = load i8*, i8** %bake.id
  %11 = load %"adt$main.bytecode_compiler.LocalRef"*, %"adt$main.bytecode_compiler.LocalRef"** %ref
  %12 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %bake.scope
  %13 = getelementptr inbounds %"adt$main.bytecode_compiler.Scope", %"adt$main.bytecode_compiler.Scope"* %12, i32 0, i32 3
  %14 = load %"adt$main.bytecode_compiler.ScopeBinding"*, %"adt$main.bytecode_compiler.ScopeBinding"** %13
  %15 = call %"adt$main.bytecode_compiler.ScopeBinding"* @"adtcfn$adtc$main.bytecode_compiler.ScopeBinding.Binding"(i8* %10, %"adt$main.bytecode_compiler.LocalRef"* %11, %"adt$main.bytecode_compiler.ScopeBinding"* %14)
  %16 = getelementptr inbounds %"adt$main.bytecode_compiler.Scope", %"adt$main.bytecode_compiler.Scope"* %9, i32 0, i32 3
  store %"adt$main.bytecode_compiler.ScopeBinding"* %15, %"adt$main.bytecode_compiler.ScopeBinding"** %16
  %17 = load %"adt$main.bytecode_compiler.LocalRef"*, %"adt$main.bytecode_compiler.LocalRef"** %ref
  ret %"adt$main.bytecode_compiler.LocalRef"* %17
}

declare %"adt$main.ir.IRSymbol.176"* @"fn$main.ir_compiler.IRResolveGlobalSymbol"(%"adt$main.ir_compiler.IRCompiler.173"*, %"adt$main.ast.SrcLoc.167"*, i8*)

define %"adt$main.bytecode_compiler.LocalRef"* @"adtcfn$adtc$main.bytecode_compiler.LocalRef.Global"(%"adt$main.ir.IRSymbol.176"* %symbol) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode_compiler.LocalRef.Global"* getelementptr (%"adtc$main.bytecode_compiler.LocalRef.Global", %"adtc$main.bytecode_compiler.LocalRef.Global"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode_compiler.LocalRef.Global"*
  %2 = getelementptr inbounds %"adtc$main.bytecode_compiler.LocalRef.Global", %"adtc$main.bytecode_compiler.LocalRef.Global"* %1, i32 0, i32 0
  store i32 2, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode_compiler.LocalRef.Global", %"adtc$main.bytecode_compiler.LocalRef.Global"* %1, i32 0, i32 1
  store %"adt$main.ir.IRSymbol.176"* %symbol, %"adt$main.ir.IRSymbol.176"** %3
  %4 = bitcast %"adtc$main.bytecode_compiler.LocalRef.Global"* %1 to %"adt$main.bytecode_compiler.LocalRef"*
  ret %"adt$main.bytecode_compiler.LocalRef"* %4
}

define %"adt$main.bytecode_compiler.ScopeBinding"* @"adtcfn$adtc$main.bytecode_compiler.ScopeBinding.Binding"(i8* %name, %"adt$main.bytecode_compiler.LocalRef"* %ref, %"adt$main.bytecode_compiler.ScopeBinding"* %next) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode_compiler.ScopeBinding.Binding"* getelementptr (%"adtc$main.bytecode_compiler.ScopeBinding.Binding", %"adtc$main.bytecode_compiler.ScopeBinding.Binding"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode_compiler.ScopeBinding.Binding"*
  %2 = getelementptr inbounds %"adtc$main.bytecode_compiler.ScopeBinding.Binding", %"adtc$main.bytecode_compiler.ScopeBinding.Binding"* %1, i32 0, i32 0
  store i32 1, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode_compiler.ScopeBinding.Binding", %"adtc$main.bytecode_compiler.ScopeBinding.Binding"* %1, i32 0, i32 1
  store i8* %name, i8** %3
  %4 = getelementptr inbounds %"adtc$main.bytecode_compiler.ScopeBinding.Binding", %"adtc$main.bytecode_compiler.ScopeBinding.Binding"* %1, i32 0, i32 2
  store %"adt$main.bytecode_compiler.LocalRef"* %ref, %"adt$main.bytecode_compiler.LocalRef"** %4
  %5 = getelementptr inbounds %"adtc$main.bytecode_compiler.ScopeBinding.Binding", %"adtc$main.bytecode_compiler.ScopeBinding.Binding"* %1, i32 0, i32 3
  store %"adt$main.bytecode_compiler.ScopeBinding"* %next, %"adt$main.bytecode_compiler.ScopeBinding"** %5
  %6 = bitcast %"adtc$main.bytecode_compiler.ScopeBinding.Binding"* %1 to %"adt$main.bytecode_compiler.ScopeBinding"*
  ret %"adt$main.bytecode_compiler.ScopeBinding"* %6
}

define %"adt$main.bytecode_compiler.LocalRef"* @"fn$main.bytecode_compiler.BCCompilerResolveRefInScope"(%"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.ast.SrcLoc.167"* %loc, i8* %id, %"adt$main.bytecode_compiler.Scope"* %scope) {
entry:
  %binding = alloca %"adt$main.bytecode_compiler.ScopeBinding"*
  %bake.scope = alloca %"adt$main.bytecode_compiler.Scope"*
  %bake.id = alloca i8*
  %bake.loc = alloca %"adt$main.ast.SrcLoc.167"*
  %bake.bc = alloca %"adt$main.bytecode_compiler.BCCompiler"*
  store %"adt$main.bytecode_compiler.Scope"* %scope, %"adt$main.bytecode_compiler.Scope"** %bake.scope
  store i8* %id, i8** %bake.id
  store %"adt$main.ast.SrcLoc.167"* %loc, %"adt$main.ast.SrcLoc.167"** %bake.loc
  store %"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  br label %49

; <label>:0:                                      ; preds = %1
  store %"adt$main.bytecode_compiler.ScopeBinding"* %12, %"adt$main.bytecode_compiler.ScopeBinding"** %binding
  br label %42

; <label>:1:                                      ; preds = %3
  br label %0

; <label>:2:                                      ; preds = %3
  ret %"adt$main.bytecode_compiler.LocalRef"* %9

; <label>:3:                                      ; preds = %44
  %4 = bitcast %"adt$main.bytecode_compiler.ScopeBinding"* %45 to %"adtc$main.bytecode_compiler.ScopeBinding.Binding"*
  %5 = getelementptr inbounds %"adtc$main.bytecode_compiler.ScopeBinding.Binding", %"adtc$main.bytecode_compiler.ScopeBinding.Binding"* %4, i32 0, i32 1
  %6 = load i8*, i8** %5
  %7 = bitcast %"adt$main.bytecode_compiler.ScopeBinding"* %45 to %"adtc$main.bytecode_compiler.ScopeBinding.Binding"*
  %8 = getelementptr inbounds %"adtc$main.bytecode_compiler.ScopeBinding.Binding", %"adtc$main.bytecode_compiler.ScopeBinding.Binding"* %7, i32 0, i32 2
  %9 = load %"adt$main.bytecode_compiler.LocalRef"*, %"adt$main.bytecode_compiler.LocalRef"** %8
  %10 = bitcast %"adt$main.bytecode_compiler.ScopeBinding"* %45 to %"adtc$main.bytecode_compiler.ScopeBinding.Binding"*
  %11 = getelementptr inbounds %"adtc$main.bytecode_compiler.ScopeBinding.Binding", %"adtc$main.bytecode_compiler.ScopeBinding.Binding"* %10, i32 0, i32 3
  %12 = load %"adt$main.bytecode_compiler.ScopeBinding"*, %"adt$main.bytecode_compiler.ScopeBinding"** %11
  %13 = load i8*, i8** %bake.id
  %14 = call i32 @jf_string_compare(i8* %6, i8* %13)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %2, label %1

; <label>:16:                                     ; preds = %17
  br label %42

; <label>:17:                                     ; preds = %30
  %18 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %bake.scope
  %19 = getelementptr inbounds %"adt$main.bytecode_compiler.Scope", %"adt$main.bytecode_compiler.Scope"* %18, i32 0, i32 2
  %20 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %19
  store %"adt$main.bytecode_compiler.Scope"* %20, %"adt$main.bytecode_compiler.Scope"** %bake.scope
  %21 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %bake.scope
  %22 = getelementptr inbounds %"adt$main.bytecode_compiler.Scope", %"adt$main.bytecode_compiler.Scope"* %21, i32 0, i32 3
  %23 = load %"adt$main.bytecode_compiler.ScopeBinding"*, %"adt$main.bytecode_compiler.ScopeBinding"** %22
  store %"adt$main.bytecode_compiler.ScopeBinding"* %23, %"adt$main.bytecode_compiler.ScopeBinding"** %binding
  br label %16

; <label>:24:                                     ; preds = %30
  %25 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %26 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %bake.loc
  %27 = load i8*, i8** %bake.id
  %28 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %bake.scope
  %29 = call %"adt$main.bytecode_compiler.LocalRef"* @"fn$main.bytecode_compiler.BCCompilerResolveGlobal"(%"adt$main.bytecode_compiler.BCCompiler"* %25, %"adt$main.ast.SrcLoc.167"* %26, i8* %27, %"adt$main.bytecode_compiler.Scope"* %28)
  ret %"adt$main.bytecode_compiler.LocalRef"* %29

; <label>:30:                                     ; preds = %44
  %31 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %bake.scope
  %32 = getelementptr inbounds %"adt$main.bytecode_compiler.Scope", %"adt$main.bytecode_compiler.Scope"* %31, i32 0, i32 2
  %33 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %32
  %34 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %bake.scope
  %35 = bitcast %"adt$main.bytecode_compiler.Scope"* %33 to i8*
  %36 = bitcast %"adt$main.bytecode_compiler.Scope"* %34 to i8*
  %37 = ptrtoint i8* %35 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  %40 = sdiv exact i64 %39, ptrtoint (i8* getelementptr (i8, i8* null, i32 1) to i64)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %24, label %17

; <label>:42:                                     ; preds = %0, %16, %44
  br label %48
                                                  ; No predecessors!
  unreachable

; <label>:44:                                     ; preds = %48
  %45 = load %"adt$main.bytecode_compiler.ScopeBinding"*, %"adt$main.bytecode_compiler.ScopeBinding"** %binding
  %46 = getelementptr inbounds %"adt$main.bytecode_compiler.ScopeBinding", %"adt$main.bytecode_compiler.ScopeBinding"* %45, i32 0, i32 0
  %47 = load i32, i32* %46
  switch i32 %47, label %42 [
    i32 1, label %3
    i32 0, label %30
  ]

; <label>:48:                                     ; preds = %42, %49
  br label %44

; <label>:49:                                     ; preds = %entry
  %50 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %bake.scope
  %51 = getelementptr inbounds %"adt$main.bytecode_compiler.Scope", %"adt$main.bytecode_compiler.Scope"* %50, i32 0, i32 3
  %52 = load %"adt$main.bytecode_compiler.ScopeBinding"*, %"adt$main.bytecode_compiler.ScopeBinding"** %51
  store %"adt$main.bytecode_compiler.ScopeBinding"* %52, %"adt$main.bytecode_compiler.ScopeBinding"** %binding
  br label %48
}

declare i32 @jf_string_compare(i8*, i8*)

define %"adt$main.bytecode_compiler.LocalRef"* @"fn$main.bytecode_compiler.BCCompilerResolveRef"(%"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.ast.SrcLoc.167"* %loc, i8* %id) {
entry:
  %bake.id = alloca i8*
  %bake.loc = alloca %"adt$main.ast.SrcLoc.167"*
  %bake.bc = alloca %"adt$main.bytecode_compiler.BCCompiler"*
  store i8* %id, i8** %bake.id
  store %"adt$main.ast.SrcLoc.167"* %loc, %"adt$main.ast.SrcLoc.167"** %bake.loc
  store %"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  br label %0

; <label>:0:                                      ; preds = %entry
  %1 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %2 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %bake.loc
  %3 = load i8*, i8** %bake.id
  %4 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %5 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %4, i32 0, i32 8
  %6 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %5
  %7 = call %"adt$main.bytecode_compiler.LocalRef"* @"fn$main.bytecode_compiler.BCCompilerResolveRefInScope"(%"adt$main.bytecode_compiler.BCCompiler"* %1, %"adt$main.ast.SrcLoc.167"* %2, i8* %3, %"adt$main.bytecode_compiler.Scope"* %6)
  ret %"adt$main.bytecode_compiler.LocalRef"* %7
}

define %"adt$main.bytecode.ValueRefList.179"* @"fn$main.bytecode_compiler.BCCompileArgs"(%"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.ast.SrcLoc.167"* %loc, %"adt$main.ast_expr.AstExprList.177"* %args, %"adt$main.ir.IRTypeList.178"* %params) {
entry:
  %bake.params = alloca %"adt$main.ir.IRTypeList.178"*
  %bake.args = alloca %"adt$main.ast_expr.AstExprList.177"*
  %bake.loc = alloca %"adt$main.ast.SrcLoc.167"*
  %bake.bc = alloca %"adt$main.bytecode_compiler.BCCompiler"*
  store %"adt$main.ir.IRTypeList.178"* %params, %"adt$main.ir.IRTypeList.178"** %bake.params
  store %"adt$main.ast_expr.AstExprList.177"* %args, %"adt$main.ast_expr.AstExprList.177"** %bake.args
  store %"adt$main.ast.SrcLoc.167"* %loc, %"adt$main.ast.SrcLoc.167"** %bake.loc
  store %"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  br label %51

; <label>:0:                                      ; preds = %18
  %1 = bitcast %"adt$main.ir.IRTypeList.178"* %25 to %"adtc$main.ir.IRTypeList.Cons.180"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRTypeList.Cons.180", %"adtc$main.ir.IRTypeList.Cons.180"* %1, i32 0, i32 1
  %3 = load %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRType.161"** %2
  %4 = bitcast %"adt$main.ir.IRTypeList.178"* %25 to %"adtc$main.ir.IRTypeList.Cons.180"*
  %5 = getelementptr inbounds %"adtc$main.ir.IRTypeList.Cons.180", %"adtc$main.ir.IRTypeList.Cons.180"* %4, i32 0, i32 2
  %6 = load %"adt$main.ir.IRTypeList.178"*, %"adt$main.ir.IRTypeList.178"** %5
  %7 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %8 = call %"adt$main.bytecode.ValueRef.168"* @"fn$main.bytecode_compiler.BCCompileExprAs"(%"adt$main.bytecode_compiler.BCCompiler"* %7, %"adt$main.ast_expr.AstExpr.174"* %21, %"adt$main.ir.IRType.161"* %3)
  %9 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %10 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %bake.loc
  %11 = call %"adt$main.bytecode.ValueRefList.179"* @"fn$main.bytecode_compiler.BCCompileArgs"(%"adt$main.bytecode_compiler.BCCompiler"* %9, %"adt$main.ast.SrcLoc.167"* %10, %"adt$main.ast_expr.AstExprList.177"* %24, %"adt$main.ir.IRTypeList.178"* %6)
  %12 = call %"adt$main.bytecode.ValueRefList.179"* @"adtcfn$adtc$main.bytecode.ValueRefList.Cons"(%"adt$main.bytecode.ValueRef.168"* %8, %"adt$main.bytecode.ValueRefList.179"* %11)
  ret %"adt$main.bytecode.ValueRefList.179"* %12

; <label>:13:                                     ; preds = %18
  %14 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %15 = getelementptr inbounds %"adt$main.ast_expr.AstExpr.174", %"adt$main.ast_expr.AstExpr.174"* %21, i32 0, i32 1
  %16 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %15
  call void @"fn$main.bytecode_compiler.BCCompilerError"(%"adt$main.bytecode_compiler.BCCompiler"* %14, %"adt$main.ast.SrcLoc.167"* %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @3, i32 0, i32 0))
  unreachable

; <label>:17:                                     ; preds = %18
  br label %44

; <label>:18:                                     ; preds = %46
  %19 = bitcast %"adt$main.ast_expr.AstExprList.177"* %47 to %"adtc$main.ast_expr.AstExprList.Cons"*
  %20 = getelementptr inbounds %"adtc$main.ast_expr.AstExprList.Cons", %"adtc$main.ast_expr.AstExprList.Cons"* %19, i32 0, i32 1
  %21 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %20
  %22 = bitcast %"adt$main.ast_expr.AstExprList.177"* %47 to %"adtc$main.ast_expr.AstExprList.Cons"*
  %23 = getelementptr inbounds %"adtc$main.ast_expr.AstExprList.Cons", %"adtc$main.ast_expr.AstExprList.Cons"* %22, i32 0, i32 2
  %24 = load %"adt$main.ast_expr.AstExprList.177"*, %"adt$main.ast_expr.AstExprList.177"** %23
  %25 = load %"adt$main.ir.IRTypeList.178"*, %"adt$main.ir.IRTypeList.178"** %bake.params
  %26 = getelementptr inbounds %"adt$main.ir.IRTypeList.178", %"adt$main.ir.IRTypeList.178"* %25, i32 0, i32 0
  %27 = load i32, i32* %26
  switch i32 %27, label %17 [
    i32 1, label %0
    i32 0, label %13
  ]

; <label>:28:                                     ; preds = %40
  %29 = bitcast %"adt$main.ir.IRTypeList.178"* %41 to %"adtc$main.ir.IRTypeList.Cons.180"*
  %30 = getelementptr inbounds %"adtc$main.ir.IRTypeList.Cons.180", %"adtc$main.ir.IRTypeList.Cons.180"* %29, i32 0, i32 1
  %31 = load %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRType.161"** %30
  %32 = bitcast %"adt$main.ir.IRTypeList.178"* %41 to %"adtc$main.ir.IRTypeList.Cons.180"*
  %33 = getelementptr inbounds %"adtc$main.ir.IRTypeList.Cons.180", %"adtc$main.ir.IRTypeList.Cons.180"* %32, i32 0, i32 2
  %34 = load %"adt$main.ir.IRTypeList.178"*, %"adt$main.ir.IRTypeList.178"** %33
  %35 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %36 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %bake.loc
  call void @"fn$main.bytecode_compiler.BCCompilerError"(%"adt$main.bytecode_compiler.BCCompiler"* %35, %"adt$main.ast.SrcLoc.167"* %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0))
  unreachable

; <label>:37:                                     ; preds = %40
  %38 = call %"adt$main.bytecode.ValueRefList.179"* @"adtcfn$adtc$main.bytecode.ValueRefList.Nil"()
  ret %"adt$main.bytecode.ValueRefList.179"* %38

; <label>:39:                                     ; preds = %40
  br label %44

; <label>:40:                                     ; preds = %46
  %41 = load %"adt$main.ir.IRTypeList.178"*, %"adt$main.ir.IRTypeList.178"** %bake.params
  %42 = getelementptr inbounds %"adt$main.ir.IRTypeList.178", %"adt$main.ir.IRTypeList.178"* %41, i32 0, i32 0
  %43 = load i32, i32* %42
  switch i32 %43, label %39 [
    i32 1, label %28
    i32 0, label %37
  ]

; <label>:44:                                     ; preds = %17, %39, %46
  br label %50
                                                  ; No predecessors!
  unreachable

; <label>:46:                                     ; preds = %50
  %47 = load %"adt$main.ast_expr.AstExprList.177"*, %"adt$main.ast_expr.AstExprList.177"** %bake.args
  %48 = getelementptr inbounds %"adt$main.ast_expr.AstExprList.177", %"adt$main.ast_expr.AstExprList.177"* %47, i32 0, i32 0
  %49 = load i32, i32* %48
  switch i32 %49, label %44 [
    i32 1, label %18
    i32 0, label %40
  ]

; <label>:50:                                     ; preds = %44, %51
  br label %46

; <label>:51:                                     ; preds = %entry
  br label %50
}

declare %"adt$main.bytecode.ValueRefList.179"* @"adtcfn$adtc$main.bytecode.ValueRefList.Nil"()

declare %"adt$main.bytecode.ValueRefList.179"* @"adtcfn$adtc$main.bytecode.ValueRefList.Cons"(%"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRefList.179"*)

define void @"fn$main.bytecode_compiler.Loc"(%"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.ast.SrcLoc.167"* %loc) {
entry:
  %bake.loc = alloca %"adt$main.ast.SrcLoc.167"*
  %bake.bc = alloca %"adt$main.bytecode_compiler.BCCompiler"*
  store %"adt$main.ast.SrcLoc.167"* %loc, %"adt$main.ast.SrcLoc.167"** %bake.loc
  store %"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  br label %0

; <label>:0:                                      ; preds = %entry
  %1 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %2 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %1, i32 0, i32 5
  %3 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %2
  %4 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %5 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %bake.loc
  %6 = call %"adt$main.bytecode.DebugLoc.202"* @"fn$main.bytecode_compiler.DbgLocCreate"(%"adt$main.bytecode_compiler.BCCompiler"* %4, %"adt$main.ast.SrcLoc.167"* %5)
  call void @"fn$main.bytecode_builder.BCBuilderSetDebugLoc"(%"adt$main.bytecode_builder.BCBuilder"* %3, %"adt$main.bytecode.DebugLoc.202"* %6)
  ret void
}

declare i32 @"fn$main.prelude.StrToInt"(i8*)

declare %"adt$main.ir.IRPrimType.163"* @"adtcfn$adtc$main.ir.IRPrimType.I32"()

declare %"adt$main.ir.IRType.161"* @"adtcfn$adtc$main.ir.IRType.Prim"(%"adt$main.ir.IRPrimType.163"*)

declare %"adt$main.bytecode.ValueRef.168"* @"adtcfn$adtc$main.bytecode.ValueRef.ConstNum"(i32, %"adt$main.ir.IRType.161"*)

declare i8* @"fn$main.prelude.DecodeStr"(i8*)

declare %"adt$main.ir.IRPrimType.163"* @"adtcfn$adtc$main.ir.IRPrimType.String"()

declare %"adt$main.bytecode.ValueRef.168"* @"adtcfn$adtc$main.bytecode.ValueRef.ConstString"(i8*, %"adt$main.ir.IRType.161"*)

define %"adt$main.ir.IRType.161"* @"fn$main.bytecode_compiler.BCResolveType"(%"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.ast_type.AstType.186"* %ast) {
entry:
  %type = alloca %"adt$main.ir.IRType.161"*
  %bake.ast = alloca %"adt$main.ast_type.AstType.186"*
  %bake.bc = alloca %"adt$main.bytecode_compiler.BCCompiler"*
  store %"adt$main.ast_type.AstType.186"* %ast, %"adt$main.ast_type.AstType.186"** %bake.ast
  store %"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  br label %0

; <label>:0:                                      ; preds = %entry
  %1 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %2 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %1, i32 0, i32 6
  %3 = load %"adt$main.ir_builder.IRBuilder.172"*, %"adt$main.ir_builder.IRBuilder.172"** %2
  %4 = load %"adt$main.ast_type.AstType.186"*, %"adt$main.ast_type.AstType.186"** %bake.ast
  %5 = call %"adt$main.ir.IRType.161"* @"fn$main.ir_builder.IRBuildType"(%"adt$main.ir_builder.IRBuilder.172"* %3, %"adt$main.ast_type.AstType.186"* %4)
  store %"adt$main.ir.IRType.161"* %5, %"adt$main.ir.IRType.161"** %type
  %6 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %7 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %6, i32 0, i32 7
  %8 = load %"adt$main.ir_compiler.IRCompiler.173"*, %"adt$main.ir_compiler.IRCompiler.173"** %7
  %9 = load %"adt$main.ast_type.AstType.186"*, %"adt$main.ast_type.AstType.186"** %bake.ast
  %10 = getelementptr inbounds %"adt$main.ast_type.AstType.186", %"adt$main.ast_type.AstType.186"* %9, i32 0, i32 1
  %11 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %10
  %12 = load %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRType.161"** %type
  %13 = call %"adt$main.ir.IRType.161"* @"fn$main.ir_compiler.IRCompileType"(%"adt$main.ir_compiler.IRCompiler.173"* %8, %"adt$main.ast.SrcLoc.167"* %11, %"adt$main.ir.IRType.161"* %12)
  store %"adt$main.ir.IRType.161"* %13, %"adt$main.ir.IRType.161"** %type
  %14 = load %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRType.161"** %type
  ret %"adt$main.ir.IRType.161"* %14
}

declare %"adt$main.bytecode.Intrinsic.183"* @"adtcfn$adtc$main.bytecode.Intrinsic.NewArray"(%"adt$main.ir.IRType.161"*)

declare %"adt$main.ir.IRType.161"* @"adtcfn$adtc$main.ir.IRType.ArrayUnsized"(%"adt$main.ir.IRType.161"*)

declare %"adt$main.bytecode.ValueRef.168"* @"fn$main.bytecode_builder.BCBuilderCallIntrinsic"(%"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode.Intrinsic.183"*, %"adt$main.bytecode.ValueRefList.179"*, %"adt$main.ir.IRType.161"*)

define %"adt$main.bytecode.IndexableRef"* @"fn$main.bytecode_compiler.BCCompileIndexableReference"(%"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.ast_expr.AstExpr.174"* %ast) {
entry:
  %ref = alloca %"adt$main.bytecode_compiler.LocalRef"*
  %bake.ast = alloca %"adt$main.ast_expr.AstExpr.174"*
  %bake.bc = alloca %"adt$main.bytecode_compiler.BCCompiler"*
  store %"adt$main.ast_expr.AstExpr.174"* %ast, %"adt$main.ast_expr.AstExpr.174"** %bake.ast
  store %"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  br label %27

; <label>:0:                                      ; preds = %3
  %1 = call %"adt$main.bytecode.IndexableRef"* @"adtcfn$adtc$main.bytecode.IndexableRef.Symbol"(%"adt$main.ir.IRSymbol.176"* %6)
  ret %"adt$main.bytecode.IndexableRef"* %1

; <label>:2:                                      ; preds = %3
  br label %9

; <label>:3:                                      ; preds = %10
  %4 = bitcast %"adt$main.bytecode_compiler.LocalRef"* %19 to %"adtc$main.bytecode_compiler.LocalRef.Global"*
  %5 = getelementptr inbounds %"adtc$main.bytecode_compiler.LocalRef.Global", %"adtc$main.bytecode_compiler.LocalRef.Global"* %4, i32 0, i32 1
  %6 = load %"adt$main.ir.IRSymbol.176"*, %"adt$main.ir.IRSymbol.176"** %5
  %7 = getelementptr inbounds %"adt$main.ir.IRSymbol.176", %"adt$main.ir.IRSymbol.176"* %6, i32 0, i32 0
  %8 = load i32, i32* %7
  switch i32 %8, label %2 [
    i32 2, label %0
  ]

; <label>:9:                                      ; preds = %2, %10
  br label %22

; <label>:10:                                     ; preds = %27
  %11 = bitcast %"adt$main.ast_expr.AstExpr.174"* %32 to %"adtc$main.ast_expr.AstExpr.Id"*
  %12 = getelementptr inbounds %"adtc$main.ast_expr.AstExpr.Id", %"adtc$main.ast_expr.AstExpr.Id"* %11, i32 0, i32 2
  %13 = load i8*, i8** %12
  %14 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %15 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %bake.ast
  %16 = getelementptr inbounds %"adt$main.ast_expr.AstExpr.174", %"adt$main.ast_expr.AstExpr.174"* %15, i32 0, i32 1
  %17 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %16
  %18 = call %"adt$main.bytecode_compiler.LocalRef"* @"fn$main.bytecode_compiler.BCCompilerResolveRef"(%"adt$main.bytecode_compiler.BCCompiler"* %14, %"adt$main.ast.SrcLoc.167"* %17, i8* %13)
  store %"adt$main.bytecode_compiler.LocalRef"* %18, %"adt$main.bytecode_compiler.LocalRef"** %ref
  %19 = load %"adt$main.bytecode_compiler.LocalRef"*, %"adt$main.bytecode_compiler.LocalRef"** %ref
  %20 = getelementptr inbounds %"adt$main.bytecode_compiler.LocalRef", %"adt$main.bytecode_compiler.LocalRef"* %19, i32 0, i32 0
  %21 = load i32, i32* %20
  switch i32 %21, label %9 [
    i32 2, label %3
  ]

; <label>:22:                                     ; preds = %9, %27
  %23 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %24 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %bake.ast
  %25 = call %"adt$main.bytecode.ValueRef.168"* @"fn$main.bytecode_compiler.BCCompileExprNoHint"(%"adt$main.bytecode_compiler.BCCompiler"* %23, %"adt$main.ast_expr.AstExpr.174"* %24)
  %26 = call %"adt$main.bytecode.IndexableRef"* @"adtcfn$adtc$main.bytecode.IndexableRef.Value"(%"adt$main.bytecode.ValueRef.168"* %25)
  ret %"adt$main.bytecode.IndexableRef"* %26

; <label>:27:                                     ; preds = %entry
  %28 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %29 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %bake.ast
  %30 = getelementptr inbounds %"adt$main.ast_expr.AstExpr.174", %"adt$main.ast_expr.AstExpr.174"* %29, i32 0, i32 1
  %31 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %30
  call void @"fn$main.bytecode_compiler.Loc"(%"adt$main.bytecode_compiler.BCCompiler"* %28, %"adt$main.ast.SrcLoc.167"* %31)
  %32 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %bake.ast
  %33 = getelementptr inbounds %"adt$main.ast_expr.AstExpr.174", %"adt$main.ast_expr.AstExpr.174"* %32, i32 0, i32 0
  %34 = load i32, i32* %33
  switch i32 %34, label %22 [
    i32 0, label %10
  ]
}

declare %"adt$main.bytecode.ValueRef.168"* @"fn$main.bytecode_builder.BCBuilderArrayRead"(%"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRef.168"*, %"adt$main.ir.IRType.161"*)

declare %"adt$main.ir.IRPrimType.163"* @"adtcfn$adtc$main.ir.IRPrimType.Bool"()

declare %"adt$main.bytecode.ValueRef.168"* @"adtcfn$adtc$main.bytecode.ValueRef.ConstBool"(i1, %"adt$main.ir.IRType.161"*)

declare %"adt$main.ir.IRPrimType.163"* @"adtcfn$adtc$main.ir.IRPrimType.Undef"()

declare %"adt$main.bytecode.ValueRef.168"* @"fn$main.bytecode_builder.BCBuilderReadVariable"(%"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode.Variable.189"*)

declare %"adt$main.bytecode.ValueRef.168"* @"fn$main.bytecode_builder.BCBuilderReadGlobal"(%"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.ir.IRGlobalDecl.191"*)

declare %"adt$main.ir.MaybeIRADTCons.185"* @"fn$main.ir.IRADTFindConstructor"(%"adt$main.ir.IRADTDecl.165"*, i8*)

declare %"adt$main.ast_expr.AstExprList.177"* @"adtcfn$adtc$main.ast_expr.AstExprList.Nil"()

declare %"adt$main.bytecode.ValueRef.168"* @"fn$main.bytecode_builder.BCBuilderCallConstructor"(%"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.ir.IRADTCons.194"*, %"adt$main.bytecode.ValueRefList.179"*, %"adt$main.ir.IRType.161"*)

declare %"adt$main.ir.MaybeIRADTField.197"* @"fn$main.ir.IRADTFindField"(%"adt$main.ir.IRADTDecl.165"*, i8*)

declare %"adt$main.bytecode.ValueRef.168"* @"fn$main.bytecode_builder.BCBuilderReadADTField"(%"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode.ValueRef.168"*, %"adt$main.ir.IRADTField.199"*)

declare %"adt$main.bytecode.Comparison.184"* @"adtcfn$adtc$main.bytecode.Comparison.EQ"()

declare %"adt$main.bytecode.Comparison.184"* @"adtcfn$adtc$main.bytecode.Comparison.NE"()

declare %"adt$main.bytecode.Comparison.184"* @"adtcfn$adtc$main.bytecode.Comparison.LT"()

declare %"adt$main.bytecode.Comparison.184"* @"adtcfn$adtc$main.bytecode.Comparison.GT"()

declare %"adt$main.bytecode.Comparison.184"* @"adtcfn$adtc$main.bytecode.Comparison.LE"()

declare %"adt$main.bytecode.Comparison.184"* @"adtcfn$adtc$main.bytecode.Comparison.GE"()

declare %"adt$main.bytecode.Intrinsic.183"* @"adtcfn$adtc$main.bytecode.Intrinsic.CompareBool"(%"adt$main.bytecode.Comparison.184"*)

declare %"adt$main.bytecode.Intrinsic.183"* @"adtcfn$adtc$main.bytecode.Intrinsic.CompareI32"(%"adt$main.bytecode.Comparison.184"*)

declare %"adt$main.bytecode.Intrinsic.183"* @"adtcfn$adtc$main.bytecode.Intrinsic.CompareString"(%"adt$main.bytecode.Comparison.184"*)

declare %"adt$main.bytecode.Intrinsic.183"* @"adtcfn$adtc$main.bytecode.Intrinsic.ComparePointer"(%"adt$main.bytecode.Comparison.184"*)

declare %"adt$main.bytecode.Intrinsic.183"* @"adtcfn$adtc$main.bytecode.Intrinsic.CompareRefEq"(%"adt$main.bytecode.Comparison.184"*)

declare %"adt$main.bytecode.Intrinsic.183"* @"adtcfn$adtc$main.bytecode.Intrinsic.StringConcat"()

declare %"adt$main.bytecode.ArithOp.201"* @"adtcfn$adtc$main.bytecode.ArithOp.Plus"()

declare %"adt$main.bytecode.Intrinsic.183"* @"adtcfn$adtc$main.bytecode.Intrinsic.Arith"(%"adt$main.bytecode.ArithOp.201"*)

declare %"adt$main.bytecode.ArithOp.201"* @"adtcfn$adtc$main.bytecode.ArithOp.Minus"()

declare %"adt$main.bytecode.ArithOp.201"* @"adtcfn$adtc$main.bytecode.ArithOp.Divide"()

declare %"adt$main.bytecode.ArithOp.201"* @"adtcfn$adtc$main.bytecode.ArithOp.Multiply"()

declare %"adt$main.bytecode.BasicBlock.182"* @"fn$main.bytecode.BasicBlockCreate"(%"adt$main.bytecode.FunctionFrame.171"*)

declare void @"fn$main.bytecode_builder.BCBuilderCondJump"(%"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.BasicBlock.182"*, %"adt$main.bytecode.BasicBlock.182"*)

declare void @"fn$main.bytecode_builder.BCBuilderSetInsertPoint"(%"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode.BasicBlock.182"*)

declare void @"fn$main.bytecode_builder.BCBuilderJump"(%"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode.BasicBlock.182"*)

declare %"adt$main.bytecode.PHIList.181"* @"adtcfn$adtc$main.bytecode.PHIList.Nil"()

declare %"adt$main.bytecode.PHIList.181"* @"adtcfn$adtc$main.bytecode.PHIList.Cons"(%"adt$main.bytecode.BasicBlock.182"*, %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.PHIList.181"*)

declare %"adt$main.bytecode.ValueRef.168"* @"fn$main.bytecode_builder.BCBuilderPHI"(%"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.ir.IRType.161"*, %"adt$main.bytecode.PHIList.181"*)

define %"adt$main.bytecode.CallableRef"* @"fn$main.bytecode_compiler.BCCompileCallableReference"(%"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.ast_expr.AstExpr.174"* %ast, %"adt$main.ir.MaybeIRType.175"* %m_ret_type) {
entry:
  %m_cons = alloca %"adt$main.ir.MaybeIRADTCons.185"*
  %ref = alloca %"adt$main.bytecode.IndexableRef"*
  %ref1 = alloca %"adt$main.bytecode_compiler.LocalRef"*
  %bake.m_ret_type = alloca %"adt$main.ir.MaybeIRType.175"*
  %bake.ast = alloca %"adt$main.ast_expr.AstExpr.174"*
  %bake.bc = alloca %"adt$main.bytecode_compiler.BCCompiler"*
  store %"adt$main.ir.MaybeIRType.175"* %m_ret_type, %"adt$main.ir.MaybeIRType.175"** %bake.m_ret_type
  store %"adt$main.ast_expr.AstExpr.174"* %ast, %"adt$main.ast_expr.AstExpr.174"** %bake.ast
  store %"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  br label %90

; <label>:0:                                      ; preds = %90
  %1 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %2 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %bake.ast
  %3 = getelementptr inbounds %"adt$main.ast_expr.AstExpr.174", %"adt$main.ast_expr.AstExpr.174"* %2, i32 0, i32 1
  %4 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %3
  call void @"fn$main.bytecode_compiler.BCCompilerError"(%"adt$main.bytecode_compiler.BCCompiler"* %1, %"adt$main.ast.SrcLoc.167"* %4, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @23, i32 0, i32 0))
  unreachable

; <label>:5:                                      ; preds = %42
  %6 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %7 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %bake.ast
  %8 = getelementptr inbounds %"adt$main.ast_expr.AstExpr.174", %"adt$main.ast_expr.AstExpr.174"* %7, i32 0, i32 1
  %9 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %8
  call void @"fn$main.bytecode_compiler.BCCompilerError"(%"adt$main.bytecode_compiler.BCCompiler"* %6, %"adt$main.ast.SrcLoc.167"* %9, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @22, i32 0, i32 0))
  unreachable

; <label>:10:                                     ; preds = %35
  %11 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %12 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %bake.ast
  %13 = getelementptr inbounds %"adt$main.ast_expr.AstExpr.174", %"adt$main.ast_expr.AstExpr.174"* %12, i32 0, i32 1
  %14 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %13
  call void @"fn$main.bytecode_compiler.BCCompilerError"(%"adt$main.bytecode_compiler.BCCompiler"* %11, %"adt$main.ast.SrcLoc.167"* %14, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @21, i32 0, i32 0))
  unreachable

; <label>:15:                                     ; preds = %26
  %16 = bitcast %"adt$main.ir.MaybeIRADTCons.185"* %31 to %"adtc$main.ir.MaybeIRADTCons.Just.193"*
  %17 = getelementptr inbounds %"adtc$main.ir.MaybeIRADTCons.Just.193", %"adtc$main.ir.MaybeIRADTCons.Just.193"* %16, i32 0, i32 1
  %18 = load %"adt$main.ir.IRADTCons.194"*, %"adt$main.ir.IRADTCons.194"** %17
  %19 = call %"adt$main.bytecode.CallableRef"* @"adtcfn$adtc$main.bytecode.CallableRef.ADTConstructor"(%"adt$main.ir.IRADTCons.194"* %18)
  ret %"adt$main.bytecode.CallableRef"* %19

; <label>:20:                                     ; preds = %26
  %21 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %22 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %bake.ast
  %23 = getelementptr inbounds %"adt$main.ast_expr.AstExpr.174", %"adt$main.ast_expr.AstExpr.174"* %22, i32 0, i32 1
  %24 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %23
  call void @"fn$main.bytecode_compiler.BCCompilerError"(%"adt$main.bytecode_compiler.BCCompiler"* %21, %"adt$main.ast.SrcLoc.167"* %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @20, i32 0, i32 0))
  unreachable

; <label>:25:                                     ; preds = %26
  br label %34

; <label>:26:                                     ; preds = %35
  %27 = bitcast %"adt$main.ir.IRSymbol.176"* %38 to %"adtc$main.ir.IRSymbol.ADT.192"*
  %28 = getelementptr inbounds %"adtc$main.ir.IRSymbol.ADT.192", %"adtc$main.ir.IRSymbol.ADT.192"* %27, i32 0, i32 4
  %29 = load %"adt$main.ir.IRADTDecl.165"*, %"adt$main.ir.IRADTDecl.165"** %28
  %30 = call %"adt$main.ir.MaybeIRADTCons.185"* @"fn$main.ir.IRADTFindConstructor"(%"adt$main.ir.IRADTDecl.165"* %29, i8* %48)
  store %"adt$main.ir.MaybeIRADTCons.185"* %30, %"adt$main.ir.MaybeIRADTCons.185"** %m_cons
  %31 = load %"adt$main.ir.MaybeIRADTCons.185"*, %"adt$main.ir.MaybeIRADTCons.185"** %m_cons
  %32 = getelementptr inbounds %"adt$main.ir.MaybeIRADTCons.185", %"adt$main.ir.MaybeIRADTCons.185"* %31, i32 0, i32 0
  %33 = load i32, i32* %32
  switch i32 %33, label %25 [
    i32 1, label %15
    i32 0, label %20
  ]

; <label>:34:                                     ; preds = %25
  br label %41

; <label>:35:                                     ; preds = %42
  %36 = bitcast %"adt$main.bytecode.IndexableRef"* %51 to %"adtc$main.bytecode.IndexableRef.Symbol"*
  %37 = getelementptr inbounds %"adtc$main.bytecode.IndexableRef.Symbol", %"adtc$main.bytecode.IndexableRef.Symbol"* %36, i32 0, i32 1
  %38 = load %"adt$main.ir.IRSymbol.176"*, %"adt$main.ir.IRSymbol.176"** %37
  %39 = getelementptr inbounds %"adt$main.ir.IRSymbol.176", %"adt$main.ir.IRSymbol.176"* %38, i32 0, i32 0
  %40 = load i32, i32* %39
  switch i32 %40, label %10 [
    i32 2, label %26
  ]

; <label>:41:                                     ; preds = %34
  br label %89

; <label>:42:                                     ; preds = %90
  %43 = bitcast %"adt$main.ast_expr.AstExpr.174"* %95 to %"adtc$main.ast_expr.AstExpr.Dot"*
  %44 = getelementptr inbounds %"adtc$main.ast_expr.AstExpr.Dot", %"adtc$main.ast_expr.AstExpr.Dot"* %43, i32 0, i32 2
  %45 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %44
  %46 = bitcast %"adt$main.ast_expr.AstExpr.174"* %95 to %"adtc$main.ast_expr.AstExpr.Dot"*
  %47 = getelementptr inbounds %"adtc$main.ast_expr.AstExpr.Dot", %"adtc$main.ast_expr.AstExpr.Dot"* %46, i32 0, i32 3
  %48 = load i8*, i8** %47
  %49 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %50 = call %"adt$main.bytecode.IndexableRef"* @"fn$main.bytecode_compiler.BCCompileIndexableReference"(%"adt$main.bytecode_compiler.BCCompiler"* %49, %"adt$main.ast_expr.AstExpr.174"* %45)
  store %"adt$main.bytecode.IndexableRef"* %50, %"adt$main.bytecode.IndexableRef"** %ref
  %51 = load %"adt$main.bytecode.IndexableRef"*, %"adt$main.bytecode.IndexableRef"** %ref
  %52 = getelementptr inbounds %"adt$main.bytecode.IndexableRef", %"adt$main.bytecode.IndexableRef"* %51, i32 0, i32 0
  %53 = load i32, i32* %52
  switch i32 %53, label %5 [
    i32 0, label %35
  ]

; <label>:54:                                     ; preds = %77
  %55 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %56 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %bake.ast
  %57 = getelementptr inbounds %"adt$main.ast_expr.AstExpr.174", %"adt$main.ast_expr.AstExpr.174"* %56, i32 0, i32 1
  %58 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %57
  call void @"fn$main.bytecode_compiler.BCCompilerError"(%"adt$main.bytecode_compiler.BCCompiler"* %55, %"adt$main.ast.SrcLoc.167"* %58, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @19, i32 0, i32 0))
  unreachable

; <label>:59:                                     ; preds = %70
  %60 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %61 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %bake.ast
  %62 = getelementptr inbounds %"adt$main.ast_expr.AstExpr.174", %"adt$main.ast_expr.AstExpr.174"* %61, i32 0, i32 1
  %63 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %62
  call void @"fn$main.bytecode_compiler.BCCompilerError"(%"adt$main.bytecode_compiler.BCCompiler"* %60, %"adt$main.ast.SrcLoc.167"* %63, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @18, i32 0, i32 0))
  unreachable

; <label>:64:                                     ; preds = %70
  %65 = bitcast %"adt$main.ir.IRSymbol.176"* %73 to %"adtc$main.ir.IRSymbol.Function.204"*
  %66 = getelementptr inbounds %"adtc$main.ir.IRSymbol.Function.204", %"adtc$main.ir.IRSymbol.Function.204"* %65, i32 0, i32 4
  %67 = load %"adt$main.ir.IRFunctionDecl.203"*, %"adt$main.ir.IRFunctionDecl.203"** %66
  %68 = call %"adt$main.bytecode.CallableRef"* @"adtcfn$adtc$main.bytecode.CallableRef.Function"(%"adt$main.ir.IRFunctionDecl.203"* %67)
  ret %"adt$main.bytecode.CallableRef"* %68
                                                  ; No predecessors!
  br label %76

; <label>:70:                                     ; preds = %77
  %71 = bitcast %"adt$main.bytecode_compiler.LocalRef"* %86 to %"adtc$main.bytecode_compiler.LocalRef.Global"*
  %72 = getelementptr inbounds %"adtc$main.bytecode_compiler.LocalRef.Global", %"adtc$main.bytecode_compiler.LocalRef.Global"* %71, i32 0, i32 1
  %73 = load %"adt$main.ir.IRSymbol.176"*, %"adt$main.ir.IRSymbol.176"** %72
  %74 = getelementptr inbounds %"adt$main.ir.IRSymbol.176", %"adt$main.ir.IRSymbol.176"* %73, i32 0, i32 0
  %75 = load i32, i32* %74
  switch i32 %75, label %59 [
    i32 0, label %64
  ]

; <label>:76:                                     ; preds = %69
  br label %89

; <label>:77:                                     ; preds = %90
  %78 = bitcast %"adt$main.ast_expr.AstExpr.174"* %95 to %"adtc$main.ast_expr.AstExpr.Id"*
  %79 = getelementptr inbounds %"adtc$main.ast_expr.AstExpr.Id", %"adtc$main.ast_expr.AstExpr.Id"* %78, i32 0, i32 2
  %80 = load i8*, i8** %79
  %81 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %82 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %bake.ast
  %83 = getelementptr inbounds %"adt$main.ast_expr.AstExpr.174", %"adt$main.ast_expr.AstExpr.174"* %82, i32 0, i32 1
  %84 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %83
  %85 = call %"adt$main.bytecode_compiler.LocalRef"* @"fn$main.bytecode_compiler.BCCompilerResolveRef"(%"adt$main.bytecode_compiler.BCCompiler"* %81, %"adt$main.ast.SrcLoc.167"* %84, i8* %80)
  store %"adt$main.bytecode_compiler.LocalRef"* %85, %"adt$main.bytecode_compiler.LocalRef"** %ref1
  %86 = load %"adt$main.bytecode_compiler.LocalRef"*, %"adt$main.bytecode_compiler.LocalRef"** %ref1
  %87 = getelementptr inbounds %"adt$main.bytecode_compiler.LocalRef", %"adt$main.bytecode_compiler.LocalRef"* %86, i32 0, i32 0
  %88 = load i32, i32* %87
  switch i32 %88, label %54 [
    i32 2, label %70
  ]

; <label>:89:                                     ; preds = %41, %76
  unreachable

; <label>:90:                                     ; preds = %entry
  %91 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %92 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %bake.ast
  %93 = getelementptr inbounds %"adt$main.ast_expr.AstExpr.174", %"adt$main.ast_expr.AstExpr.174"* %92, i32 0, i32 1
  %94 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %93
  call void @"fn$main.bytecode_compiler.Loc"(%"adt$main.bytecode_compiler.BCCompiler"* %91, %"adt$main.ast.SrcLoc.167"* %94)
  %95 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %bake.ast
  %96 = getelementptr inbounds %"adt$main.ast_expr.AstExpr.174", %"adt$main.ast_expr.AstExpr.174"* %95, i32 0, i32 0
  %97 = load i32, i32* %96
  switch i32 %97, label %0 [
    i32 1, label %42
    i32 0, label %77
  ]
}

declare %"adt$main.ir.IRType.161"* @"fn$main.bytecode.CallableRefGetType"(%"adt$main.bytecode.CallableRef"*)

declare %"adt$main.bytecode.ValueRef.168"* @"fn$main.bytecode_builder.BCBuilderCallFunction"(%"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.ir.IRFunctionDecl.203"*, %"adt$main.bytecode.ValueRefList.179"*, %"adt$main.ir.IRType.161"*)

declare %"adt$main.bytecode.CallableRef"* @"adtcfn$adtc$main.bytecode.CallableRef.Function"(%"adt$main.ir.IRFunctionDecl.203"*)

declare %"adt$main.bytecode.CallableRef"* @"adtcfn$adtc$main.bytecode.CallableRef.ADTConstructor"(%"adt$main.ir.IRADTCons.194"*)

declare %"adt$main.bytecode.IndexableRef"* @"adtcfn$adtc$main.bytecode.IndexableRef.Value"(%"adt$main.bytecode.ValueRef.168"*)

declare %"adt$main.bytecode.IndexableRef"* @"adtcfn$adtc$main.bytecode.IndexableRef.Symbol"(%"adt$main.ir.IRSymbol.176"*)

define %"adt$main.bytecode.WritableReference"* @"fn$main.bytecode_compiler.BCCompileWritableReference"(%"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.ast_expr.AstExpr.174"* %ast) {
entry:
  %ref = alloca %"adt$main.bytecode.IndexableRef"*
  %idx = alloca %"adt$main.bytecode.ValueRef.168"*
  %ref1 = alloca %"adt$main.bytecode.IndexableRef"*
  %ref2 = alloca %"adt$main.bytecode_compiler.LocalRef"*
  %bake.ast = alloca %"adt$main.ast_expr.AstExpr.174"*
  %bake.bc = alloca %"adt$main.bytecode_compiler.BCCompiler"*
  store %"adt$main.ast_expr.AstExpr.174"* %ast, %"adt$main.ast_expr.AstExpr.174"** %bake.ast
  store %"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  br label %139

; <label>:0:                                      ; preds = %139
  %1 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %2 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %bake.ast
  %3 = getelementptr inbounds %"adt$main.ast_expr.AstExpr.174", %"adt$main.ast_expr.AstExpr.174"* %2, i32 0, i32 1
  %4 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %3
  call void @"fn$main.bytecode_compiler.BCCompilerError"(%"adt$main.bytecode_compiler.BCCompiler"* %1, %"adt$main.ast.SrcLoc.167"* %4, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @31, i32 0, i32 0))
  unreachable

; <label>:5:                                      ; preds = %42
  %6 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %7 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %bake.ast
  %8 = getelementptr inbounds %"adt$main.ast_expr.AstExpr.174", %"adt$main.ast_expr.AstExpr.174"* %7, i32 0, i32 1
  %9 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %8
  call void @"fn$main.bytecode_compiler.BCCompilerError"(%"adt$main.bytecode_compiler.BCCompiler"* %6, %"adt$main.ast.SrcLoc.167"* %9, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @30, i32 0, i32 0))
  unreachable

; <label>:10:                                     ; preds = %34
  %11 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %12 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %bake.ast
  %13 = getelementptr inbounds %"adt$main.ast_expr.AstExpr.174", %"adt$main.ast_expr.AstExpr.174"* %12, i32 0, i32 1
  %14 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %13
  call void @"fn$main.bytecode_compiler.BCCompilerError"(%"adt$main.bytecode_compiler.BCCompiler"* %11, %"adt$main.ast.SrcLoc.167"* %14, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @29, i32 0, i32 0))
  unreachable

; <label>:15:                                     ; preds = %26
  %16 = bitcast %"adt$main.ir.MaybeIRADTField.197"* %30 to %"adtc$main.ir.MaybeIRADTField.Just.198"*
  %17 = getelementptr inbounds %"adtc$main.ir.MaybeIRADTField.Just.198", %"adtc$main.ir.MaybeIRADTField.Just.198"* %16, i32 0, i32 1
  %18 = load %"adt$main.ir.IRADTField.199"*, %"adt$main.ir.IRADTField.199"** %17
  %19 = call %"adt$main.bytecode.WritableReference"* @"adtcfn$adtc$main.bytecode.WritableReference.ADTField"(%"adt$main.bytecode.ValueRef.168"* %37, %"adt$main.ir.IRADTField.199"* %18)
  ret %"adt$main.bytecode.WritableReference"* %19

; <label>:20:                                     ; preds = %26
  %21 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %22 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %bake.ast
  %23 = getelementptr inbounds %"adt$main.ast_expr.AstExpr.174", %"adt$main.ast_expr.AstExpr.174"* %22, i32 0, i32 1
  %24 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %23
  call void @"fn$main.bytecode_compiler.BCCompilerError"(%"adt$main.bytecode_compiler.BCCompiler"* %21, %"adt$main.ast.SrcLoc.167"* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @28, i32 0, i32 0))
  unreachable

; <label>:25:                                     ; preds = %26
  br label %33

; <label>:26:                                     ; preds = %34
  %27 = bitcast %"adt$main.ir.IRType.161"* %38 to %"adtc$main.ir.IRType.ADT.164"*
  %28 = getelementptr inbounds %"adtc$main.ir.IRType.ADT.164", %"adtc$main.ir.IRType.ADT.164"* %27, i32 0, i32 1
  %29 = load %"adt$main.ir.IRADTDecl.165"*, %"adt$main.ir.IRADTDecl.165"** %28
  %30 = call %"adt$main.ir.MaybeIRADTField.197"* @"fn$main.ir.IRADTFindField"(%"adt$main.ir.IRADTDecl.165"* %29, i8* %48)
  %31 = getelementptr inbounds %"adt$main.ir.MaybeIRADTField.197", %"adt$main.ir.MaybeIRADTField.197"* %30, i32 0, i32 0
  %32 = load i32, i32* %31
  switch i32 %32, label %25 [
    i32 1, label %15
    i32 0, label %20
  ]

; <label>:33:                                     ; preds = %25
  br label %41

; <label>:34:                                     ; preds = %42
  %35 = bitcast %"adt$main.bytecode.IndexableRef"* %51 to %"adtc$main.bytecode.IndexableRef.Value"*
  %36 = getelementptr inbounds %"adtc$main.bytecode.IndexableRef.Value", %"adtc$main.bytecode.IndexableRef.Value"* %35, i32 0, i32 1
  %37 = load %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRef.168"** %36
  %38 = call %"adt$main.ir.IRType.161"* @"fn$main.bytecode.ValueRefGetType"(%"adt$main.bytecode.ValueRef.168"* %37)
  %39 = getelementptr inbounds %"adt$main.ir.IRType.161", %"adt$main.ir.IRType.161"* %38, i32 0, i32 0
  %40 = load i32, i32* %39
  switch i32 %40, label %10 [
    i32 2, label %26
  ]

; <label>:41:                                     ; preds = %33
  br label %138

; <label>:42:                                     ; preds = %139
  %43 = bitcast %"adt$main.ast_expr.AstExpr.174"* %140 to %"adtc$main.ast_expr.AstExpr.Dot"*
  %44 = getelementptr inbounds %"adtc$main.ast_expr.AstExpr.Dot", %"adtc$main.ast_expr.AstExpr.Dot"* %43, i32 0, i32 2
  %45 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %44
  %46 = bitcast %"adt$main.ast_expr.AstExpr.174"* %140 to %"adtc$main.ast_expr.AstExpr.Dot"*
  %47 = getelementptr inbounds %"adtc$main.ast_expr.AstExpr.Dot", %"adtc$main.ast_expr.AstExpr.Dot"* %46, i32 0, i32 3
  %48 = load i8*, i8** %47
  %49 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %50 = call %"adt$main.bytecode.IndexableRef"* @"fn$main.bytecode_compiler.BCCompileIndexableReference"(%"adt$main.bytecode_compiler.BCCompiler"* %49, %"adt$main.ast_expr.AstExpr.174"* %45)
  store %"adt$main.bytecode.IndexableRef"* %50, %"adt$main.bytecode.IndexableRef"** %ref
  %51 = load %"adt$main.bytecode.IndexableRef"*, %"adt$main.bytecode.IndexableRef"** %ref
  %52 = getelementptr inbounds %"adt$main.bytecode.IndexableRef", %"adt$main.bytecode.IndexableRef"* %51, i32 0, i32 0
  %53 = load i32, i32* %52
  switch i32 %53, label %5 [
    i32 1, label %34
  ]

; <label>:54:                                     ; preds = %83
  %55 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %56 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %bake.ast
  %57 = getelementptr inbounds %"adt$main.ast_expr.AstExpr.174", %"adt$main.ast_expr.AstExpr.174"* %56, i32 0, i32 1
  %58 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %57
  call void @"fn$main.bytecode_compiler.BCCompilerError"(%"adt$main.bytecode_compiler.BCCompiler"* %55, %"adt$main.ast.SrcLoc.167"* %58, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @27, i32 0, i32 0))
  unreachable

; <label>:59:                                     ; preds = %75
  %60 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %61 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %bake.ast
  %62 = getelementptr inbounds %"adt$main.ast_expr.AstExpr.174", %"adt$main.ast_expr.AstExpr.174"* %61, i32 0, i32 1
  %63 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %62
  call void @"fn$main.bytecode_compiler.BCCompilerError"(%"adt$main.bytecode_compiler.BCCompiler"* %60, %"adt$main.ast.SrcLoc.167"* %63, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @26, i32 0, i32 0))
  unreachable

; <label>:64:                                     ; preds = %75
  %65 = bitcast %"adt$main.ir.IRType.161"* %79 to %"adtc$main.ir.IRType.ArrayUnsized.166"*
  %66 = getelementptr inbounds %"adtc$main.ir.IRType.ArrayUnsized.166", %"adtc$main.ir.IRType.ArrayUnsized.166"* %65, i32 0, i32 1
  %67 = load %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRType.161"** %66
  %68 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %69 = call %"adt$main.ir.IRPrimType.163"* @"adtcfn$adtc$main.ir.IRPrimType.I32"()
  %70 = call %"adt$main.ir.IRType.161"* @"adtcfn$adtc$main.ir.IRType.Prim"(%"adt$main.ir.IRPrimType.163"* %69)
  %71 = call %"adt$main.bytecode.ValueRef.168"* @"fn$main.bytecode_compiler.BCCompileExprAs"(%"adt$main.bytecode_compiler.BCCompiler"* %68, %"adt$main.ast_expr.AstExpr.174"* %89, %"adt$main.ir.IRType.161"* %70)
  store %"adt$main.bytecode.ValueRef.168"* %71, %"adt$main.bytecode.ValueRef.168"** %idx
  %72 = load %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRef.168"** %idx
  %73 = call %"adt$main.bytecode.WritableReference"* @"adtcfn$adtc$main.bytecode.WritableReference.ArrayIndex"(%"adt$main.bytecode.ValueRef.168"* %78, %"adt$main.bytecode.ValueRef.168"* %72, %"adt$main.ir.IRType.161"* %67)
  ret %"adt$main.bytecode.WritableReference"* %73
                                                  ; No predecessors!
  br label %82

; <label>:75:                                     ; preds = %83
  %76 = bitcast %"adt$main.bytecode.IndexableRef"* %92 to %"adtc$main.bytecode.IndexableRef.Value"*
  %77 = getelementptr inbounds %"adtc$main.bytecode.IndexableRef.Value", %"adtc$main.bytecode.IndexableRef.Value"* %76, i32 0, i32 1
  %78 = load %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRef.168"** %77
  %79 = call %"adt$main.ir.IRType.161"* @"fn$main.bytecode.ValueRefGetType"(%"adt$main.bytecode.ValueRef.168"* %78)
  %80 = getelementptr inbounds %"adt$main.ir.IRType.161", %"adt$main.ir.IRType.161"* %79, i32 0, i32 0
  %81 = load i32, i32* %80
  switch i32 %81, label %59 [
    i32 4, label %64
  ]

; <label>:82:                                     ; preds = %74
  br label %138

; <label>:83:                                     ; preds = %139
  %84 = bitcast %"adt$main.ast_expr.AstExpr.174"* %140 to %"adtc$main.ast_expr.AstExpr.Index"*
  %85 = getelementptr inbounds %"adtc$main.ast_expr.AstExpr.Index", %"adtc$main.ast_expr.AstExpr.Index"* %84, i32 0, i32 2
  %86 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %85
  %87 = bitcast %"adt$main.ast_expr.AstExpr.174"* %140 to %"adtc$main.ast_expr.AstExpr.Index"*
  %88 = getelementptr inbounds %"adtc$main.ast_expr.AstExpr.Index", %"adtc$main.ast_expr.AstExpr.Index"* %87, i32 0, i32 3
  %89 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %88
  %90 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %91 = call %"adt$main.bytecode.IndexableRef"* @"fn$main.bytecode_compiler.BCCompileIndexableReference"(%"adt$main.bytecode_compiler.BCCompiler"* %90, %"adt$main.ast_expr.AstExpr.174"* %86)
  store %"adt$main.bytecode.IndexableRef"* %91, %"adt$main.bytecode.IndexableRef"** %ref1
  %92 = load %"adt$main.bytecode.IndexableRef"*, %"adt$main.bytecode.IndexableRef"** %ref1
  %93 = getelementptr inbounds %"adt$main.bytecode.IndexableRef", %"adt$main.bytecode.IndexableRef"* %92, i32 0, i32 0
  %94 = load i32, i32* %93
  switch i32 %94, label %54 [
    i32 1, label %75
  ]

; <label>:95:                                     ; preds = %106
  %96 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %97 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %bake.ast
  %98 = getelementptr inbounds %"adt$main.ast_expr.AstExpr.174", %"adt$main.ast_expr.AstExpr.174"* %97, i32 0, i32 1
  %99 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %98
  call void @"fn$main.bytecode_compiler.BCCompilerError"(%"adt$main.bytecode_compiler.BCCompiler"* %96, %"adt$main.ast.SrcLoc.167"* %99, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @25, i32 0, i32 0))
  unreachable

; <label>:100:                                    ; preds = %106
  %101 = bitcast %"adt$main.ir.IRSymbol.176"* %109 to %"adtc$main.ir.IRSymbol.Global.190"*
  %102 = getelementptr inbounds %"adtc$main.ir.IRSymbol.Global.190", %"adtc$main.ir.IRSymbol.Global.190"* %101, i32 0, i32 4
  %103 = load %"adt$main.ir.IRGlobalDecl.191"*, %"adt$main.ir.IRGlobalDecl.191"** %102
  %104 = call %"adt$main.bytecode.WritableReference"* @"adtcfn$adtc$main.bytecode.WritableReference.Global"(%"adt$main.ir.IRGlobalDecl.191"* %103)
  ret %"adt$main.bytecode.WritableReference"* %104
                                                  ; No predecessors!
  br label %125

; <label>:106:                                    ; preds = %126
  %107 = bitcast %"adt$main.bytecode_compiler.LocalRef"* %135 to %"adtc$main.bytecode_compiler.LocalRef.Global"*
  %108 = getelementptr inbounds %"adtc$main.bytecode_compiler.LocalRef.Global", %"adtc$main.bytecode_compiler.LocalRef.Global"* %107, i32 0, i32 1
  %109 = load %"adt$main.ir.IRSymbol.176"*, %"adt$main.ir.IRSymbol.176"** %108
  %110 = getelementptr inbounds %"adt$main.ir.IRSymbol.176", %"adt$main.ir.IRSymbol.176"* %109, i32 0, i32 0
  %111 = load i32, i32* %110
  switch i32 %111, label %95 [
    i32 1, label %100
  ]

; <label>:112:                                    ; preds = %126
  %113 = bitcast %"adt$main.bytecode_compiler.LocalRef"* %135 to %"adtc$main.bytecode_compiler.LocalRef.Variable"*
  %114 = getelementptr inbounds %"adtc$main.bytecode_compiler.LocalRef.Variable", %"adtc$main.bytecode_compiler.LocalRef.Variable"* %113, i32 0, i32 1
  %115 = load %"adt$main.bytecode.Variable.189"*, %"adt$main.bytecode.Variable.189"** %114
  %116 = call %"adt$main.bytecode.WritableReference"* @"adtcfn$adtc$main.bytecode.WritableReference.Variable"(%"adt$main.bytecode.Variable.189"* %115)
  ret %"adt$main.bytecode.WritableReference"* %116

; <label>:117:                                    ; preds = %126
  %118 = bitcast %"adt$main.bytecode_compiler.LocalRef"* %135 to %"adtc$main.bytecode_compiler.LocalRef.Value"*
  %119 = getelementptr inbounds %"adtc$main.bytecode_compiler.LocalRef.Value", %"adtc$main.bytecode_compiler.LocalRef.Value"* %118, i32 0, i32 1
  %120 = load %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRef.168"** %119
  %121 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %122 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %bake.ast
  %123 = getelementptr inbounds %"adt$main.ast_expr.AstExpr.174", %"adt$main.ast_expr.AstExpr.174"* %122, i32 0, i32 1
  %124 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %123
  call void @"fn$main.bytecode_compiler.BCCompilerError"(%"adt$main.bytecode_compiler.BCCompiler"* %121, %"adt$main.ast.SrcLoc.167"* %124, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @24, i32 0, i32 0))
  unreachable

; <label>:125:                                    ; preds = %105, %126
  br label %138

; <label>:126:                                    ; preds = %139
  %127 = bitcast %"adt$main.ast_expr.AstExpr.174"* %140 to %"adtc$main.ast_expr.AstExpr.Id"*
  %128 = getelementptr inbounds %"adtc$main.ast_expr.AstExpr.Id", %"adtc$main.ast_expr.AstExpr.Id"* %127, i32 0, i32 2
  %129 = load i8*, i8** %128
  %130 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %131 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %bake.ast
  %132 = getelementptr inbounds %"adt$main.ast_expr.AstExpr.174", %"adt$main.ast_expr.AstExpr.174"* %131, i32 0, i32 1
  %133 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %132
  %134 = call %"adt$main.bytecode_compiler.LocalRef"* @"fn$main.bytecode_compiler.BCCompilerResolveRef"(%"adt$main.bytecode_compiler.BCCompiler"* %130, %"adt$main.ast.SrcLoc.167"* %133, i8* %129)
  store %"adt$main.bytecode_compiler.LocalRef"* %134, %"adt$main.bytecode_compiler.LocalRef"** %ref2
  %135 = load %"adt$main.bytecode_compiler.LocalRef"*, %"adt$main.bytecode_compiler.LocalRef"** %ref2
  %136 = getelementptr inbounds %"adt$main.bytecode_compiler.LocalRef", %"adt$main.bytecode_compiler.LocalRef"* %135, i32 0, i32 0
  %137 = load i32, i32* %136
  switch i32 %137, label %125 [
    i32 2, label %106
    i32 1, label %112
    i32 0, label %117
  ]

; <label>:138:                                    ; preds = %41, %82, %125
  unreachable

; <label>:139:                                    ; preds = %entry
  %140 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %bake.ast
  %141 = getelementptr inbounds %"adt$main.ast_expr.AstExpr.174", %"adt$main.ast_expr.AstExpr.174"* %140, i32 0, i32 0
  %142 = load i32, i32* %141
  switch i32 %142, label %0 [
    i32 1, label %42
    i32 4, label %83
    i32 0, label %126
  ]
}

declare %"adt$main.bytecode.WritableReference"* @"adtcfn$adtc$main.bytecode.WritableReference.Variable"(%"adt$main.bytecode.Variable.189"*)

declare %"adt$main.bytecode.WritableReference"* @"adtcfn$adtc$main.bytecode.WritableReference.Global"(%"adt$main.ir.IRGlobalDecl.191"*)

declare %"adt$main.bytecode.WritableReference"* @"adtcfn$adtc$main.bytecode.WritableReference.ArrayIndex"(%"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRef.168"*, %"adt$main.ir.IRType.161"*)

declare %"adt$main.bytecode.WritableReference"* @"adtcfn$adtc$main.bytecode.WritableReference.ADTField"(%"adt$main.bytecode.ValueRef.168"*, %"adt$main.ir.IRADTField.199"*)

define void @"fn$main.bytecode_compiler.BCCompileStmt"(%"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.ast_stmt.AstStmt.205"* %ast) {
entry:
  %scope = alloca %"adt$main.bytecode_compiler.Scope"*
  %value = alloca %"adt$main.bytecode.ValueRef.168"*
  %elseScope = alloca %"adt$main.bytecode_compiler.Scope"*
  %thenScope = alloca %"adt$main.bytecode_compiler.Scope"*
  %joinBlock = alloca %"adt$main.bytecode.BasicBlock.182"*
  %elseBlock = alloca %"adt$main.bytecode.BasicBlock.182"*
  %thenBlock = alloca %"adt$main.bytecode.BasicBlock.182"*
  %val = alloca %"adt$main.bytecode.ValueRef.168"*
  %skipScope = alloca %"adt$main.bytecode_compiler.Scope"*
  %bodyScope = alloca %"adt$main.bytecode_compiler.Scope"*
  %bodyScope1 = alloca %"adt$main.bytecode_compiler.Scope"*
  %bodyScope2 = alloca %"adt$main.bytecode_compiler.Scope"*
  %val3 = alloca %"adt$main.bytecode.ValueRef.168"*
  %loopScope = alloca %"adt$main.bytecode_compiler.Scope"*
  %joinBlock4 = alloca %"adt$main.bytecode.BasicBlock.182"*
  %bodyBlock = alloca %"adt$main.bytecode.BasicBlock.182"*
  %condBlock = alloca %"adt$main.bytecode.BasicBlock.182"*
  %scope5 = alloca %"adt$main.bytecode_compiler.Scope"*
  %pattern_id = alloca i8*
  %params = alloca %"adt$main.ast_stmt.AstPatternList.206"*
  %scope6 = alloca %"adt$main.bytecode_compiler.Scope"*
  %caseBlock = alloca %"adt$main.bytecode.BasicBlock.182"*
  %caseList = alloca %"adt$main.ast_stmt.AstCaseList.207"*
  %branches = alloca %"adt$main.bytecode.ADTJumpCase.208"*
  %catchAll = alloca i1
  %i = alloca i32
  %defBlock = alloca %"adt$main.bytecode.BasicBlock.182"*
  %cumulativeScope = alloca %"adt$main.bytecode_compiler.Scope"*
  %count = alloca i32
  %joinBlock7 = alloca %"adt$main.bytecode.BasicBlock.182"*
  %currentBlock = alloca %"adt$main.bytecode.BasicBlock.182"*
  %targetExpr = alloca %"adt$main.bytecode.ValueRef.168"*
  %val8 = alloca %"adt$main.bytecode.ValueRef.168"*
  %ref = alloca %"adt$main.bytecode.WritableReference"*
  %val9 = alloca %"adt$main.bytecode.ValueRef.168"*
  %var_ = alloca %"adt$main.bytecode.Variable.189"*
  %val10 = alloca %"adt$main.bytecode.ValueRef.168"*
  %varInit = alloca %"adt$main.bytecode.MaybeValueRef"*
  %varType = alloca %"adt$main.ir.IRType.161"*
  %bake.ast = alloca %"adt$main.ast_stmt.AstStmt.205"*
  %bake.bc = alloca %"adt$main.bytecode_compiler.BCCompiler"*
  store %"adt$main.ast_stmt.AstStmt.205"* %ast, %"adt$main.ast_stmt.AstStmt.205"** %bake.ast
  store %"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  br label %633

; <label>:0:                                      ; preds = %629
  %1 = bitcast %"adt$main.ast_stmt.AstStmt.205"* %630 to %"adtc$main.ast_stmt.AstStmt.Block"*
  %2 = getelementptr inbounds %"adtc$main.ast_stmt.AstStmt.Block", %"adtc$main.ast_stmt.AstStmt.Block"* %1, i32 0, i32 2
  %3 = load %"adt$main.ast_stmt.AstStmtList.216"*, %"adt$main.ast_stmt.AstStmtList.216"** %2
  %4 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %5 = call %"adt$main.bytecode_compiler.Scope"* @"fn$main.bytecode_compiler.BCCompilerEnterScope"(%"adt$main.bytecode_compiler.BCCompiler"* %4)
  store %"adt$main.bytecode_compiler.Scope"* %5, %"adt$main.bytecode_compiler.Scope"** %scope
  %6 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  call void @"fn$main.bytecode_compiler.BCCompileCode"(%"adt$main.bytecode_compiler.BCCompiler"* %6, %"adt$main.ast_stmt.AstStmtList.216"* %3)
  %7 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %8 = call %"adt$main.bytecode_compiler.Scope"* @"fn$main.bytecode_compiler.BCCompilerLeaveScope"(%"adt$main.bytecode_compiler.BCCompiler"* %7)
  %9 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %10 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %9, i32 0, i32 8
  %11 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %10
  %12 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %scope
  call void @"fn$main.bytecode_compiler.ScopeConcat"(%"adt$main.bytecode_compiler.Scope"* %11, %"adt$main.bytecode_compiler.Scope"* %12)
  br label %623

; <label>:13:                                     ; preds = %46
  %14 = bitcast %"adt$main.ast_expr.MaybeAstExpr.211"* %49 to %"adtc$main.ast_expr.MaybeAstExpr.Just.212"*
  %15 = getelementptr inbounds %"adtc$main.ast_expr.MaybeAstExpr.Just.212", %"adtc$main.ast_expr.MaybeAstExpr.Just.212"* %14, i32 0, i32 1
  %16 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %15
  %17 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %18 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %19 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %18, i32 0, i32 3
  %20 = load %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRType.161"** %19
  %21 = call %"adt$main.bytecode.ValueRef.168"* @"fn$main.bytecode_compiler.BCCompileExprAs"(%"adt$main.bytecode_compiler.BCCompiler"* %17, %"adt$main.ast_expr.AstExpr.174"* %16, %"adt$main.ir.IRType.161"* %20)
  store %"adt$main.bytecode.ValueRef.168"* %21, %"adt$main.bytecode.ValueRef.168"** %value
  br label %32

; <label>:22:                                     ; preds = %46
  %23 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %24 = load %"adt$main.ast_stmt.AstStmt.205"*, %"adt$main.ast_stmt.AstStmt.205"** %bake.ast
  %25 = getelementptr inbounds %"adt$main.ast_stmt.AstStmt.205", %"adt$main.ast_stmt.AstStmt.205"* %24, i32 0, i32 1
  %26 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %25
  %27 = call %"adt$main.bytecode.ValueRef.168"* @"adtcfn$adtc$main.bytecode.ValueRef.ConstUnit"()
  %28 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %29 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %28, i32 0, i32 3
  %30 = load %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRType.161"** %29
  %31 = call %"adt$main.bytecode.ValueRef.168"* @"fn$main.bytecode_compiler.BCCompileCoerce"(%"adt$main.bytecode_compiler.BCCompiler"* %23, %"adt$main.ast.SrcLoc.167"* %26, %"adt$main.bytecode.ValueRef.168"* %27, %"adt$main.ir.IRType.161"* %30)
  store %"adt$main.bytecode.ValueRef.168"* %31, %"adt$main.bytecode.ValueRef.168"** %value
  br label %32

; <label>:32:                                     ; preds = %13, %22, %46
  %33 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %34 = load %"adt$main.ast_stmt.AstStmt.205"*, %"adt$main.ast_stmt.AstStmt.205"** %bake.ast
  %35 = getelementptr inbounds %"adt$main.ast_stmt.AstStmt.205", %"adt$main.ast_stmt.AstStmt.205"* %34, i32 0, i32 1
  %36 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %35
  call void @"fn$main.bytecode_compiler.Loc"(%"adt$main.bytecode_compiler.BCCompiler"* %33, %"adt$main.ast.SrcLoc.167"* %36)
  %37 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %38 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %37, i32 0, i32 8
  %39 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %38
  %40 = call %"adt$main.bytecode_compiler.Termination"* @"adtcfn$adtc$main.bytecode_compiler.Termination.Always"()
  %41 = getelementptr inbounds %"adt$main.bytecode_compiler.Scope", %"adt$main.bytecode_compiler.Scope"* %39, i32 0, i32 1
  store %"adt$main.bytecode_compiler.Termination"* %40, %"adt$main.bytecode_compiler.Termination"** %41
  %42 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %43 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %42, i32 0, i32 5
  %44 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %43
  %45 = load %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRef.168"** %value
  call void @"fn$main.bytecode_builder.BCBuilderReturn"(%"adt$main.bytecode_builder.BCBuilder"* %44, %"adt$main.bytecode.ValueRef.168"* %45)
  br label %623

; <label>:46:                                     ; preds = %629
  %47 = bitcast %"adt$main.ast_stmt.AstStmt.205"* %630 to %"adtc$main.ast_stmt.AstStmt.Ret"*
  %48 = getelementptr inbounds %"adtc$main.ast_stmt.AstStmt.Ret", %"adtc$main.ast_stmt.AstStmt.Ret"* %47, i32 0, i32 2
  %49 = load %"adt$main.ast_expr.MaybeAstExpr.211"*, %"adt$main.ast_expr.MaybeAstExpr.211"** %48
  %50 = getelementptr inbounds %"adt$main.ast_expr.MaybeAstExpr.211", %"adt$main.ast_expr.MaybeAstExpr.211"* %49, i32 0, i32 0
  %51 = load i32, i32* %50
  switch i32 %51, label %32 [
    i32 1, label %13
    i32 0, label %22
  ]

; <label>:52:                                     ; preds = %74
  %53 = bitcast %"adt$main.ast_stmt.MaybeAstStmt.218"* %83 to %"adtc$main.ast_stmt.MaybeAstStmt.Just.219"*
  %54 = getelementptr inbounds %"adtc$main.ast_stmt.MaybeAstStmt.Just.219", %"adtc$main.ast_stmt.MaybeAstStmt.Just.219"* %53, i32 0, i32 1
  %55 = load %"adt$main.ast_stmt.AstStmt.205"*, %"adt$main.ast_stmt.AstStmt.205"** %54
  %56 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  call void @"fn$main.bytecode_compiler.BCCompileStmt"(%"adt$main.bytecode_compiler.BCCompiler"* %56, %"adt$main.ast_stmt.AstStmt.205"* %55)
  br label %57

; <label>:57:                                     ; preds = %52, %74
  %58 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %59 = call %"adt$main.bytecode_compiler.Scope"* @"fn$main.bytecode_compiler.BCCompilerLeaveScope"(%"adt$main.bytecode_compiler.BCCompiler"* %58)
  %60 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %61 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %60, i32 0, i32 5
  %62 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %61
  %63 = load %"adt$main.bytecode.BasicBlock.182"*, %"adt$main.bytecode.BasicBlock.182"** %joinBlock
  call void @"fn$main.bytecode_builder.BCBuilderJump"(%"adt$main.bytecode_builder.BCBuilder"* %62, %"adt$main.bytecode.BasicBlock.182"* %63)
  %64 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %thenScope
  %65 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %elseScope
  call void @"fn$main.bytecode_compiler.ScopeChoice"(%"adt$main.bytecode_compiler.Scope"* %64, %"adt$main.bytecode_compiler.Scope"* %65)
  %66 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %67 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %66, i32 0, i32 8
  %68 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %67
  %69 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %thenScope
  call void @"fn$main.bytecode_compiler.ScopeConcat"(%"adt$main.bytecode_compiler.Scope"* %68, %"adt$main.bytecode_compiler.Scope"* %69)
  %70 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %71 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %70, i32 0, i32 5
  %72 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %71
  %73 = load %"adt$main.bytecode.BasicBlock.182"*, %"adt$main.bytecode.BasicBlock.182"** %joinBlock
  call void @"fn$main.bytecode_builder.BCBuilderSetInsertPoint"(%"adt$main.bytecode_builder.BCBuilder"* %72, %"adt$main.bytecode.BasicBlock.182"* %73)
  br label %623

; <label>:74:                                     ; preds = %629
  %75 = bitcast %"adt$main.ast_stmt.AstStmt.205"* %630 to %"adtc$main.ast_stmt.AstStmt.If"*
  %76 = getelementptr inbounds %"adtc$main.ast_stmt.AstStmt.If", %"adtc$main.ast_stmt.AstStmt.If"* %75, i32 0, i32 2
  %77 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %76
  %78 = bitcast %"adt$main.ast_stmt.AstStmt.205"* %630 to %"adtc$main.ast_stmt.AstStmt.If"*
  %79 = getelementptr inbounds %"adtc$main.ast_stmt.AstStmt.If", %"adtc$main.ast_stmt.AstStmt.If"* %78, i32 0, i32 3
  %80 = load %"adt$main.ast_stmt.AstStmt.205"*, %"adt$main.ast_stmt.AstStmt.205"** %79
  %81 = bitcast %"adt$main.ast_stmt.AstStmt.205"* %630 to %"adtc$main.ast_stmt.AstStmt.If"*
  %82 = getelementptr inbounds %"adtc$main.ast_stmt.AstStmt.If", %"adtc$main.ast_stmt.AstStmt.If"* %81, i32 0, i32 4
  %83 = load %"adt$main.ast_stmt.MaybeAstStmt.218"*, %"adt$main.ast_stmt.MaybeAstStmt.218"** %82
  %84 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %85 = call %"adt$main.ir.IRPrimType.163"* @"adtcfn$adtc$main.ir.IRPrimType.Bool"()
  %86 = call %"adt$main.ir.IRType.161"* @"adtcfn$adtc$main.ir.IRType.Prim"(%"adt$main.ir.IRPrimType.163"* %85)
  %87 = call %"adt$main.bytecode.ValueRef.168"* @"fn$main.bytecode_compiler.BCCompileExprAs"(%"adt$main.bytecode_compiler.BCCompiler"* %84, %"adt$main.ast_expr.AstExpr.174"* %77, %"adt$main.ir.IRType.161"* %86)
  store %"adt$main.bytecode.ValueRef.168"* %87, %"adt$main.bytecode.ValueRef.168"** %val
  %88 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %89 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %88, i32 0, i32 4
  %90 = load %"adt$main.bytecode.FunctionFrame.171"*, %"adt$main.bytecode.FunctionFrame.171"** %89
  %91 = call %"adt$main.bytecode.BasicBlock.182"* @"fn$main.bytecode.BasicBlockCreate"(%"adt$main.bytecode.FunctionFrame.171"* %90)
  store %"adt$main.bytecode.BasicBlock.182"* %91, %"adt$main.bytecode.BasicBlock.182"** %thenBlock
  %92 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %93 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %92, i32 0, i32 4
  %94 = load %"adt$main.bytecode.FunctionFrame.171"*, %"adt$main.bytecode.FunctionFrame.171"** %93
  %95 = call %"adt$main.bytecode.BasicBlock.182"* @"fn$main.bytecode.BasicBlockCreate"(%"adt$main.bytecode.FunctionFrame.171"* %94)
  store %"adt$main.bytecode.BasicBlock.182"* %95, %"adt$main.bytecode.BasicBlock.182"** %elseBlock
  %96 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %97 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %96, i32 0, i32 4
  %98 = load %"adt$main.bytecode.FunctionFrame.171"*, %"adt$main.bytecode.FunctionFrame.171"** %97
  %99 = call %"adt$main.bytecode.BasicBlock.182"* @"fn$main.bytecode.BasicBlockCreate"(%"adt$main.bytecode.FunctionFrame.171"* %98)
  store %"adt$main.bytecode.BasicBlock.182"* %99, %"adt$main.bytecode.BasicBlock.182"** %joinBlock
  %100 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %101 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %100, i32 0, i32 5
  %102 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %101
  %103 = load %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRef.168"** %val
  %104 = load %"adt$main.bytecode.BasicBlock.182"*, %"adt$main.bytecode.BasicBlock.182"** %thenBlock
  %105 = load %"adt$main.bytecode.BasicBlock.182"*, %"adt$main.bytecode.BasicBlock.182"** %elseBlock
  call void @"fn$main.bytecode_builder.BCBuilderCondJump"(%"adt$main.bytecode_builder.BCBuilder"* %102, %"adt$main.bytecode.ValueRef.168"* %103, %"adt$main.bytecode.BasicBlock.182"* %104, %"adt$main.bytecode.BasicBlock.182"* %105)
  %106 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %107 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %106, i32 0, i32 5
  %108 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %107
  %109 = load %"adt$main.bytecode.BasicBlock.182"*, %"adt$main.bytecode.BasicBlock.182"** %thenBlock
  call void @"fn$main.bytecode_builder.BCBuilderSetInsertPoint"(%"adt$main.bytecode_builder.BCBuilder"* %108, %"adt$main.bytecode.BasicBlock.182"* %109)
  %110 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %111 = call %"adt$main.bytecode_compiler.Scope"* @"fn$main.bytecode_compiler.BCCompilerEnterScope"(%"adt$main.bytecode_compiler.BCCompiler"* %110)
  store %"adt$main.bytecode_compiler.Scope"* %111, %"adt$main.bytecode_compiler.Scope"** %thenScope
  %112 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  call void @"fn$main.bytecode_compiler.BCCompileStmt"(%"adt$main.bytecode_compiler.BCCompiler"* %112, %"adt$main.ast_stmt.AstStmt.205"* %80)
  %113 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %114 = call %"adt$main.bytecode_compiler.Scope"* @"fn$main.bytecode_compiler.BCCompilerLeaveScope"(%"adt$main.bytecode_compiler.BCCompiler"* %113)
  %115 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %116 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %115, i32 0, i32 5
  %117 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %116
  %118 = load %"adt$main.bytecode.BasicBlock.182"*, %"adt$main.bytecode.BasicBlock.182"** %joinBlock
  call void @"fn$main.bytecode_builder.BCBuilderJump"(%"adt$main.bytecode_builder.BCBuilder"* %117, %"adt$main.bytecode.BasicBlock.182"* %118)
  %119 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %120 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %119, i32 0, i32 5
  %121 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %120
  %122 = load %"adt$main.bytecode.BasicBlock.182"*, %"adt$main.bytecode.BasicBlock.182"** %elseBlock
  call void @"fn$main.bytecode_builder.BCBuilderSetInsertPoint"(%"adt$main.bytecode_builder.BCBuilder"* %121, %"adt$main.bytecode.BasicBlock.182"* %122)
  %123 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %124 = call %"adt$main.bytecode_compiler.Scope"* @"fn$main.bytecode_compiler.BCCompilerEnterScope"(%"adt$main.bytecode_compiler.BCCompiler"* %123)
  store %"adt$main.bytecode_compiler.Scope"* %124, %"adt$main.bytecode_compiler.Scope"** %elseScope
  %125 = getelementptr inbounds %"adt$main.ast_stmt.MaybeAstStmt.218", %"adt$main.ast_stmt.MaybeAstStmt.218"* %83, i32 0, i32 0
  %126 = load i32, i32* %125
  switch i32 %126, label %57 [
    i32 1, label %52
  ]

; <label>:127:                                    ; preds = %223
  %128 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %129 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %128, i32 0, i32 5
  %130 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %129
  %131 = load %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRef.168"** %val3
  %132 = load %"adt$main.bytecode.BasicBlock.182"*, %"adt$main.bytecode.BasicBlock.182"** %bodyBlock
  %133 = load %"adt$main.bytecode.BasicBlock.182"*, %"adt$main.bytecode.BasicBlock.182"** %joinBlock4
  call void @"fn$main.bytecode_builder.BCBuilderCondJump"(%"adt$main.bytecode_builder.BCBuilder"* %130, %"adt$main.bytecode.ValueRef.168"* %131, %"adt$main.bytecode.BasicBlock.182"* %132, %"adt$main.bytecode.BasicBlock.182"* %133)
  %134 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %135 = call %"adt$main.bytecode_compiler.Scope"* @"fn$main.bytecode_compiler.BCCompilerEnterScope"(%"adt$main.bytecode_compiler.BCCompiler"* %134)
  store %"adt$main.bytecode_compiler.Scope"* %135, %"adt$main.bytecode_compiler.Scope"** %bodyScope
  %136 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %137 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %136, i32 0, i32 5
  %138 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %137
  %139 = load %"adt$main.bytecode.BasicBlock.182"*, %"adt$main.bytecode.BasicBlock.182"** %bodyBlock
  call void @"fn$main.bytecode_builder.BCBuilderSetInsertPoint"(%"adt$main.bytecode_builder.BCBuilder"* %138, %"adt$main.bytecode.BasicBlock.182"* %139)
  %140 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  call void @"fn$main.bytecode_compiler.BCCompileCode"(%"adt$main.bytecode_compiler.BCCompiler"* %140, %"adt$main.ast_stmt.AstStmtList.216"* %229)
  %141 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %142 = call %"adt$main.bytecode_compiler.Scope"* @"fn$main.bytecode_compiler.BCCompilerLeaveScope"(%"adt$main.bytecode_compiler.BCCompiler"* %141)
  %143 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %144 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %143, i32 0, i32 5
  %145 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %144
  %146 = load %"adt$main.bytecode.BasicBlock.182"*, %"adt$main.bytecode.BasicBlock.182"** %condBlock
  call void @"fn$main.bytecode_builder.BCBuilderJump"(%"adt$main.bytecode_builder.BCBuilder"* %145, %"adt$main.bytecode.BasicBlock.182"* %146)
  %147 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %148 = call %"adt$main.bytecode_compiler.Scope"* @"fn$main.bytecode_compiler.BCCompilerEnterScope"(%"adt$main.bytecode_compiler.BCCompiler"* %147)
  store %"adt$main.bytecode_compiler.Scope"* %148, %"adt$main.bytecode_compiler.Scope"** %skipScope
  %149 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %150 = call %"adt$main.bytecode_compiler.Scope"* @"fn$main.bytecode_compiler.BCCompilerLeaveScope"(%"adt$main.bytecode_compiler.BCCompiler"* %149)
  %151 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %bodyScope
  %152 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %skipScope
  call void @"fn$main.bytecode_compiler.ScopeChoice"(%"adt$main.bytecode_compiler.Scope"* %151, %"adt$main.bytecode_compiler.Scope"* %152)
  %153 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %loopScope
  %154 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %bodyScope
  call void @"fn$main.bytecode_compiler.ScopeConcat"(%"adt$main.bytecode_compiler.Scope"* %153, %"adt$main.bytecode_compiler.Scope"* %154)
  %155 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %skipScope
  %156 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %loopScope
  call void @"fn$main.bytecode_compiler.ScopeChoice"(%"adt$main.bytecode_compiler.Scope"* %155, %"adt$main.bytecode_compiler.Scope"* %156)
  %157 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %loopScope
  %158 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %skipScope
  call void @"fn$main.bytecode_compiler.ScopeConcat"(%"adt$main.bytecode_compiler.Scope"* %157, %"adt$main.bytecode_compiler.Scope"* %158)
  %159 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %160 = call %"adt$main.bytecode_compiler.Scope"* @"fn$main.bytecode_compiler.BCCompilerLeaveScope"(%"adt$main.bytecode_compiler.BCCompiler"* %159)
  br label %214

; <label>:161:                                    ; preds = %162, %178
  br label %214

; <label>:162:                                    ; preds = %207
  %163 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %164 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %163, i32 0, i32 5
  %165 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %164
  %166 = load %"adt$main.bytecode.BasicBlock.182"*, %"adt$main.bytecode.BasicBlock.182"** %joinBlock4
  call void @"fn$main.bytecode_builder.BCBuilderJump"(%"adt$main.bytecode_builder.BCBuilder"* %165, %"adt$main.bytecode.BasicBlock.182"* %166)
  %167 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %168 = call %"adt$main.bytecode_compiler.Scope"* @"fn$main.bytecode_compiler.BCCompilerLeaveScope"(%"adt$main.bytecode_compiler.BCCompiler"* %167)
  %169 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %170 = call %"adt$main.bytecode_compiler.Scope"* @"fn$main.bytecode_compiler.BCCompilerEnterScope"(%"adt$main.bytecode_compiler.BCCompiler"* %169)
  store %"adt$main.bytecode_compiler.Scope"* %170, %"adt$main.bytecode_compiler.Scope"** %bodyScope1
  %171 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %172 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %171, i32 0, i32 5
  %173 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %172
  %174 = load %"adt$main.bytecode.BasicBlock.182"*, %"adt$main.bytecode.BasicBlock.182"** %bodyBlock
  call void @"fn$main.bytecode_builder.BCBuilderSetInsertPoint"(%"adt$main.bytecode_builder.BCBuilder"* %173, %"adt$main.bytecode.BasicBlock.182"* %174)
  %175 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  call void @"fn$main.bytecode_compiler.BCCompileCode"(%"adt$main.bytecode_compiler.BCCompiler"* %175, %"adt$main.ast_stmt.AstStmtList.216"* %229)
  %176 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %177 = call %"adt$main.bytecode_compiler.Scope"* @"fn$main.bytecode_compiler.BCCompilerLeaveScope"(%"adt$main.bytecode_compiler.BCCompiler"* %176)
  br label %161

; <label>:178:                                    ; preds = %207
  %179 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %180 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %179, i32 0, i32 5
  %181 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %180
  %182 = load %"adt$main.bytecode.BasicBlock.182"*, %"adt$main.bytecode.BasicBlock.182"** %bodyBlock
  call void @"fn$main.bytecode_builder.BCBuilderJump"(%"adt$main.bytecode_builder.BCBuilder"* %181, %"adt$main.bytecode.BasicBlock.182"* %182)
  %183 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %184 = call %"adt$main.bytecode_compiler.Scope"* @"fn$main.bytecode_compiler.BCCompilerEnterScope"(%"adt$main.bytecode_compiler.BCCompiler"* %183)
  store %"adt$main.bytecode_compiler.Scope"* %184, %"adt$main.bytecode_compiler.Scope"** %bodyScope2
  %185 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %186 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %185, i32 0, i32 5
  %187 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %186
  %188 = load %"adt$main.bytecode.BasicBlock.182"*, %"adt$main.bytecode.BasicBlock.182"** %bodyBlock
  call void @"fn$main.bytecode_builder.BCBuilderSetInsertPoint"(%"adt$main.bytecode_builder.BCBuilder"* %187, %"adt$main.bytecode.BasicBlock.182"* %188)
  %189 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  call void @"fn$main.bytecode_compiler.BCCompileCode"(%"adt$main.bytecode_compiler.BCCompiler"* %189, %"adt$main.ast_stmt.AstStmtList.216"* %229)
  %190 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %191 = call %"adt$main.bytecode_compiler.Scope"* @"fn$main.bytecode_compiler.BCCompilerLeaveScope"(%"adt$main.bytecode_compiler.BCCompiler"* %190)
  %192 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %193 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %192, i32 0, i32 5
  %194 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %193
  %195 = load %"adt$main.bytecode.BasicBlock.182"*, %"adt$main.bytecode.BasicBlock.182"** %condBlock
  call void @"fn$main.bytecode_builder.BCBuilderJump"(%"adt$main.bytecode_builder.BCBuilder"* %194, %"adt$main.bytecode.BasicBlock.182"* %195)
  %196 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %loopScope
  %197 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %bodyScope2
  call void @"fn$main.bytecode_compiler.ScopeConcat"(%"adt$main.bytecode_compiler.Scope"* %196, %"adt$main.bytecode_compiler.Scope"* %197)
  %198 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %loopScope
  %199 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %loopScope
  call void @"fn$main.bytecode_compiler.ScopeConcat"(%"adt$main.bytecode_compiler.Scope"* %198, %"adt$main.bytecode_compiler.Scope"* %199)
  %200 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %201 = call %"adt$main.bytecode_compiler.Scope"* @"fn$main.bytecode_compiler.BCCompilerLeaveScope"(%"adt$main.bytecode_compiler.BCCompiler"* %200)
  %202 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %203 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %202, i32 0, i32 8
  %204 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %203
  %205 = call %"adt$main.bytecode_compiler.Termination"* @"adtcfn$adtc$main.bytecode_compiler.Termination.Always"()
  %206 = getelementptr inbounds %"adt$main.bytecode_compiler.Scope", %"adt$main.bytecode_compiler.Scope"* %204, i32 0, i32 1
  store %"adt$main.bytecode_compiler.Termination"* %205, %"adt$main.bytecode_compiler.Termination"** %206
  br label %161

; <label>:207:                                    ; preds = %223
  %208 = bitcast %"adt$main.bytecode.ValueRef.168"* %256 to %"adtc$main.bytecode.ValueRef.ConstBool.217"*
  %209 = getelementptr inbounds %"adtc$main.bytecode.ValueRef.ConstBool.217", %"adtc$main.bytecode.ValueRef.ConstBool.217"* %208, i32 0, i32 1
  %210 = load i1, i1* %209
  %211 = bitcast %"adt$main.bytecode.ValueRef.168"* %256 to %"adtc$main.bytecode.ValueRef.ConstBool.217"*
  %212 = getelementptr inbounds %"adtc$main.bytecode.ValueRef.ConstBool.217", %"adtc$main.bytecode.ValueRef.ConstBool.217"* %211, i32 0, i32 2
  %213 = load %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRType.161"** %212
  br i1 %210, label %178, label %162

; <label>:214:                                    ; preds = %127, %161
  %215 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %216 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %215, i32 0, i32 8
  %217 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %216
  %218 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %loopScope
  call void @"fn$main.bytecode_compiler.ScopeConcat"(%"adt$main.bytecode_compiler.Scope"* %217, %"adt$main.bytecode_compiler.Scope"* %218)
  %219 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %220 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %219, i32 0, i32 5
  %221 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %220
  %222 = load %"adt$main.bytecode.BasicBlock.182"*, %"adt$main.bytecode.BasicBlock.182"** %joinBlock4
  call void @"fn$main.bytecode_builder.BCBuilderSetInsertPoint"(%"adt$main.bytecode_builder.BCBuilder"* %221, %"adt$main.bytecode.BasicBlock.182"* %222)
  br label %623

; <label>:223:                                    ; preds = %629
  %224 = bitcast %"adt$main.ast_stmt.AstStmt.205"* %630 to %"adtc$main.ast_stmt.AstStmt.While"*
  %225 = getelementptr inbounds %"adtc$main.ast_stmt.AstStmt.While", %"adtc$main.ast_stmt.AstStmt.While"* %224, i32 0, i32 2
  %226 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %225
  %227 = bitcast %"adt$main.ast_stmt.AstStmt.205"* %630 to %"adtc$main.ast_stmt.AstStmt.While"*
  %228 = getelementptr inbounds %"adtc$main.ast_stmt.AstStmt.While", %"adtc$main.ast_stmt.AstStmt.While"* %227, i32 0, i32 3
  %229 = load %"adt$main.ast_stmt.AstStmtList.216"*, %"adt$main.ast_stmt.AstStmtList.216"** %228
  %230 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %231 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %230, i32 0, i32 4
  %232 = load %"adt$main.bytecode.FunctionFrame.171"*, %"adt$main.bytecode.FunctionFrame.171"** %231
  %233 = call %"adt$main.bytecode.BasicBlock.182"* @"fn$main.bytecode.BasicBlockCreate"(%"adt$main.bytecode.FunctionFrame.171"* %232)
  store %"adt$main.bytecode.BasicBlock.182"* %233, %"adt$main.bytecode.BasicBlock.182"** %condBlock
  %234 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %235 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %234, i32 0, i32 4
  %236 = load %"adt$main.bytecode.FunctionFrame.171"*, %"adt$main.bytecode.FunctionFrame.171"** %235
  %237 = call %"adt$main.bytecode.BasicBlock.182"* @"fn$main.bytecode.BasicBlockCreate"(%"adt$main.bytecode.FunctionFrame.171"* %236)
  store %"adt$main.bytecode.BasicBlock.182"* %237, %"adt$main.bytecode.BasicBlock.182"** %bodyBlock
  %238 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %239 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %238, i32 0, i32 4
  %240 = load %"adt$main.bytecode.FunctionFrame.171"*, %"adt$main.bytecode.FunctionFrame.171"** %239
  %241 = call %"adt$main.bytecode.BasicBlock.182"* @"fn$main.bytecode.BasicBlockCreate"(%"adt$main.bytecode.FunctionFrame.171"* %240)
  store %"adt$main.bytecode.BasicBlock.182"* %241, %"adt$main.bytecode.BasicBlock.182"** %joinBlock4
  %242 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %243 = call %"adt$main.bytecode_compiler.Scope"* @"fn$main.bytecode_compiler.BCCompilerEnterScope"(%"adt$main.bytecode_compiler.BCCompiler"* %242)
  store %"adt$main.bytecode_compiler.Scope"* %243, %"adt$main.bytecode_compiler.Scope"** %loopScope
  %244 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %245 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %244, i32 0, i32 5
  %246 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %245
  %247 = load %"adt$main.bytecode.BasicBlock.182"*, %"adt$main.bytecode.BasicBlock.182"** %condBlock
  call void @"fn$main.bytecode_builder.BCBuilderJump"(%"adt$main.bytecode_builder.BCBuilder"* %246, %"adt$main.bytecode.BasicBlock.182"* %247)
  %248 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %249 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %248, i32 0, i32 5
  %250 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %249
  %251 = load %"adt$main.bytecode.BasicBlock.182"*, %"adt$main.bytecode.BasicBlock.182"** %condBlock
  call void @"fn$main.bytecode_builder.BCBuilderSetInsertPoint"(%"adt$main.bytecode_builder.BCBuilder"* %250, %"adt$main.bytecode.BasicBlock.182"* %251)
  %252 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %253 = call %"adt$main.ir.IRPrimType.163"* @"adtcfn$adtc$main.ir.IRPrimType.Bool"()
  %254 = call %"adt$main.ir.IRType.161"* @"adtcfn$adtc$main.ir.IRType.Prim"(%"adt$main.ir.IRPrimType.163"* %253)
  %255 = call %"adt$main.bytecode.ValueRef.168"* @"fn$main.bytecode_compiler.BCCompileExprAs"(%"adt$main.bytecode_compiler.BCCompiler"* %252, %"adt$main.ast_expr.AstExpr.174"* %226, %"adt$main.ir.IRType.161"* %254)
  store %"adt$main.bytecode.ValueRef.168"* %255, %"adt$main.bytecode.ValueRef.168"** %val3
  %256 = load %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRef.168"** %val3
  %257 = getelementptr inbounds %"adt$main.bytecode.ValueRef.168", %"adt$main.bytecode.ValueRef.168"* %256, i32 0, i32 0
  %258 = load i32, i32* %257
  switch i32 %258, label %127 [
    i32 3, label %207
  ]

; <label>:259:                                    ; preds = %432
  %260 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %261 = load %"adt$main.ast_stmt.AstStmt.205"*, %"adt$main.ast_stmt.AstStmt.205"** %bake.ast
  %262 = getelementptr inbounds %"adt$main.ast_stmt.AstStmt.205", %"adt$main.ast_stmt.AstStmt.205"* %261, i32 0, i32 1
  %263 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %262
  call void @"fn$main.bytecode_compiler.BCCompilerError"(%"adt$main.bytecode_compiler.BCCompiler"* %260, %"adt$main.ast.SrcLoc.167"* %263, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @36, i32 0, i32 0))
  unreachable

; <label>:264:                                    ; preds = %283, %284
  %265 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %266 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %265, i32 0, i32 8
  %267 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %266
  %268 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %cumulativeScope
  call void @"fn$main.bytecode_compiler.ScopeConcat"(%"adt$main.bytecode_compiler.Scope"* %267, %"adt$main.bytecode_compiler.Scope"* %268)
  %269 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %270 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %269, i32 0, i32 5
  %271 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %270
  %272 = load %"adt$main.bytecode.BasicBlock.182"*, %"adt$main.bytecode.BasicBlock.182"** %currentBlock
  call void @"fn$main.bytecode_builder.BCBuilderSetInsertPoint"(%"adt$main.bytecode_builder.BCBuilder"* %271, %"adt$main.bytecode.BasicBlock.182"* %272)
  %273 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %274 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %273, i32 0, i32 5
  %275 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %274
  %276 = load %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRef.168"** %targetExpr
  %277 = load %"adt$main.bytecode.ADTJumpCase.208"*, %"adt$main.bytecode.ADTJumpCase.208"** %branches
  %278 = load %"adt$main.bytecode.BasicBlock.182"*, %"adt$main.bytecode.BasicBlock.182"** %defBlock
  call void @"fn$main.bytecode_builder.BCBuilderADTJump"(%"adt$main.bytecode_builder.BCBuilder"* %275, %"adt$main.ir.IRADTDecl.165"* %411, %"adt$main.bytecode.ValueRef.168"* %276, %"adt$main.bytecode.ADTJumpCase.208"* %277, %"adt$main.bytecode.BasicBlock.182"* %278)
  %279 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %280 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %279, i32 0, i32 5
  %281 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %280
  %282 = load %"adt$main.bytecode.BasicBlock.182"*, %"adt$main.bytecode.BasicBlock.182"** %joinBlock7
  call void @"fn$main.bytecode_builder.BCBuilderSetInsertPoint"(%"adt$main.bytecode_builder.BCBuilder"* %281, %"adt$main.bytecode.BasicBlock.182"* %282)
  br label %431

; <label>:283:                                    ; preds = %397
  br label %264

; <label>:284:                                    ; preds = %397
  %285 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %286 = call %"adt$main.bytecode_compiler.Scope"* @"fn$main.bytecode_compiler.BCCompilerEnterScope"(%"adt$main.bytecode_compiler.BCCompiler"* %285)
  store %"adt$main.bytecode_compiler.Scope"* %286, %"adt$main.bytecode_compiler.Scope"** %scope5
  %287 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %288 = call %"adt$main.bytecode_compiler.Scope"* @"fn$main.bytecode_compiler.BCCompilerLeaveScope"(%"adt$main.bytecode_compiler.BCCompiler"* %287)
  %289 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %cumulativeScope
  %290 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %scope5
  call void @"fn$main.bytecode_compiler.ScopeChoice"(%"adt$main.bytecode_compiler.Scope"* %289, %"adt$main.bytecode_compiler.Scope"* %290)
  br label %264

; <label>:291:                                    ; preds = %296, %299
  %292 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %293 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %292, i32 0, i32 5
  %294 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %293
  %295 = load %"adt$main.bytecode.BasicBlock.182"*, %"adt$main.bytecode.BasicBlock.182"** %joinBlock7
  call void @"fn$main.bytecode_builder.BCBuilderJump"(%"adt$main.bytecode_builder.BCBuilder"* %294, %"adt$main.bytecode.BasicBlock.182"* %295)
  br label %394

; <label>:296:                                    ; preds = %339
  %297 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %cumulativeScope
  %298 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %scope6
  call void @"fn$main.bytecode_compiler.ScopeChoice"(%"adt$main.bytecode_compiler.Scope"* %297, %"adt$main.bytecode_compiler.Scope"* %298)
  br label %291

; <label>:299:                                    ; preds = %339
  %300 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %scope6
  store %"adt$main.bytecode_compiler.Scope"* %300, %"adt$main.bytecode_compiler.Scope"** %cumulativeScope
  br label %291

; <label>:301:                                    ; preds = %347
  %302 = bitcast %"adt$main.ir.MaybeIRADTCons.185"* %349 to %"adtc$main.ir.MaybeIRADTCons.Just.193"*
  %303 = getelementptr inbounds %"adtc$main.ir.MaybeIRADTCons.Just.193", %"adtc$main.ir.MaybeIRADTCons.Just.193"* %302, i32 0, i32 1
  %304 = load %"adt$main.ir.IRADTCons.194"*, %"adt$main.ir.IRADTCons.194"** %303
  %305 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %306 = load %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRef.168"** %targetExpr
  %307 = load %"adt$main.ast_stmt.AstPatternList.206"*, %"adt$main.ast_stmt.AstPatternList.206"** %params
  call void @"fn$main.bytecode_compiler.BCCompilerBindParams"(%"adt$main.bytecode_compiler.BCCompiler"* %305, %"adt$main.bytecode.ValueRef.168"* %306, %"adt$main.ir.IRADTCons.194"* %304, %"adt$main.ast_stmt.AstPatternList.206"* %307)
  %308 = load %"adt$main.bytecode.BasicBlock.182"*, %"adt$main.bytecode.BasicBlock.182"** %caseBlock
  %309 = load %"adt$main.bytecode.ADTJumpCase.208"*, %"adt$main.bytecode.ADTJumpCase.208"** %branches
  %310 = call %"adt$main.bytecode.ADTJumpCase.208"* @"adtcfn$adtc$main.bytecode.ADTJumpCase.Cons"(%"adt$main.ir.IRADTCons.194"* %304, %"adt$main.bytecode.BasicBlock.182"* %308, %"adt$main.bytecode.ADTJumpCase.208"* %309)
  store %"adt$main.bytecode.ADTJumpCase.208"* %310, %"adt$main.bytecode.ADTJumpCase.208"** %branches
  %311 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %312 = getelementptr inbounds %"adt$main.ast_stmt.AstCase.214", %"adt$main.ast_stmt.AstCase.214"* %375, i32 0, i32 1
  %313 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %312
  %314 = load %"adt$main.bytecode.ADTJumpCase.208"*, %"adt$main.bytecode.ADTJumpCase.208"** %branches
  %315 = call i1 @"fn$main.bytecode_compiler.BCCompilerCheckCaseCoverage"(%"adt$main.bytecode_compiler.BCCompiler"* %311, %"adt$main.ast.SrcLoc.167"* %313, %"adt$main.bytecode.ADTJumpCase.208"* %314, %"adt$main.ir.IRADTDecl.165"* %411)
  store i1 %315, i1* %catchAll
  br label %339

; <label>:316:                                    ; preds = %335
  %317 = bitcast %"adt$main.ast_stmt.AstPatternList.206"* %336 to %"adtc$main.ast_stmt.AstPatternList.Cons"*
  %318 = getelementptr inbounds %"adtc$main.ast_stmt.AstPatternList.Cons", %"adtc$main.ast_stmt.AstPatternList.Cons"* %317, i32 0, i32 1
  %319 = load %"adt$main.ast_stmt.AstPattern.215"*, %"adt$main.ast_stmt.AstPattern.215"** %318
  %320 = bitcast %"adt$main.ast_stmt.AstPatternList.206"* %336 to %"adtc$main.ast_stmt.AstPatternList.Cons"*
  %321 = getelementptr inbounds %"adtc$main.ast_stmt.AstPatternList.Cons", %"adtc$main.ast_stmt.AstPatternList.Cons"* %320, i32 0, i32 2
  %322 = load %"adt$main.ast_stmt.AstPatternList.206"*, %"adt$main.ast_stmt.AstPatternList.206"** %321
  %323 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %324 = getelementptr inbounds %"adt$main.ast_stmt.AstCase.214", %"adt$main.ast_stmt.AstCase.214"* %375, i32 0, i32 2
  %325 = load %"adt$main.ast_stmt.AstPattern.215"*, %"adt$main.ast_stmt.AstPattern.215"** %324
  %326 = getelementptr inbounds %"adt$main.ast_stmt.AstPattern.215", %"adt$main.ast_stmt.AstPattern.215"* %325, i32 0, i32 1
  %327 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %326
  call void @"fn$main.bytecode_compiler.BCCompilerError"(%"adt$main.bytecode_compiler.BCCompiler"* %323, %"adt$main.ast.SrcLoc.167"* %327, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @35, i32 0, i32 0))
  unreachable

; <label>:328:                                    ; preds = %335
  store i1 true, i1* %catchAll
  %329 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %330 = load i8*, i8** %pattern_id
  %331 = load %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRef.168"** %targetExpr
  %332 = call %"adt$main.bytecode_compiler.LocalRef"* @"adtcfn$adtc$main.bytecode_compiler.LocalRef.Value"(%"adt$main.bytecode.ValueRef.168"* %331)
  call void @"fn$main.bytecode_compiler.BCCompilerAddScopeRef"(%"adt$main.bytecode_compiler.BCCompiler"* %329, i8* %330, %"adt$main.bytecode_compiler.LocalRef"* %332)
  %333 = load %"adt$main.bytecode.BasicBlock.182"*, %"adt$main.bytecode.BasicBlock.182"** %caseBlock
  store %"adt$main.bytecode.BasicBlock.182"* %333, %"adt$main.bytecode.BasicBlock.182"** %defBlock
  br label %334

; <label>:334:                                    ; preds = %328, %335
  br label %339

; <label>:335:                                    ; preds = %347
  %336 = load %"adt$main.ast_stmt.AstPatternList.206"*, %"adt$main.ast_stmt.AstPatternList.206"** %params
  %337 = getelementptr inbounds %"adt$main.ast_stmt.AstPatternList.206", %"adt$main.ast_stmt.AstPatternList.206"* %336, i32 0, i32 0
  %338 = load i32, i32* %337
  switch i32 %338, label %334 [
    i32 1, label %316
    i32 0, label %328
  ]

; <label>:339:                                    ; preds = %301, %334, %347
  %340 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %341 = getelementptr inbounds %"adt$main.ast_stmt.AstCase.214", %"adt$main.ast_stmt.AstCase.214"* %375, i32 0, i32 3
  %342 = load %"adt$main.ast_stmt.AstStmtList.216"*, %"adt$main.ast_stmt.AstStmtList.216"** %341
  call void @"fn$main.bytecode_compiler.BCCompileCode"(%"adt$main.bytecode_compiler.BCCompiler"* %340, %"adt$main.ast_stmt.AstStmtList.216"* %342)
  %343 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %344 = call %"adt$main.bytecode_compiler.Scope"* @"fn$main.bytecode_compiler.BCCompilerLeaveScope"(%"adt$main.bytecode_compiler.BCCompiler"* %343)
  %345 = load i32, i32* %i
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %299, label %296

; <label>:347:                                    ; preds = %352
  %348 = load i8*, i8** %pattern_id
  %349 = call %"adt$main.ir.MaybeIRADTCons.185"* @"fn$main.ir.IRADTFindConstructor"(%"adt$main.ir.IRADTDecl.165"* %411, i8* %348)
  %350 = getelementptr inbounds %"adt$main.ir.MaybeIRADTCons.185", %"adt$main.ir.MaybeIRADTCons.185"* %349, i32 0, i32 0
  %351 = load i32, i32* %350
  switch i32 %351, label %339 [
    i32 1, label %301
    i32 0, label %335
  ]

; <label>:352:                                    ; preds = %370
  br label %347

; <label>:353:                                    ; preds = %370
  %354 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %355 = getelementptr inbounds %"adt$main.ast_stmt.AstCase.214", %"adt$main.ast_stmt.AstCase.214"* %375, i32 0, i32 1
  %356 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %355
  call void @"fn$main.bytecode_compiler.BCCompilerError"(%"adt$main.bytecode_compiler.BCCompiler"* %354, %"adt$main.ast.SrcLoc.167"* %356, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @34, i32 0, i32 0))
  unreachable

; <label>:357:                                    ; preds = %372
  %358 = bitcast %"adt$main.ast_stmt.AstPattern.215"* %391 to %"adtc$main.ast_stmt.AstPattern.Cons"*
  %359 = getelementptr inbounds %"adtc$main.ast_stmt.AstPattern.Cons", %"adtc$main.ast_stmt.AstPattern.Cons"* %358, i32 0, i32 2
  %360 = load %"adt$main.ast.Binder.209"*, %"adt$main.ast.Binder.209"** %359
  %361 = bitcast %"adt$main.ast_stmt.AstPattern.215"* %391 to %"adtc$main.ast_stmt.AstPattern.Cons"*
  %362 = getelementptr inbounds %"adtc$main.ast_stmt.AstPattern.Cons", %"adtc$main.ast_stmt.AstPattern.Cons"* %361, i32 0, i32 3
  %363 = load %"adt$main.ast_stmt.AstPatternList.206"*, %"adt$main.ast_stmt.AstPatternList.206"** %362
  %364 = call i8* @"fn$main.ast.BinderGetName"(%"adt$main.ast.Binder.209"* %360)
  store i8* %364, i8** %pattern_id
  store %"adt$main.ast_stmt.AstPatternList.206"* %363, %"adt$main.ast_stmt.AstPatternList.206"** %params
  br label %370

; <label>:365:                                    ; preds = %372
  %366 = bitcast %"adt$main.ast_stmt.AstPattern.215"* %391 to %"adtc$main.ast_stmt.AstPattern.Id"*
  %367 = getelementptr inbounds %"adtc$main.ast_stmt.AstPattern.Id", %"adtc$main.ast_stmt.AstPattern.Id"* %366, i32 0, i32 2
  %368 = load %"adt$main.ast.Binder.209"*, %"adt$main.ast.Binder.209"** %367
  %369 = call i8* @"fn$main.ast.BinderGetName"(%"adt$main.ast.Binder.209"* %368)
  store i8* %369, i8** %pattern_id
  br label %370

; <label>:370:                                    ; preds = %357, %365, %372
  %371 = load i1, i1* %catchAll
  br i1 %371, label %353, label %352

; <label>:372:                                    ; preds = %400
  %373 = bitcast %"adt$main.ast_stmt.AstCaseList.207"* %401 to %"adtc$main.ast_stmt.AstCaseList.Cons"*
  %374 = getelementptr inbounds %"adtc$main.ast_stmt.AstCaseList.Cons", %"adtc$main.ast_stmt.AstCaseList.Cons"* %373, i32 0, i32 1
  %375 = load %"adt$main.ast_stmt.AstCase.214"*, %"adt$main.ast_stmt.AstCase.214"** %374
  %376 = bitcast %"adt$main.ast_stmt.AstCaseList.207"* %401 to %"adtc$main.ast_stmt.AstCaseList.Cons"*
  %377 = getelementptr inbounds %"adtc$main.ast_stmt.AstCaseList.Cons", %"adtc$main.ast_stmt.AstCaseList.Cons"* %376, i32 0, i32 2
  %378 = load %"adt$main.ast_stmt.AstCaseList.207"*, %"adt$main.ast_stmt.AstCaseList.207"** %377
  store %"adt$main.ast_stmt.AstCaseList.207"* %378, %"adt$main.ast_stmt.AstCaseList.207"** %caseList
  %379 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %380 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %379, i32 0, i32 4
  %381 = load %"adt$main.bytecode.FunctionFrame.171"*, %"adt$main.bytecode.FunctionFrame.171"** %380
  %382 = call %"adt$main.bytecode.BasicBlock.182"* @"fn$main.bytecode.BasicBlockCreate"(%"adt$main.bytecode.FunctionFrame.171"* %381)
  store %"adt$main.bytecode.BasicBlock.182"* %382, %"adt$main.bytecode.BasicBlock.182"** %caseBlock
  %383 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %384 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %383, i32 0, i32 5
  %385 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %384
  %386 = load %"adt$main.bytecode.BasicBlock.182"*, %"adt$main.bytecode.BasicBlock.182"** %caseBlock
  call void @"fn$main.bytecode_builder.BCBuilderSetInsertPoint"(%"adt$main.bytecode_builder.BCBuilder"* %385, %"adt$main.bytecode.BasicBlock.182"* %386)
  %387 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %388 = call %"adt$main.bytecode_compiler.Scope"* @"fn$main.bytecode_compiler.BCCompilerEnterScope"(%"adt$main.bytecode_compiler.BCCompiler"* %387)
  store %"adt$main.bytecode_compiler.Scope"* %388, %"adt$main.bytecode_compiler.Scope"** %scope6
  %389 = call %"adt$main.ast_stmt.AstPatternList.206"* @"adtcfn$adtc$main.ast_stmt.AstPatternList.Nil"()
  store %"adt$main.ast_stmt.AstPatternList.206"* %389, %"adt$main.ast_stmt.AstPatternList.206"** %params
  %390 = getelementptr inbounds %"adt$main.ast_stmt.AstCase.214", %"adt$main.ast_stmt.AstCase.214"* %375, i32 0, i32 2
  %391 = load %"adt$main.ast_stmt.AstPattern.215"*, %"adt$main.ast_stmt.AstPattern.215"** %390
  %392 = getelementptr inbounds %"adt$main.ast_stmt.AstPattern.215", %"adt$main.ast_stmt.AstPattern.215"* %391, i32 0, i32 0
  %393 = load i32, i32* %392
  switch i32 %393, label %370 [
    i32 0, label %357
    i32 1, label %365
  ]

; <label>:394:                                    ; preds = %291, %400
  %395 = load i32, i32* %i
  %396 = add i32 %395, 1
  store i32 %396, i32* %i
  br label %404

; <label>:397:                                    ; preds = %404
  %398 = load i1, i1* %catchAll
  %399 = icmp eq i1 %398, false
  br i1 %399, label %284, label %283

; <label>:400:                                    ; preds = %404
  %401 = load %"adt$main.ast_stmt.AstCaseList.207"*, %"adt$main.ast_stmt.AstCaseList.207"** %caseList
  %402 = getelementptr inbounds %"adt$main.ast_stmt.AstCaseList.207", %"adt$main.ast_stmt.AstCaseList.207"* %401, i32 0, i32 0
  %403 = load i32, i32* %402
  switch i32 %403, label %394 [
    i32 1, label %372
  ]

; <label>:404:                                    ; preds = %394, %408
  %405 = load i32, i32* %i
  %406 = load i32, i32* %count
  %407 = icmp slt i32 %405, %406
  br i1 %407, label %400, label %397

; <label>:408:                                    ; preds = %432
  %409 = bitcast %"adt$main.ir.IRType.161"* %442 to %"adtc$main.ir.IRType.ADT.164"*
  %410 = getelementptr inbounds %"adtc$main.ir.IRType.ADT.164", %"adtc$main.ir.IRType.ADT.164"* %409, i32 0, i32 1
  %411 = load %"adt$main.ir.IRADTDecl.165"*, %"adt$main.ir.IRADTDecl.165"** %410
  %412 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %413 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %412, i32 0, i32 5
  %414 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %413
  %415 = getelementptr inbounds %"adt$main.bytecode_builder.BCBuilder", %"adt$main.bytecode_builder.BCBuilder"* %414, i32 0, i32 1
  %416 = load %"adt$main.bytecode.BasicBlock.182"*, %"adt$main.bytecode.BasicBlock.182"** %415
  store %"adt$main.bytecode.BasicBlock.182"* %416, %"adt$main.bytecode.BasicBlock.182"** %currentBlock
  %417 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %418 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %417, i32 0, i32 4
  %419 = load %"adt$main.bytecode.FunctionFrame.171"*, %"adt$main.bytecode.FunctionFrame.171"** %418
  %420 = call %"adt$main.bytecode.BasicBlock.182"* @"fn$main.bytecode.BasicBlockCreate"(%"adt$main.bytecode.FunctionFrame.171"* %419)
  store %"adt$main.bytecode.BasicBlock.182"* %420, %"adt$main.bytecode.BasicBlock.182"** %joinBlock7
  %421 = call i32 @"fn$main.bytecode_compiler.count_cases"(%"adt$main.ast_stmt.AstCaseList.207"* %438)
  store i32 %421, i32* %count
  %422 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %423 = call %"adt$main.bytecode_compiler.Scope"* @"fn$main.bytecode_compiler.BCCompilerEnterScope"(%"adt$main.bytecode_compiler.BCCompiler"* %422)
  store %"adt$main.bytecode_compiler.Scope"* %423, %"adt$main.bytecode_compiler.Scope"** %cumulativeScope
  %424 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %cumulativeScope
  %425 = call %"adt$main.bytecode_compiler.Termination"* @"adtcfn$adtc$main.bytecode_compiler.Termination.Always"()
  %426 = getelementptr inbounds %"adt$main.bytecode_compiler.Scope", %"adt$main.bytecode_compiler.Scope"* %424, i32 0, i32 1
  store %"adt$main.bytecode_compiler.Termination"* %425, %"adt$main.bytecode_compiler.Termination"** %426
  %427 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %428 = call %"adt$main.bytecode_compiler.Scope"* @"fn$main.bytecode_compiler.BCCompilerLeaveScope"(%"adt$main.bytecode_compiler.BCCompiler"* %427)
  %429 = load %"adt$main.bytecode.BasicBlock.182"*, %"adt$main.bytecode.BasicBlock.182"** %joinBlock7
  store %"adt$main.bytecode.BasicBlock.182"* %429, %"adt$main.bytecode.BasicBlock.182"** %defBlock
  store i32 0, i32* %i
  store i1 false, i1* %catchAll
  %430 = call %"adt$main.bytecode.ADTJumpCase.208"* @"adtcfn$adtc$main.bytecode.ADTJumpCase.Nil"()
  store %"adt$main.bytecode.ADTJumpCase.208"* %430, %"adt$main.bytecode.ADTJumpCase.208"** %branches
  store %"adt$main.ast_stmt.AstCaseList.207"* %438, %"adt$main.ast_stmt.AstCaseList.207"** %caseList
  br label %404

; <label>:431:                                    ; preds = %264
  br label %623

; <label>:432:                                    ; preds = %629
  %433 = bitcast %"adt$main.ast_stmt.AstStmt.205"* %630 to %"adtc$main.ast_stmt.AstStmt.Match"*
  %434 = getelementptr inbounds %"adtc$main.ast_stmt.AstStmt.Match", %"adtc$main.ast_stmt.AstStmt.Match"* %433, i32 0, i32 2
  %435 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %434
  %436 = bitcast %"adt$main.ast_stmt.AstStmt.205"* %630 to %"adtc$main.ast_stmt.AstStmt.Match"*
  %437 = getelementptr inbounds %"adtc$main.ast_stmt.AstStmt.Match", %"adtc$main.ast_stmt.AstStmt.Match"* %436, i32 0, i32 3
  %438 = load %"adt$main.ast_stmt.AstCaseList.207"*, %"adt$main.ast_stmt.AstCaseList.207"** %437
  %439 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %440 = call %"adt$main.bytecode.ValueRef.168"* @"fn$main.bytecode_compiler.BCCompileExprNoHint"(%"adt$main.bytecode_compiler.BCCompiler"* %439, %"adt$main.ast_expr.AstExpr.174"* %435)
  store %"adt$main.bytecode.ValueRef.168"* %440, %"adt$main.bytecode.ValueRef.168"** %targetExpr
  %441 = load %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRef.168"** %targetExpr
  %442 = call %"adt$main.ir.IRType.161"* @"fn$main.bytecode.ValueRefGetType"(%"adt$main.bytecode.ValueRef.168"* %441)
  %443 = getelementptr inbounds %"adt$main.ir.IRType.161", %"adt$main.ir.IRType.161"* %442, i32 0, i32 0
  %444 = load i32, i32* %443
  switch i32 %444, label %259 [
    i32 2, label %408
  ]

; <label>:445:                                    ; preds = %487
  %446 = bitcast %"adt$main.bytecode.WritableReference"* %504 to %"adtc$main.bytecode.WritableReference.ArrayIndex"*
  %447 = getelementptr inbounds %"adtc$main.bytecode.WritableReference.ArrayIndex", %"adtc$main.bytecode.WritableReference.ArrayIndex"* %446, i32 0, i32 1
  %448 = load %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRef.168"** %447
  %449 = bitcast %"adt$main.bytecode.WritableReference"* %504 to %"adtc$main.bytecode.WritableReference.ArrayIndex"*
  %450 = getelementptr inbounds %"adtc$main.bytecode.WritableReference.ArrayIndex", %"adtc$main.bytecode.WritableReference.ArrayIndex"* %449, i32 0, i32 2
  %451 = load %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRef.168"** %450
  %452 = bitcast %"adt$main.bytecode.WritableReference"* %504 to %"adtc$main.bytecode.WritableReference.ArrayIndex"*
  %453 = getelementptr inbounds %"adtc$main.bytecode.WritableReference.ArrayIndex", %"adtc$main.bytecode.WritableReference.ArrayIndex"* %452, i32 0, i32 3
  %454 = load %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRType.161"** %453
  %455 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %456 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %455, i32 0, i32 5
  %457 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %456
  %458 = load %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRef.168"** %val8
  call void @"fn$main.bytecode_builder.BCBuilderArrayWrite"(%"adt$main.bytecode_builder.BCBuilder"* %457, %"adt$main.bytecode.ValueRef.168"* %448, %"adt$main.bytecode.ValueRef.168"* %451, %"adt$main.bytecode.ValueRef.168"* %458)
  br label %486

; <label>:459:                                    ; preds = %487
  %460 = bitcast %"adt$main.bytecode.WritableReference"* %504 to %"adtc$main.bytecode.WritableReference.ADTField"*
  %461 = getelementptr inbounds %"adtc$main.bytecode.WritableReference.ADTField", %"adtc$main.bytecode.WritableReference.ADTField"* %460, i32 0, i32 1
  %462 = load %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRef.168"** %461
  %463 = bitcast %"adt$main.bytecode.WritableReference"* %504 to %"adtc$main.bytecode.WritableReference.ADTField"*
  %464 = getelementptr inbounds %"adtc$main.bytecode.WritableReference.ADTField", %"adtc$main.bytecode.WritableReference.ADTField"* %463, i32 0, i32 2
  %465 = load %"adt$main.ir.IRADTField.199"*, %"adt$main.ir.IRADTField.199"** %464
  %466 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %467 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %466, i32 0, i32 5
  %468 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %467
  %469 = load %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRef.168"** %val8
  call void @"fn$main.bytecode_builder.BCBuilderWriteADTField"(%"adt$main.bytecode_builder.BCBuilder"* %468, %"adt$main.bytecode.ValueRef.168"* %462, %"adt$main.ir.IRADTField.199"* %465, %"adt$main.bytecode.ValueRef.168"* %469)
  br label %486

; <label>:470:                                    ; preds = %487
  %471 = bitcast %"adt$main.bytecode.WritableReference"* %504 to %"adtc$main.bytecode.WritableReference.Global"*
  %472 = getelementptr inbounds %"adtc$main.bytecode.WritableReference.Global", %"adtc$main.bytecode.WritableReference.Global"* %471, i32 0, i32 1
  %473 = load %"adt$main.ir.IRGlobalDecl.191"*, %"adt$main.ir.IRGlobalDecl.191"** %472
  %474 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %475 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %474, i32 0, i32 5
  %476 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %475
  %477 = load %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRef.168"** %val8
  call void @"fn$main.bytecode_builder.BCBuilderWriteGlobal"(%"adt$main.bytecode_builder.BCBuilder"* %476, %"adt$main.ir.IRGlobalDecl.191"* %473, %"adt$main.bytecode.ValueRef.168"* %477)
  br label %486

; <label>:478:                                    ; preds = %487
  %479 = bitcast %"adt$main.bytecode.WritableReference"* %504 to %"adtc$main.bytecode.WritableReference.Variable"*
  %480 = getelementptr inbounds %"adtc$main.bytecode.WritableReference.Variable", %"adtc$main.bytecode.WritableReference.Variable"* %479, i32 0, i32 1
  %481 = load %"adt$main.bytecode.Variable.189"*, %"adt$main.bytecode.Variable.189"** %480
  %482 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %483 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %482, i32 0, i32 5
  %484 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %483
  %485 = load %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRef.168"** %val8
  call void @"fn$main.bytecode_builder.BCBuilderWriteVariable"(%"adt$main.bytecode_builder.BCBuilder"* %484, %"adt$main.bytecode.Variable.189"* %481, %"adt$main.bytecode.ValueRef.168"* %485)
  br label %486

; <label>:486:                                    ; preds = %445, %459, %470, %478, %487
  br label %623

; <label>:487:                                    ; preds = %629
  %488 = bitcast %"adt$main.ast_stmt.AstStmt.205"* %630 to %"adtc$main.ast_stmt.AstStmt.Assign"*
  %489 = getelementptr inbounds %"adtc$main.ast_stmt.AstStmt.Assign", %"adtc$main.ast_stmt.AstStmt.Assign"* %488, i32 0, i32 2
  %490 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %489
  %491 = bitcast %"adt$main.ast_stmt.AstStmt.205"* %630 to %"adtc$main.ast_stmt.AstStmt.Assign"*
  %492 = getelementptr inbounds %"adtc$main.ast_stmt.AstStmt.Assign", %"adtc$main.ast_stmt.AstStmt.Assign"* %491, i32 0, i32 3
  %493 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %492
  %494 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %495 = call %"adt$main.bytecode.WritableReference"* @"fn$main.bytecode_compiler.BCCompileWritableReference"(%"adt$main.bytecode_compiler.BCCompiler"* %494, %"adt$main.ast_expr.AstExpr.174"* %490)
  store %"adt$main.bytecode.WritableReference"* %495, %"adt$main.bytecode.WritableReference"** %ref
  %496 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %497 = load %"adt$main.bytecode.WritableReference"*, %"adt$main.bytecode.WritableReference"** %ref
  %498 = call %"adt$main.ir.IRType.161"* @"fn$main.bytecode.WritableReferenceGetType"(%"adt$main.bytecode.WritableReference"* %497)
  %499 = call %"adt$main.bytecode.ValueRef.168"* @"fn$main.bytecode_compiler.BCCompileExprAs"(%"adt$main.bytecode_compiler.BCCompiler"* %496, %"adt$main.ast_expr.AstExpr.174"* %493, %"adt$main.ir.IRType.161"* %498)
  store %"adt$main.bytecode.ValueRef.168"* %499, %"adt$main.bytecode.ValueRef.168"** %val8
  %500 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %501 = load %"adt$main.ast_stmt.AstStmt.205"*, %"adt$main.ast_stmt.AstStmt.205"** %bake.ast
  %502 = getelementptr inbounds %"adt$main.ast_stmt.AstStmt.205", %"adt$main.ast_stmt.AstStmt.205"* %501, i32 0, i32 1
  %503 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %502
  call void @"fn$main.bytecode_compiler.Loc"(%"adt$main.bytecode_compiler.BCCompiler"* %500, %"adt$main.ast.SrcLoc.167"* %503)
  %504 = load %"adt$main.bytecode.WritableReference"*, %"adt$main.bytecode.WritableReference"** %ref
  %505 = getelementptr inbounds %"adt$main.bytecode.WritableReference", %"adt$main.bytecode.WritableReference"* %504, i32 0, i32 0
  %506 = load i32, i32* %505
  switch i32 %506, label %486 [
    i32 2, label %445
    i32 3, label %459
    i32 1, label %470
    i32 0, label %478
  ]

; <label>:507:                                    ; preds = %517
  %508 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %509 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %508, i32 0, i32 8
  %510 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %509
  %511 = call %"adt$main.bytecode_compiler.Termination"* @"adtcfn$adtc$main.bytecode_compiler.Termination.Always"()
  %512 = getelementptr inbounds %"adt$main.bytecode_compiler.Scope", %"adt$main.bytecode_compiler.Scope"* %510, i32 0, i32 1
  store %"adt$main.bytecode_compiler.Termination"* %511, %"adt$main.bytecode_compiler.Termination"** %512
  %513 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %514 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %513, i32 0, i32 5
  %515 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %514
  call void @"fn$main.bytecode_builder.BCBuilderUnreachable"(%"adt$main.bytecode_builder.BCBuilder"* %515)
  br label %516

; <label>:516:                                    ; preds = %507, %517
  br label %523

; <label>:517:                                    ; preds = %524
  %518 = bitcast %"adt$main.ir.IRType.161"* %531 to %"adtc$main.ir.IRType.Prim.162"*
  %519 = getelementptr inbounds %"adtc$main.ir.IRType.Prim.162", %"adtc$main.ir.IRType.Prim.162"* %518, i32 0, i32 1
  %520 = load %"adt$main.ir.IRPrimType.163"*, %"adt$main.ir.IRPrimType.163"** %519
  %521 = getelementptr inbounds %"adt$main.ir.IRPrimType.163", %"adt$main.ir.IRPrimType.163"* %520, i32 0, i32 0
  %522 = load i32, i32* %521
  switch i32 %522, label %516 [
    i32 1, label %507
  ]

; <label>:523:                                    ; preds = %516, %524
  br label %623

; <label>:524:                                    ; preds = %629
  %525 = bitcast %"adt$main.ast_stmt.AstStmt.205"* %630 to %"adtc$main.ast_stmt.AstStmt.Eval"*
  %526 = getelementptr inbounds %"adtc$main.ast_stmt.AstStmt.Eval", %"adtc$main.ast_stmt.AstStmt.Eval"* %525, i32 0, i32 2
  %527 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %526
  %528 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %529 = call %"adt$main.bytecode.ValueRef.168"* @"fn$main.bytecode_compiler.BCCompileExprNoHint"(%"adt$main.bytecode_compiler.BCCompiler"* %528, %"adt$main.ast_expr.AstExpr.174"* %527)
  store %"adt$main.bytecode.ValueRef.168"* %529, %"adt$main.bytecode.ValueRef.168"** %val9
  %530 = load %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRef.168"** %val9
  %531 = call %"adt$main.ir.IRType.161"* @"fn$main.bytecode.ValueRefGetType"(%"adt$main.bytecode.ValueRef.168"* %530)
  %532 = getelementptr inbounds %"adt$main.ir.IRType.161", %"adt$main.ir.IRType.161"* %531, i32 0, i32 0
  %533 = load i32, i32* %532
  switch i32 %533, label %523 [
    i32 1, label %517
  ]

; <label>:534:                                    ; preds = %586
  %535 = bitcast %"adt$main.bytecode.MaybeValueRef"* %607 to %"adtc$main.bytecode.MaybeValueRef.Just"*
  %536 = getelementptr inbounds %"adtc$main.bytecode.MaybeValueRef.Just", %"adtc$main.bytecode.MaybeValueRef.Just"* %535, i32 0, i32 1
  %537 = load %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRef.168"** %536
  %538 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %539 = load %"adt$main.ast_stmt.AstStmt.205"*, %"adt$main.ast_stmt.AstStmt.205"** %bake.ast
  %540 = getelementptr inbounds %"adt$main.ast_stmt.AstStmt.205", %"adt$main.ast_stmt.AstStmt.205"* %539, i32 0, i32 1
  %541 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %540
  call void @"fn$main.bytecode_compiler.Loc"(%"adt$main.bytecode_compiler.BCCompiler"* %538, %"adt$main.ast.SrcLoc.167"* %541)
  %542 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %543 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %542, i32 0, i32 5
  %544 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %543
  %545 = load %"adt$main.bytecode.Variable.189"*, %"adt$main.bytecode.Variable.189"** %var_
  call void @"fn$main.bytecode_builder.BCBuilderWriteVariable"(%"adt$main.bytecode_builder.BCBuilder"* %544, %"adt$main.bytecode.Variable.189"* %545, %"adt$main.bytecode.ValueRef.168"* %537)
  %546 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %547 = load %"adt$main.bytecode.Variable.189"*, %"adt$main.bytecode.Variable.189"** %var_
  call void @"fn$main.bytecode_compiler.BCCompilerVarInitialized"(%"adt$main.bytecode_compiler.BCCompiler"* %546, %"adt$main.bytecode.Variable.189"* %547)
  br label %548

; <label>:548:                                    ; preds = %534, %586
  br label %623

; <label>:549:                                    ; preds = %559
  %550 = bitcast %"adt$main.ast_expr.MaybeAstExpr.211"* %619 to %"adtc$main.ast_expr.MaybeAstExpr.Just.212"*
  %551 = getelementptr inbounds %"adtc$main.ast_expr.MaybeAstExpr.Just.212", %"adtc$main.ast_expr.MaybeAstExpr.Just.212"* %550, i32 0, i32 1
  %552 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %551
  %553 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %554 = load %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRType.161"** %varType
  %555 = call %"adt$main.bytecode.ValueRef.168"* @"fn$main.bytecode_compiler.BCCompileExprAs"(%"adt$main.bytecode_compiler.BCCompiler"* %553, %"adt$main.ast_expr.AstExpr.174"* %552, %"adt$main.ir.IRType.161"* %554)
  %556 = call %"adt$main.bytecode.MaybeValueRef"* @"adtcfn$adtc$main.bytecode.MaybeValueRef.Just"(%"adt$main.bytecode.ValueRef.168"* %555)
  store %"adt$main.bytecode.MaybeValueRef"* %556, %"adt$main.bytecode.MaybeValueRef"** %varInit
  br label %558

; <label>:557:                                    ; preds = %559
  br label %558

; <label>:558:                                    ; preds = %549, %557, %559
  br label %586

; <label>:559:                                    ; preds = %610
  %560 = bitcast %"adt$main.ast_type.MaybeAstType.210"* %616 to %"adtc$main.ast_type.MaybeAstType.Just.213"*
  %561 = getelementptr inbounds %"adtc$main.ast_type.MaybeAstType.Just.213", %"adtc$main.ast_type.MaybeAstType.Just.213"* %560, i32 0, i32 1
  %562 = load %"adt$main.ast_type.AstType.186"*, %"adt$main.ast_type.AstType.186"** %561
  %563 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %564 = call %"adt$main.ir.IRType.161"* @"fn$main.bytecode_compiler.BCResolveType"(%"adt$main.bytecode_compiler.BCCompiler"* %563, %"adt$main.ast_type.AstType.186"* %562)
  store %"adt$main.ir.IRType.161"* %564, %"adt$main.ir.IRType.161"** %varType
  %565 = getelementptr inbounds %"adt$main.ast_expr.MaybeAstExpr.211", %"adt$main.ast_expr.MaybeAstExpr.211"* %619, i32 0, i32 0
  %566 = load i32, i32* %565
  switch i32 %566, label %558 [
    i32 1, label %549
    i32 0, label %557
  ]

; <label>:567:                                    ; preds = %583
  %568 = bitcast %"adt$main.ast_expr.MaybeAstExpr.211"* %619 to %"adtc$main.ast_expr.MaybeAstExpr.Just.212"*
  %569 = getelementptr inbounds %"adtc$main.ast_expr.MaybeAstExpr.Just.212", %"adtc$main.ast_expr.MaybeAstExpr.Just.212"* %568, i32 0, i32 1
  %570 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %569
  %571 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %572 = call %"adt$main.bytecode.ValueRef.168"* @"fn$main.bytecode_compiler.BCCompileExprNoHint"(%"adt$main.bytecode_compiler.BCCompiler"* %571, %"adt$main.ast_expr.AstExpr.174"* %570)
  store %"adt$main.bytecode.ValueRef.168"* %572, %"adt$main.bytecode.ValueRef.168"** %val10
  %573 = load %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRef.168"** %val10
  %574 = call %"adt$main.ir.IRType.161"* @"fn$main.bytecode.ValueRefGetType"(%"adt$main.bytecode.ValueRef.168"* %573)
  store %"adt$main.ir.IRType.161"* %574, %"adt$main.ir.IRType.161"** %varType
  %575 = load %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRef.168"** %val10
  %576 = call %"adt$main.bytecode.MaybeValueRef"* @"adtcfn$adtc$main.bytecode.MaybeValueRef.Just"(%"adt$main.bytecode.ValueRef.168"* %575)
  store %"adt$main.bytecode.MaybeValueRef"* %576, %"adt$main.bytecode.MaybeValueRef"** %varInit
  br label %582

; <label>:577:                                    ; preds = %583
  %578 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %579 = load %"adt$main.ast_stmt.AstStmt.205"*, %"adt$main.ast_stmt.AstStmt.205"** %bake.ast
  %580 = getelementptr inbounds %"adt$main.ast_stmt.AstStmt.205", %"adt$main.ast_stmt.AstStmt.205"* %579, i32 0, i32 1
  %581 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %580
  call void @"fn$main.bytecode_compiler.BCCompilerError"(%"adt$main.bytecode_compiler.BCCompiler"* %578, %"adt$main.ast.SrcLoc.167"* %581, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @33, i32 0, i32 0))
  unreachable

; <label>:582:                                    ; preds = %567, %583
  br label %586

; <label>:583:                                    ; preds = %610
  %584 = getelementptr inbounds %"adt$main.ast_expr.MaybeAstExpr.211", %"adt$main.ast_expr.MaybeAstExpr.211"* %619, i32 0, i32 0
  %585 = load i32, i32* %584
  switch i32 %585, label %582 [
    i32 1, label %567
    i32 0, label %577
  ]

; <label>:586:                                    ; preds = %558, %582, %610
  %587 = call i8* @"fn$main.ast.BinderGetName"(%"adt$main.ast.Binder.209"* %613)
  %588 = call %"adt$main.bytecode.Variable.189"* @"adtcfn$adtc$main.bytecode.Variable.Var"(i8* %587)
  store %"adt$main.bytecode.Variable.189"* %588, %"adt$main.bytecode.Variable.189"** %var_
  %589 = load %"adt$main.bytecode.Variable.189"*, %"adt$main.bytecode.Variable.189"** %var_
  %590 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %591 = load %"adt$main.ast_stmt.AstStmt.205"*, %"adt$main.ast_stmt.AstStmt.205"** %bake.ast
  %592 = getelementptr inbounds %"adt$main.ast_stmt.AstStmt.205", %"adt$main.ast_stmt.AstStmt.205"* %591, i32 0, i32 1
  %593 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %592
  %594 = call %"adt$main.bytecode.DebugLoc.202"* @"fn$main.bytecode_compiler.DbgLocCreate"(%"adt$main.bytecode_compiler.BCCompiler"* %590, %"adt$main.ast.SrcLoc.167"* %593)
  %595 = getelementptr inbounds %"adt$main.bytecode.Variable.189", %"adt$main.bytecode.Variable.189"* %589, i32 0, i32 2
  store %"adt$main.bytecode.DebugLoc.202"* %594, %"adt$main.bytecode.DebugLoc.202"** %595
  %596 = load %"adt$main.bytecode.Variable.189"*, %"adt$main.bytecode.Variable.189"** %var_
  %597 = load %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRType.161"** %varType
  %598 = getelementptr inbounds %"adt$main.bytecode.Variable.189", %"adt$main.bytecode.Variable.189"* %596, i32 0, i32 1
  store %"adt$main.ir.IRType.161"* %597, %"adt$main.ir.IRType.161"** %598
  %599 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %600 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %599, i32 0, i32 4
  %601 = load %"adt$main.bytecode.FunctionFrame.171"*, %"adt$main.bytecode.FunctionFrame.171"** %600
  %602 = load %"adt$main.bytecode.Variable.189"*, %"adt$main.bytecode.Variable.189"** %var_
  call void @"fn$main.bytecode.FunctionFrameAddVar"(%"adt$main.bytecode.FunctionFrame.171"* %601, %"adt$main.bytecode.Variable.189"* %602)
  %603 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %604 = call i8* @"fn$main.ast.BinderGetName"(%"adt$main.ast.Binder.209"* %613)
  %605 = load %"adt$main.bytecode.Variable.189"*, %"adt$main.bytecode.Variable.189"** %var_
  %606 = call %"adt$main.bytecode_compiler.LocalRef"* @"adtcfn$adtc$main.bytecode_compiler.LocalRef.Variable"(%"adt$main.bytecode.Variable.189"* %605)
  call void @"fn$main.bytecode_compiler.BCCompilerAddScopeRef"(%"adt$main.bytecode_compiler.BCCompiler"* %603, i8* %604, %"adt$main.bytecode_compiler.LocalRef"* %606)
  %607 = load %"adt$main.bytecode.MaybeValueRef"*, %"adt$main.bytecode.MaybeValueRef"** %varInit
  %608 = getelementptr inbounds %"adt$main.bytecode.MaybeValueRef", %"adt$main.bytecode.MaybeValueRef"* %607, i32 0, i32 0
  %609 = load i32, i32* %608
  switch i32 %609, label %548 [
    i32 1, label %534
  ]

; <label>:610:                                    ; preds = %629
  %611 = bitcast %"adt$main.ast_stmt.AstStmt.205"* %630 to %"adtc$main.ast_stmt.AstStmt.Var"*
  %612 = getelementptr inbounds %"adtc$main.ast_stmt.AstStmt.Var", %"adtc$main.ast_stmt.AstStmt.Var"* %611, i32 0, i32 2
  %613 = load %"adt$main.ast.Binder.209"*, %"adt$main.ast.Binder.209"** %612
  %614 = bitcast %"adt$main.ast_stmt.AstStmt.205"* %630 to %"adtc$main.ast_stmt.AstStmt.Var"*
  %615 = getelementptr inbounds %"adtc$main.ast_stmt.AstStmt.Var", %"adtc$main.ast_stmt.AstStmt.Var"* %614, i32 0, i32 3
  %616 = load %"adt$main.ast_type.MaybeAstType.210"*, %"adt$main.ast_type.MaybeAstType.210"** %615
  %617 = bitcast %"adt$main.ast_stmt.AstStmt.205"* %630 to %"adtc$main.ast_stmt.AstStmt.Var"*
  %618 = getelementptr inbounds %"adtc$main.ast_stmt.AstStmt.Var", %"adtc$main.ast_stmt.AstStmt.Var"* %617, i32 0, i32 4
  %619 = load %"adt$main.ast_expr.MaybeAstExpr.211"*, %"adt$main.ast_expr.MaybeAstExpr.211"** %618
  %620 = call %"adt$main.bytecode.MaybeValueRef"* @"adtcfn$adtc$main.bytecode.MaybeValueRef.Nothing"()
  store %"adt$main.bytecode.MaybeValueRef"* %620, %"adt$main.bytecode.MaybeValueRef"** %varInit
  %621 = getelementptr inbounds %"adt$main.ast_type.MaybeAstType.210", %"adt$main.ast_type.MaybeAstType.210"* %616, i32 0, i32 0
  %622 = load i32, i32* %621
  switch i32 %622, label %586 [
    i32 1, label %559
    i32 0, label %583
  ]

; <label>:623:                                    ; preds = %0, %32, %57, %214, %431, %486, %523, %548, %629
  ret void

; <label>:624:                                    ; preds = %633
  %625 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %626 = load %"adt$main.ast_stmt.AstStmt.205"*, %"adt$main.ast_stmt.AstStmt.205"** %bake.ast
  %627 = getelementptr inbounds %"adt$main.ast_stmt.AstStmt.205", %"adt$main.ast_stmt.AstStmt.205"* %626, i32 0, i32 1
  %628 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %627
  call void @"fn$main.bytecode_compiler.BCCompilerError"(%"adt$main.bytecode_compiler.BCCompiler"* %625, %"adt$main.ast.SrcLoc.167"* %628, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @32, i32 0, i32 0))
  unreachable

; <label>:629:                                    ; preds = %633
  %630 = load %"adt$main.ast_stmt.AstStmt.205"*, %"adt$main.ast_stmt.AstStmt.205"** %bake.ast
  %631 = getelementptr inbounds %"adt$main.ast_stmt.AstStmt.205", %"adt$main.ast_stmt.AstStmt.205"* %630, i32 0, i32 0
  %632 = load i32, i32* %631
  switch i32 %632, label %623 [
    i32 7, label %0
    i32 3, label %46
    i32 4, label %74
    i32 5, label %223
    i32 6, label %432
    i32 1, label %487
    i32 2, label %524
    i32 0, label %610
  ]

; <label>:633:                                    ; preds = %entry
  %634 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %635 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %634, i32 0, i32 8
  %636 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %635
  %637 = getelementptr inbounds %"adt$main.bytecode_compiler.Scope", %"adt$main.bytecode_compiler.Scope"* %636, i32 0, i32 1
  %638 = load %"adt$main.bytecode_compiler.Termination"*, %"adt$main.bytecode_compiler.Termination"** %637
  %639 = getelementptr inbounds %"adt$main.bytecode_compiler.Termination", %"adt$main.bytecode_compiler.Termination"* %638, i32 0, i32 0
  %640 = load i32, i32* %639
  switch i32 %640, label %629 [
    i32 0, label %624
  ]
}

declare %"adt$main.bytecode.MaybeValueRef"* @"adtcfn$adtc$main.bytecode.MaybeValueRef.Nothing"()

declare i8* @"fn$main.ast.BinderGetName"(%"adt$main.ast.Binder.209"*)

declare %"adt$main.bytecode.Variable.189"* @"adtcfn$adtc$main.bytecode.Variable.Var"(i8*)

define %"adt$main.bytecode.DebugLoc.202"* @"fn$main.bytecode_compiler.DbgLocCreate"(%"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.ast.SrcLoc.167"* %loc) {
entry:
  %bake.loc = alloca %"adt$main.ast.SrcLoc.167"*
  %bake.bc = alloca %"adt$main.bytecode_compiler.BCCompiler"*
  store %"adt$main.ast.SrcLoc.167"* %loc, %"adt$main.ast.SrcLoc.167"** %bake.loc
  store %"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  br label %0

; <label>:0:                                      ; preds = %entry
  %1 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %2 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %1, i32 0, i32 2
  %3 = load %"adt$main.ir.IRSourceFile.170"*, %"adt$main.ir.IRSourceFile.170"** %2
  %4 = getelementptr inbounds %"adt$main.ir.IRSourceFile.170", %"adt$main.ir.IRSourceFile.170"* %3, i32 0, i32 1
  %5 = load %"adt$main.ir.SourceFileRef.226"*, %"adt$main.ir.SourceFileRef.226"** %4
  %6 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %bake.loc
  %7 = call %"adt$main.bytecode.DebugLoc.202"* @"adtcfn$adtc$main.bytecode.DebugLoc.At"(%"adt$main.ir.SourceFileRef.226"* %5, %"adt$main.ast.SrcLoc.167"* %6)
  ret %"adt$main.bytecode.DebugLoc.202"* %7
}

declare void @"fn$main.bytecode.FunctionFrameAddVar"(%"adt$main.bytecode.FunctionFrame.171"*, %"adt$main.bytecode.Variable.189"*)

define %"adt$main.bytecode_compiler.LocalRef"* @"adtcfn$adtc$main.bytecode_compiler.LocalRef.Variable"(%"adt$main.bytecode.Variable.189"* %var_) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode_compiler.LocalRef.Variable"* getelementptr (%"adtc$main.bytecode_compiler.LocalRef.Variable", %"adtc$main.bytecode_compiler.LocalRef.Variable"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode_compiler.LocalRef.Variable"*
  %2 = getelementptr inbounds %"adtc$main.bytecode_compiler.LocalRef.Variable", %"adtc$main.bytecode_compiler.LocalRef.Variable"* %1, i32 0, i32 0
  store i32 1, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode_compiler.LocalRef.Variable", %"adtc$main.bytecode_compiler.LocalRef.Variable"* %1, i32 0, i32 1
  store %"adt$main.bytecode.Variable.189"* %var_, %"adt$main.bytecode.Variable.189"** %3
  %4 = bitcast %"adtc$main.bytecode_compiler.LocalRef.Variable"* %1 to %"adt$main.bytecode_compiler.LocalRef"*
  ret %"adt$main.bytecode_compiler.LocalRef"* %4
}

define void @"fn$main.bytecode_compiler.BCCompilerAddScopeRef"(%"adt$main.bytecode_compiler.BCCompiler"* %bc, i8* %name, %"adt$main.bytecode_compiler.LocalRef"* %ref) {
entry:
  %bake.ref = alloca %"adt$main.bytecode_compiler.LocalRef"*
  %bake.name = alloca i8*
  %bake.bc = alloca %"adt$main.bytecode_compiler.BCCompiler"*
  store %"adt$main.bytecode_compiler.LocalRef"* %ref, %"adt$main.bytecode_compiler.LocalRef"** %bake.ref
  store i8* %name, i8** %bake.name
  store %"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  br label %0

; <label>:0:                                      ; preds = %entry
  %1 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %2 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %1, i32 0, i32 8
  %3 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %2
  %4 = load i8*, i8** %bake.name
  %5 = load %"adt$main.bytecode_compiler.LocalRef"*, %"adt$main.bytecode_compiler.LocalRef"** %bake.ref
  %6 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %7 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %6, i32 0, i32 8
  %8 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %7
  %9 = getelementptr inbounds %"adt$main.bytecode_compiler.Scope", %"adt$main.bytecode_compiler.Scope"* %8, i32 0, i32 3
  %10 = load %"adt$main.bytecode_compiler.ScopeBinding"*, %"adt$main.bytecode_compiler.ScopeBinding"** %9
  %11 = call %"adt$main.bytecode_compiler.ScopeBinding"* @"adtcfn$adtc$main.bytecode_compiler.ScopeBinding.Binding"(i8* %4, %"adt$main.bytecode_compiler.LocalRef"* %5, %"adt$main.bytecode_compiler.ScopeBinding"* %10)
  %12 = getelementptr inbounds %"adt$main.bytecode_compiler.Scope", %"adt$main.bytecode_compiler.Scope"* %3, i32 0, i32 3
  store %"adt$main.bytecode_compiler.ScopeBinding"* %11, %"adt$main.bytecode_compiler.ScopeBinding"** %12
  ret void
}

declare %"adt$main.bytecode.MaybeValueRef"* @"adtcfn$adtc$main.bytecode.MaybeValueRef.Just"(%"adt$main.bytecode.ValueRef.168"*)

declare void @"fn$main.bytecode_builder.BCBuilderWriteVariable"(%"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode.Variable.189"*, %"adt$main.bytecode.ValueRef.168"*)

define void @"fn$main.bytecode_compiler.BCCompilerVarInitialized"(%"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.bytecode.Variable.189"* %var_) {
entry:
  %bake.var_ = alloca %"adt$main.bytecode.Variable.189"*
  %bake.bc = alloca %"adt$main.bytecode_compiler.BCCompiler"*
  store %"adt$main.bytecode.Variable.189"* %var_, %"adt$main.bytecode.Variable.189"** %bake.var_
  store %"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  br label %0

; <label>:0:                                      ; preds = %entry
  ret void
}

define %"adt$main.bytecode_compiler.Termination"* @"adtcfn$adtc$main.bytecode_compiler.Termination.Always"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode_compiler.Termination.Always"*
  %2 = getelementptr inbounds %"adtc$main.bytecode_compiler.Termination.Always", %"adtc$main.bytecode_compiler.Termination.Always"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.bytecode_compiler.Termination.Always"* %1 to %"adt$main.bytecode_compiler.Termination"*
  ret %"adt$main.bytecode_compiler.Termination"* %3
}

declare %"adt$main.ir.IRType.161"* @"fn$main.bytecode.WritableReferenceGetType"(%"adt$main.bytecode.WritableReference"*)

declare void @"fn$main.bytecode_builder.BCBuilderWriteGlobal"(%"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.ir.IRGlobalDecl.191"*, %"adt$main.bytecode.ValueRef.168"*)

declare void @"fn$main.bytecode_builder.BCBuilderWriteADTField"(%"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode.ValueRef.168"*, %"adt$main.ir.IRADTField.199"*, %"adt$main.bytecode.ValueRef.168"*)

declare void @"fn$main.bytecode_builder.BCBuilderArrayWrite"(%"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRef.168"*)

define i32 @"fn$main.bytecode_compiler.count_cases"(%"adt$main.ast_stmt.AstCaseList.207"* %cases) {
entry:
  %bake.cases = alloca %"adt$main.ast_stmt.AstCaseList.207"*
  store %"adt$main.ast_stmt.AstCaseList.207"* %cases, %"adt$main.ast_stmt.AstCaseList.207"** %bake.cases
  br label %11

; <label>:0:                                      ; preds = %11
  %1 = bitcast %"adt$main.ast_stmt.AstCaseList.207"* %12 to %"adtc$main.ast_stmt.AstCaseList.Cons"*
  %2 = getelementptr inbounds %"adtc$main.ast_stmt.AstCaseList.Cons", %"adtc$main.ast_stmt.AstCaseList.Cons"* %1, i32 0, i32 1
  %3 = load %"adt$main.ast_stmt.AstCase.214"*, %"adt$main.ast_stmt.AstCase.214"** %2
  %4 = bitcast %"adt$main.ast_stmt.AstCaseList.207"* %12 to %"adtc$main.ast_stmt.AstCaseList.Cons"*
  %5 = getelementptr inbounds %"adtc$main.ast_stmt.AstCaseList.Cons", %"adtc$main.ast_stmt.AstCaseList.Cons"* %4, i32 0, i32 2
  %6 = load %"adt$main.ast_stmt.AstCaseList.207"*, %"adt$main.ast_stmt.AstCaseList.207"** %5
  %7 = call i32 @"fn$main.bytecode_compiler.count_cases"(%"adt$main.ast_stmt.AstCaseList.207"* %6)
  %8 = add i32 %7, 1
  ret i32 %8

; <label>:9:                                      ; preds = %11
  ret i32 0

; <label>:10:                                     ; preds = %11
  unreachable

; <label>:11:                                     ; preds = %entry
  %12 = load %"adt$main.ast_stmt.AstCaseList.207"*, %"adt$main.ast_stmt.AstCaseList.207"** %bake.cases
  %13 = getelementptr inbounds %"adt$main.ast_stmt.AstCaseList.207", %"adt$main.ast_stmt.AstCaseList.207"* %12, i32 0, i32 0
  %14 = load i32, i32* %13
  switch i32 %14, label %10 [
    i32 1, label %0
    i32 0, label %9
  ]
}

define %"adt$main.bytecode_compiler.Scope"* @"fn$main.bytecode_compiler.BCCompilerEnterScope"(%"adt$main.bytecode_compiler.BCCompiler"* %bc) {
entry:
  %scope = alloca %"adt$main.bytecode_compiler.Scope"*
  %bake.bc = alloca %"adt$main.bytecode_compiler.BCCompiler"*
  store %"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  br label %0

; <label>:0:                                      ; preds = %entry
  %1 = call %"adt$main.bytecode_compiler.Scope"* @"adtcfn$adtc$main.bytecode_compiler.Scope.New"()
  store %"adt$main.bytecode_compiler.Scope"* %1, %"adt$main.bytecode_compiler.Scope"** %scope
  %2 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %scope
  %3 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %4 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %3, i32 0, i32 8
  %5 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %4
  %6 = getelementptr inbounds %"adt$main.bytecode_compiler.Scope", %"adt$main.bytecode_compiler.Scope"* %2, i32 0, i32 2
  store %"adt$main.bytecode_compiler.Scope"* %5, %"adt$main.bytecode_compiler.Scope"** %6
  %7 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %scope
  %8 = call %"adt$main.bytecode_compiler.ScopeBinding"* @"adtcfn$adtc$main.bytecode_compiler.ScopeBinding.Nil"()
  %9 = getelementptr inbounds %"adt$main.bytecode_compiler.Scope", %"adt$main.bytecode_compiler.Scope"* %7, i32 0, i32 3
  store %"adt$main.bytecode_compiler.ScopeBinding"* %8, %"adt$main.bytecode_compiler.ScopeBinding"** %9
  %10 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %scope
  %11 = call %"adt$main.bytecode_compiler.Termination"* @"adtcfn$adtc$main.bytecode_compiler.Termination.Never"()
  %12 = getelementptr inbounds %"adt$main.bytecode_compiler.Scope", %"adt$main.bytecode_compiler.Scope"* %10, i32 0, i32 1
  store %"adt$main.bytecode_compiler.Termination"* %11, %"adt$main.bytecode_compiler.Termination"** %12
  %13 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %14 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %scope
  %15 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %13, i32 0, i32 8
  store %"adt$main.bytecode_compiler.Scope"* %14, %"adt$main.bytecode_compiler.Scope"** %15
  %16 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %scope
  ret %"adt$main.bytecode_compiler.Scope"* %16
}

define %"adt$main.bytecode_compiler.Scope"* @"fn$main.bytecode_compiler.BCCompilerLeaveScope"(%"adt$main.bytecode_compiler.BCCompiler"* %bc) {
entry:
  %oldScope = alloca %"adt$main.bytecode_compiler.Scope"*
  %bake.bc = alloca %"adt$main.bytecode_compiler.BCCompiler"*
  store %"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  br label %0

; <label>:0:                                      ; preds = %entry
  %1 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %2 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %1, i32 0, i32 8
  %3 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %2
  store %"adt$main.bytecode_compiler.Scope"* %3, %"adt$main.bytecode_compiler.Scope"** %oldScope
  %4 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %5 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %6 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %5, i32 0, i32 8
  %7 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %6
  %8 = getelementptr inbounds %"adt$main.bytecode_compiler.Scope", %"adt$main.bytecode_compiler.Scope"* %7, i32 0, i32 2
  %9 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %8
  %10 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %4, i32 0, i32 8
  store %"adt$main.bytecode_compiler.Scope"* %9, %"adt$main.bytecode_compiler.Scope"** %10
  %11 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %oldScope
  ret %"adt$main.bytecode_compiler.Scope"* %11
}

declare %"adt$main.bytecode.ADTJumpCase.208"* @"adtcfn$adtc$main.bytecode.ADTJumpCase.Nil"()

declare %"adt$main.ast_stmt.AstPatternList.206"* @"adtcfn$adtc$main.ast_stmt.AstPatternList.Nil"()

define void @"fn$main.bytecode_compiler.BCCompileCode"(%"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.ast_stmt.AstStmtList.216"* %ast) {
entry:
  %bake.ast = alloca %"adt$main.ast_stmt.AstStmtList.216"*
  %bake.bc = alloca %"adt$main.bytecode_compiler.BCCompiler"*
  store %"adt$main.ast_stmt.AstStmtList.216"* %ast, %"adt$main.ast_stmt.AstStmtList.216"** %bake.ast
  store %"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  br label %16

; <label>:0:                                      ; preds = %11
  %1 = bitcast %"adt$main.ast_stmt.AstStmtList.216"* %12 to %"adtc$main.ast_stmt.AstStmtList.Cons"*
  %2 = getelementptr inbounds %"adtc$main.ast_stmt.AstStmtList.Cons", %"adtc$main.ast_stmt.AstStmtList.Cons"* %1, i32 0, i32 1
  %3 = load %"adt$main.ast_stmt.AstStmt.205"*, %"adt$main.ast_stmt.AstStmt.205"** %2
  %4 = bitcast %"adt$main.ast_stmt.AstStmtList.216"* %12 to %"adtc$main.ast_stmt.AstStmtList.Cons"*
  %5 = getelementptr inbounds %"adtc$main.ast_stmt.AstStmtList.Cons", %"adtc$main.ast_stmt.AstStmtList.Cons"* %4, i32 0, i32 2
  %6 = load %"adt$main.ast_stmt.AstStmtList.216"*, %"adt$main.ast_stmt.AstStmtList.216"** %5
  %7 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  call void @"fn$main.bytecode_compiler.BCCompileStmt"(%"adt$main.bytecode_compiler.BCCompiler"* %7, %"adt$main.ast_stmt.AstStmt.205"* %3)
  store %"adt$main.ast_stmt.AstStmtList.216"* %6, %"adt$main.ast_stmt.AstStmtList.216"** %bake.ast
  br label %9

; <label>:8:                                      ; preds = %11
  ret void

; <label>:9:                                      ; preds = %0, %11
  br label %15
                                                  ; No predecessors!
  unreachable

; <label>:11:                                     ; preds = %15
  %12 = load %"adt$main.ast_stmt.AstStmtList.216"*, %"adt$main.ast_stmt.AstStmtList.216"** %bake.ast
  %13 = getelementptr inbounds %"adt$main.ast_stmt.AstStmtList.216", %"adt$main.ast_stmt.AstStmtList.216"* %12, i32 0, i32 0
  %14 = load i32, i32* %13
  switch i32 %14, label %9 [
    i32 1, label %0
    i32 0, label %8
  ]

; <label>:15:                                     ; preds = %9, %16
  br label %11

; <label>:16:                                     ; preds = %entry
  br label %15
}

define %"adt$main.bytecode_compiler.LocalRef"* @"adtcfn$adtc$main.bytecode_compiler.LocalRef.Value"(%"adt$main.bytecode.ValueRef.168"* %value) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode_compiler.LocalRef.Value"* getelementptr (%"adtc$main.bytecode_compiler.LocalRef.Value", %"adtc$main.bytecode_compiler.LocalRef.Value"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode_compiler.LocalRef.Value"*
  %2 = getelementptr inbounds %"adtc$main.bytecode_compiler.LocalRef.Value", %"adtc$main.bytecode_compiler.LocalRef.Value"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode_compiler.LocalRef.Value", %"adtc$main.bytecode_compiler.LocalRef.Value"* %1, i32 0, i32 1
  store %"adt$main.bytecode.ValueRef.168"* %value, %"adt$main.bytecode.ValueRef.168"** %3
  %4 = bitcast %"adtc$main.bytecode_compiler.LocalRef.Value"* %1 to %"adt$main.bytecode_compiler.LocalRef"*
  ret %"adt$main.bytecode_compiler.LocalRef"* %4
}

define void @"fn$main.bytecode_compiler.BCCompilerBindParams"(%"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.bytecode.ValueRef.168"* %val, %"adt$main.ir.IRADTCons.194"* %cons, %"adt$main.ast_stmt.AstPatternList.206"* %patterns) {
entry:
  %params = alloca %"adt$main.ir.IRParamList.195"*
  %bake.patterns = alloca %"adt$main.ast_stmt.AstPatternList.206"*
  %bake.cons = alloca %"adt$main.ir.IRADTCons.194"*
  %bake.val = alloca %"adt$main.bytecode.ValueRef.168"*
  %bake.bc = alloca %"adt$main.bytecode_compiler.BCCompiler"*
  store %"adt$main.ast_stmt.AstPatternList.206"* %patterns, %"adt$main.ast_stmt.AstPatternList.206"** %bake.patterns
  store %"adt$main.ir.IRADTCons.194"* %cons, %"adt$main.ir.IRADTCons.194"** %bake.cons
  store %"adt$main.bytecode.ValueRef.168"* %val, %"adt$main.bytecode.ValueRef.168"** %bake.val
  store %"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  br label %50

; <label>:0:                                      ; preds = %18
  %1 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %2 = getelementptr inbounds %"adt$main.ast_stmt.AstPattern.215", %"adt$main.ast_stmt.AstPattern.215"* %35, i32 0, i32 1
  %3 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %2
  call void @"fn$main.bytecode_compiler.BCCompilerError"(%"adt$main.bytecode_compiler.BCCompiler"* %1, %"adt$main.ast.SrcLoc.167"* %3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @39, i32 0, i32 0))
  unreachable

; <label>:4:                                      ; preds = %18
  %5 = bitcast %"adt$main.ast_stmt.AstPattern.215"* %35 to %"adtc$main.ast_stmt.AstPattern.Id"*
  %6 = getelementptr inbounds %"adtc$main.ast_stmt.AstPattern.Id", %"adtc$main.ast_stmt.AstPattern.Id"* %5, i32 0, i32 2
  %7 = load %"adt$main.ast.Binder.209"*, %"adt$main.ast.Binder.209"** %6
  %8 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %9 = call i8* @"fn$main.ast.BinderGetName"(%"adt$main.ast.Binder.209"* %7)
  %10 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %11 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %10, i32 0, i32 5
  %12 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %11
  %13 = load %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRef.168"** %bake.val
  %14 = load %"adt$main.ir.IRADTCons.194"*, %"adt$main.ir.IRADTCons.194"** %bake.cons
  %15 = call %"adt$main.bytecode.ValueRef.168"* @"fn$main.bytecode_builder.BCBuilderADTExtract"(%"adt$main.bytecode_builder.BCBuilder"* %12, %"adt$main.bytecode.ValueRef.168"* %13, %"adt$main.ir.IRADTCons.194"* %14, %"adt$main.ir.IRParam.225"* %21)
  %16 = call %"adt$main.bytecode_compiler.LocalRef"* @"adtcfn$adtc$main.bytecode_compiler.LocalRef.Value"(%"adt$main.bytecode.ValueRef.168"* %15)
  call void @"fn$main.bytecode_compiler.BCCompilerAddScopeRef"(%"adt$main.bytecode_compiler.BCCompiler"* %8, i8* %9, %"adt$main.bytecode_compiler.LocalRef"* %16)
  br label %17

; <label>:17:                                     ; preds = %4
  store %"adt$main.ast_stmt.AstPatternList.206"* %38, %"adt$main.ast_stmt.AstPatternList.206"** %bake.patterns
  store %"adt$main.ir.IRParamList.195"* %24, %"adt$main.ir.IRParamList.195"** %params
  br label %31

; <label>:18:                                     ; preds = %32
  %19 = bitcast %"adt$main.ir.IRParamList.195"* %39 to %"adtc$main.ir.IRParamList.Cons.224"*
  %20 = getelementptr inbounds %"adtc$main.ir.IRParamList.Cons.224", %"adtc$main.ir.IRParamList.Cons.224"* %19, i32 0, i32 1
  %21 = load %"adt$main.ir.IRParam.225"*, %"adt$main.ir.IRParam.225"** %20
  %22 = bitcast %"adt$main.ir.IRParamList.195"* %39 to %"adtc$main.ir.IRParamList.Cons.224"*
  %23 = getelementptr inbounds %"adtc$main.ir.IRParamList.Cons.224", %"adtc$main.ir.IRParamList.Cons.224"* %22, i32 0, i32 2
  %24 = load %"adt$main.ir.IRParamList.195"*, %"adt$main.ir.IRParamList.195"** %23
  %25 = getelementptr inbounds %"adt$main.ast_stmt.AstPattern.215", %"adt$main.ast_stmt.AstPattern.215"* %35, i32 0, i32 0
  %26 = load i32, i32* %25
  switch i32 %26, label %0 [
    i32 1, label %4
  ]

; <label>:27:                                     ; preds = %32
  %28 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %29 = getelementptr inbounds %"adt$main.ast_stmt.AstPattern.215", %"adt$main.ast_stmt.AstPattern.215"* %35, i32 0, i32 1
  %30 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %29
  call void @"fn$main.bytecode_compiler.BCCompilerError"(%"adt$main.bytecode_compiler.BCCompiler"* %28, %"adt$main.ast.SrcLoc.167"* %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @38, i32 0, i32 0))
  unreachable

; <label>:31:                                     ; preds = %17, %32
  br label %43

; <label>:32:                                     ; preds = %45
  %33 = bitcast %"adt$main.ast_stmt.AstPatternList.206"* %46 to %"adtc$main.ast_stmt.AstPatternList.Cons"*
  %34 = getelementptr inbounds %"adtc$main.ast_stmt.AstPatternList.Cons", %"adtc$main.ast_stmt.AstPatternList.Cons"* %33, i32 0, i32 1
  %35 = load %"adt$main.ast_stmt.AstPattern.215"*, %"adt$main.ast_stmt.AstPattern.215"** %34
  %36 = bitcast %"adt$main.ast_stmt.AstPatternList.206"* %46 to %"adtc$main.ast_stmt.AstPatternList.Cons"*
  %37 = getelementptr inbounds %"adtc$main.ast_stmt.AstPatternList.Cons", %"adtc$main.ast_stmt.AstPatternList.Cons"* %36, i32 0, i32 2
  %38 = load %"adt$main.ast_stmt.AstPatternList.206"*, %"adt$main.ast_stmt.AstPatternList.206"** %37
  %39 = load %"adt$main.ir.IRParamList.195"*, %"adt$main.ir.IRParamList.195"** %params
  %40 = getelementptr inbounds %"adt$main.ir.IRParamList.195", %"adt$main.ir.IRParamList.195"* %39, i32 0, i32 0
  %41 = load i32, i32* %40
  switch i32 %41, label %31 [
    i32 1, label %18
    i32 0, label %27
  ]

; <label>:42:                                     ; preds = %45
  ret void

; <label>:43:                                     ; preds = %31, %45
  br label %49
                                                  ; No predecessors!
  unreachable

; <label>:45:                                     ; preds = %49
  %46 = load %"adt$main.ast_stmt.AstPatternList.206"*, %"adt$main.ast_stmt.AstPatternList.206"** %bake.patterns
  %47 = getelementptr inbounds %"adt$main.ast_stmt.AstPatternList.206", %"adt$main.ast_stmt.AstPatternList.206"* %46, i32 0, i32 0
  %48 = load i32, i32* %47
  switch i32 %48, label %43 [
    i32 1, label %32
    i32 0, label %42
  ]

; <label>:49:                                     ; preds = %43, %50
  br label %45

; <label>:50:                                     ; preds = %entry
  %51 = load %"adt$main.ir.IRADTCons.194"*, %"adt$main.ir.IRADTCons.194"** %bake.cons
  %52 = getelementptr inbounds %"adt$main.ir.IRADTCons.194", %"adt$main.ir.IRADTCons.194"* %51, i32 0, i32 5
  %53 = load %"adt$main.ir.IRParamList.195"*, %"adt$main.ir.IRParamList.195"** %52
  store %"adt$main.ir.IRParamList.195"* %53, %"adt$main.ir.IRParamList.195"** %params
  br label %49
}

declare %"adt$main.bytecode.ADTJumpCase.208"* @"adtcfn$adtc$main.bytecode.ADTJumpCase.Cons"(%"adt$main.ir.IRADTCons.194"*, %"adt$main.bytecode.BasicBlock.182"*, %"adt$main.bytecode.ADTJumpCase.208"*)

define i1 @"fn$main.bytecode_compiler.BCCompilerCheckCaseCoverage"(%"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.ast.SrcLoc.167"* %loc, %"adt$main.bytecode.ADTJumpCase.208"* %branches, %"adt$main.ir.IRADTDecl.165"* %adt_) {
entry:
  %consList = alloca %"adt$main.ir.IRADTConsList.220"*
  %bake.adt_ = alloca %"adt$main.ir.IRADTDecl.165"*
  %bake.branches = alloca %"adt$main.bytecode.ADTJumpCase.208"*
  %bake.loc = alloca %"adt$main.ast.SrcLoc.167"*
  %bake.bc = alloca %"adt$main.bytecode_compiler.BCCompiler"*
  store %"adt$main.ir.IRADTDecl.165"* %adt_, %"adt$main.ir.IRADTDecl.165"** %bake.adt_
  store %"adt$main.bytecode.ADTJumpCase.208"* %branches, %"adt$main.bytecode.ADTJumpCase.208"** %bake.branches
  store %"adt$main.ast.SrcLoc.167"* %loc, %"adt$main.ast.SrcLoc.167"** %bake.loc
  store %"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  br label %22

; <label>:0:                                      ; preds = %1
  store %"adt$main.ir.IRADTConsList.220"* %9, %"adt$main.ir.IRADTConsList.220"** %consList
  br label %15

; <label>:1:                                      ; preds = %3
  br label %0

; <label>:2:                                      ; preds = %3
  ret i1 false

; <label>:3:                                      ; preds = %17
  %4 = bitcast %"adt$main.ir.IRADTConsList.220"* %18 to %"adtc$main.ir.IRADTConsList.Cons.222"*
  %5 = getelementptr inbounds %"adtc$main.ir.IRADTConsList.Cons.222", %"adtc$main.ir.IRADTConsList.Cons.222"* %4, i32 0, i32 1
  %6 = load %"adt$main.ir.IRADTCons.194"*, %"adt$main.ir.IRADTCons.194"** %5
  %7 = bitcast %"adt$main.ir.IRADTConsList.220"* %18 to %"adtc$main.ir.IRADTConsList.Cons.222"*
  %8 = getelementptr inbounds %"adtc$main.ir.IRADTConsList.Cons.222", %"adtc$main.ir.IRADTConsList.Cons.222"* %7, i32 0, i32 2
  %9 = load %"adt$main.ir.IRADTConsList.220"*, %"adt$main.ir.IRADTConsList.220"** %8
  %10 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %11 = load %"adt$main.bytecode.ADTJumpCase.208"*, %"adt$main.bytecode.ADTJumpCase.208"** %bake.branches
  %12 = call i1 @"fn$main.bytecode_compiler.BCCompilerCheckCaseCovers"(%"adt$main.bytecode_compiler.BCCompiler"* %10, %"adt$main.bytecode.ADTJumpCase.208"* %11, %"adt$main.ir.IRADTCons.194"* %6)
  %13 = icmp eq i1 %12, false
  br i1 %13, label %2, label %1

; <label>:14:                                     ; preds = %17
  ret i1 true

; <label>:15:                                     ; preds = %0, %17
  br label %21
                                                  ; No predecessors!
  unreachable

; <label>:17:                                     ; preds = %21
  %18 = load %"adt$main.ir.IRADTConsList.220"*, %"adt$main.ir.IRADTConsList.220"** %consList
  %19 = getelementptr inbounds %"adt$main.ir.IRADTConsList.220", %"adt$main.ir.IRADTConsList.220"* %18, i32 0, i32 0
  %20 = load i32, i32* %19
  switch i32 %20, label %15 [
    i32 1, label %3
    i32 0, label %14
  ]

; <label>:21:                                     ; preds = %15, %22
  br label %17

; <label>:22:                                     ; preds = %entry
  %23 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %24 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %bake.loc
  %25 = load %"adt$main.bytecode.ADTJumpCase.208"*, %"adt$main.bytecode.ADTJumpCase.208"** %bake.branches
  call void @"fn$main.bytecode_compiler.BCCompilerCheckCaseCoverageDupes"(%"adt$main.bytecode_compiler.BCCompiler"* %23, %"adt$main.ast.SrcLoc.167"* %24, %"adt$main.bytecode.ADTJumpCase.208"* %25)
  %26 = load %"adt$main.ir.IRADTDecl.165"*, %"adt$main.ir.IRADTDecl.165"** %bake.adt_
  %27 = getelementptr inbounds %"adt$main.ir.IRADTDecl.165", %"adt$main.ir.IRADTDecl.165"* %26, i32 0, i32 1
  %28 = load %"adt$main.ir.IRADTConsList.220"*, %"adt$main.ir.IRADTConsList.220"** %27
  store %"adt$main.ir.IRADTConsList.220"* %28, %"adt$main.ir.IRADTConsList.220"** %consList
  br label %21
}

define void @"fn$main.bytecode_compiler.ScopeChoice"(%"adt$main.bytecode_compiler.Scope"* %left, %"adt$main.bytecode_compiler.Scope"* %right) {
entry:
  %bake.right = alloca %"adt$main.bytecode_compiler.Scope"*
  %bake.left = alloca %"adt$main.bytecode_compiler.Scope"*
  store %"adt$main.bytecode_compiler.Scope"* %right, %"adt$main.bytecode_compiler.Scope"** %bake.right
  store %"adt$main.bytecode_compiler.Scope"* %left, %"adt$main.bytecode_compiler.Scope"** %bake.left
  br label %0

; <label>:0:                                      ; preds = %entry
  %1 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %bake.left
  %2 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %bake.left
  %3 = getelementptr inbounds %"adt$main.bytecode_compiler.Scope", %"adt$main.bytecode_compiler.Scope"* %2, i32 0, i32 1
  %4 = load %"adt$main.bytecode_compiler.Termination"*, %"adt$main.bytecode_compiler.Termination"** %3
  %5 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %bake.right
  %6 = getelementptr inbounds %"adt$main.bytecode_compiler.Scope", %"adt$main.bytecode_compiler.Scope"* %5, i32 0, i32 1
  %7 = load %"adt$main.bytecode_compiler.Termination"*, %"adt$main.bytecode_compiler.Termination"** %6
  %8 = call %"adt$main.bytecode_compiler.Termination"* @"fn$main.bytecode_compiler.TerminationChoice"(%"adt$main.bytecode_compiler.Termination"* %4, %"adt$main.bytecode_compiler.Termination"* %7)
  %9 = getelementptr inbounds %"adt$main.bytecode_compiler.Scope", %"adt$main.bytecode_compiler.Scope"* %1, i32 0, i32 1
  store %"adt$main.bytecode_compiler.Termination"* %8, %"adt$main.bytecode_compiler.Termination"** %9
  ret void
}

define void @"fn$main.bytecode_compiler.ScopeConcat"(%"adt$main.bytecode_compiler.Scope"* %first, %"adt$main.bytecode_compiler.Scope"* %second) {
entry:
  %bake.second = alloca %"adt$main.bytecode_compiler.Scope"*
  %bake.first = alloca %"adt$main.bytecode_compiler.Scope"*
  store %"adt$main.bytecode_compiler.Scope"* %second, %"adt$main.bytecode_compiler.Scope"** %bake.second
  store %"adt$main.bytecode_compiler.Scope"* %first, %"adt$main.bytecode_compiler.Scope"** %bake.first
  br label %0

; <label>:0:                                      ; preds = %entry
  %1 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %bake.first
  %2 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %bake.first
  %3 = getelementptr inbounds %"adt$main.bytecode_compiler.Scope", %"adt$main.bytecode_compiler.Scope"* %2, i32 0, i32 1
  %4 = load %"adt$main.bytecode_compiler.Termination"*, %"adt$main.bytecode_compiler.Termination"** %3
  %5 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %bake.second
  %6 = getelementptr inbounds %"adt$main.bytecode_compiler.Scope", %"adt$main.bytecode_compiler.Scope"* %5, i32 0, i32 1
  %7 = load %"adt$main.bytecode_compiler.Termination"*, %"adt$main.bytecode_compiler.Termination"** %6
  %8 = call %"adt$main.bytecode_compiler.Termination"* @"fn$main.bytecode_compiler.TerminationConcat"(%"adt$main.bytecode_compiler.Termination"* %4, %"adt$main.bytecode_compiler.Termination"* %7)
  %9 = getelementptr inbounds %"adt$main.bytecode_compiler.Scope", %"adt$main.bytecode_compiler.Scope"* %1, i32 0, i32 1
  store %"adt$main.bytecode_compiler.Termination"* %8, %"adt$main.bytecode_compiler.Termination"** %9
  ret void
}

declare void @"fn$main.bytecode_builder.BCBuilderADTJump"(%"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.ir.IRADTDecl.165"*, %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ADTJumpCase.208"*, %"adt$main.bytecode.BasicBlock.182"*)

declare void @"fn$main.bytecode_builder.BCBuilderReturn"(%"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode.ValueRef.168"*)

declare %"adt$main.bytecode.ValueRef.168"* @"adtcfn$adtc$main.bytecode.ValueRef.ConstUnit"()

define void @"fn$main.bytecode_compiler.BCCompilerCheckCaseCoverageDupes"(%"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.ast.SrcLoc.167"* %loc, %"adt$main.bytecode.ADTJumpCase.208"* %branches) {
entry:
  %bake.branches = alloca %"adt$main.bytecode.ADTJumpCase.208"*
  %bake.loc = alloca %"adt$main.ast.SrcLoc.167"*
  %bake.bc = alloca %"adt$main.bytecode_compiler.BCCompiler"*
  store %"adt$main.bytecode.ADTJumpCase.208"* %branches, %"adt$main.bytecode.ADTJumpCase.208"** %bake.branches
  store %"adt$main.ast.SrcLoc.167"* %loc, %"adt$main.ast.SrcLoc.167"** %bake.loc
  store %"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  br label %25

; <label>:0:                                      ; preds = %1
  store %"adt$main.bytecode.ADTJumpCase.208"* %14, %"adt$main.bytecode.ADTJumpCase.208"** %bake.branches
  br label %18

; <label>:1:                                      ; preds = %5
  br label %0

; <label>:2:                                      ; preds = %5
  %3 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %4 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %bake.loc
  call void @"fn$main.bytecode_compiler.BCCompilerError"(%"adt$main.bytecode_compiler.BCCompiler"* %3, %"adt$main.ast.SrcLoc.167"* %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @37, i32 0, i32 0))
  unreachable

; <label>:5:                                      ; preds = %20
  %6 = bitcast %"adt$main.bytecode.ADTJumpCase.208"* %21 to %"adtc$main.bytecode.ADTJumpCase.Cons.223"*
  %7 = getelementptr inbounds %"adtc$main.bytecode.ADTJumpCase.Cons.223", %"adtc$main.bytecode.ADTJumpCase.Cons.223"* %6, i32 0, i32 1
  %8 = load %"adt$main.ir.IRADTCons.194"*, %"adt$main.ir.IRADTCons.194"** %7
  %9 = bitcast %"adt$main.bytecode.ADTJumpCase.208"* %21 to %"adtc$main.bytecode.ADTJumpCase.Cons.223"*
  %10 = getelementptr inbounds %"adtc$main.bytecode.ADTJumpCase.Cons.223", %"adtc$main.bytecode.ADTJumpCase.Cons.223"* %9, i32 0, i32 2
  %11 = load %"adt$main.bytecode.BasicBlock.182"*, %"adt$main.bytecode.BasicBlock.182"** %10
  %12 = bitcast %"adt$main.bytecode.ADTJumpCase.208"* %21 to %"adtc$main.bytecode.ADTJumpCase.Cons.223"*
  %13 = getelementptr inbounds %"adtc$main.bytecode.ADTJumpCase.Cons.223", %"adtc$main.bytecode.ADTJumpCase.Cons.223"* %12, i32 0, i32 3
  %14 = load %"adt$main.bytecode.ADTJumpCase.208"*, %"adt$main.bytecode.ADTJumpCase.208"** %13
  %15 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %16 = call i1 @"fn$main.bytecode_compiler.BCCompilerCheckCaseCovers"(%"adt$main.bytecode_compiler.BCCompiler"* %15, %"adt$main.bytecode.ADTJumpCase.208"* %14, %"adt$main.ir.IRADTCons.194"* %8)
  br i1 %16, label %2, label %1

; <label>:17:                                     ; preds = %20
  ret void

; <label>:18:                                     ; preds = %0, %20
  br label %24
                                                  ; No predecessors!
  unreachable

; <label>:20:                                     ; preds = %24
  %21 = load %"adt$main.bytecode.ADTJumpCase.208"*, %"adt$main.bytecode.ADTJumpCase.208"** %bake.branches
  %22 = getelementptr inbounds %"adt$main.bytecode.ADTJumpCase.208", %"adt$main.bytecode.ADTJumpCase.208"* %21, i32 0, i32 0
  %23 = load i32, i32* %22
  switch i32 %23, label %18 [
    i32 1, label %5
    i32 0, label %17
  ]

; <label>:24:                                     ; preds = %18, %25
  br label %20

; <label>:25:                                     ; preds = %entry
  br label %24
}

define i1 @"fn$main.bytecode_compiler.BCCompilerCheckCaseCovers"(%"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.bytecode.ADTJumpCase.208"* %branches, %"adt$main.ir.IRADTCons.194"* %cons) {
entry:
  %bake.cons = alloca %"adt$main.ir.IRADTCons.194"*
  %bake.branches = alloca %"adt$main.bytecode.ADTJumpCase.208"*
  %bake.bc = alloca %"adt$main.bytecode_compiler.BCCompiler"*
  store %"adt$main.ir.IRADTCons.194"* %cons, %"adt$main.ir.IRADTCons.194"** %bake.cons
  store %"adt$main.bytecode.ADTJumpCase.208"* %branches, %"adt$main.bytecode.ADTJumpCase.208"** %bake.branches
  store %"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  br label %29

; <label>:0:                                      ; preds = %1
  store %"adt$main.bytecode.ADTJumpCase.208"* %12, %"adt$main.bytecode.ADTJumpCase.208"** %bake.branches
  br label %22

; <label>:1:                                      ; preds = %3
  br label %0

; <label>:2:                                      ; preds = %3
  ret i1 true

; <label>:3:                                      ; preds = %24
  %4 = bitcast %"adt$main.bytecode.ADTJumpCase.208"* %25 to %"adtc$main.bytecode.ADTJumpCase.Cons.223"*
  %5 = getelementptr inbounds %"adtc$main.bytecode.ADTJumpCase.Cons.223", %"adtc$main.bytecode.ADTJumpCase.Cons.223"* %4, i32 0, i32 1
  %6 = load %"adt$main.ir.IRADTCons.194"*, %"adt$main.ir.IRADTCons.194"** %5
  %7 = bitcast %"adt$main.bytecode.ADTJumpCase.208"* %25 to %"adtc$main.bytecode.ADTJumpCase.Cons.223"*
  %8 = getelementptr inbounds %"adtc$main.bytecode.ADTJumpCase.Cons.223", %"adtc$main.bytecode.ADTJumpCase.Cons.223"* %7, i32 0, i32 2
  %9 = load %"adt$main.bytecode.BasicBlock.182"*, %"adt$main.bytecode.BasicBlock.182"** %8
  %10 = bitcast %"adt$main.bytecode.ADTJumpCase.208"* %25 to %"adtc$main.bytecode.ADTJumpCase.Cons.223"*
  %11 = getelementptr inbounds %"adtc$main.bytecode.ADTJumpCase.Cons.223", %"adtc$main.bytecode.ADTJumpCase.Cons.223"* %10, i32 0, i32 3
  %12 = load %"adt$main.bytecode.ADTJumpCase.208"*, %"adt$main.bytecode.ADTJumpCase.208"** %11
  %13 = load %"adt$main.ir.IRADTCons.194"*, %"adt$main.ir.IRADTCons.194"** %bake.cons
  %14 = bitcast %"adt$main.ir.IRADTCons.194"* %13 to i8*
  %15 = bitcast %"adt$main.ir.IRADTCons.194"* %6 to i8*
  %16 = ptrtoint i8* %14 to i64
  %17 = ptrtoint i8* %15 to i64
  %18 = sub i64 %16, %17
  %19 = sdiv exact i64 %18, ptrtoint (i8* getelementptr (i8, i8* null, i32 1) to i64)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %2, label %1

; <label>:21:                                     ; preds = %24
  ret i1 false

; <label>:22:                                     ; preds = %0, %24
  br label %28
                                                  ; No predecessors!
  unreachable

; <label>:24:                                     ; preds = %28
  %25 = load %"adt$main.bytecode.ADTJumpCase.208"*, %"adt$main.bytecode.ADTJumpCase.208"** %bake.branches
  %26 = getelementptr inbounds %"adt$main.bytecode.ADTJumpCase.208", %"adt$main.bytecode.ADTJumpCase.208"* %25, i32 0, i32 0
  %27 = load i32, i32* %26
  switch i32 %27, label %22 [
    i32 1, label %3
    i32 0, label %21
  ]

; <label>:28:                                     ; preds = %22, %29
  br label %24

; <label>:29:                                     ; preds = %entry
  br label %28
}

declare %"adt$main.bytecode.ValueRef.168"* @"fn$main.bytecode_builder.BCBuilderADTExtract"(%"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode.ValueRef.168"*, %"adt$main.ir.IRADTCons.194"*, %"adt$main.ir.IRParam.225"*)

declare %"adt$main.ir.IRType.161"* @"fn$main.ir_builder.IRBuildType"(%"adt$main.ir_builder.IRBuilder.172"*, %"adt$main.ast_type.AstType.186"*)

declare %"adt$main.ir.IRType.161"* @"fn$main.ir_compiler.IRCompileType"(%"adt$main.ir_compiler.IRCompiler.173"*, %"adt$main.ast.SrcLoc.167"*, %"adt$main.ir.IRType.161"*)

declare void @"fn$main.bytecode_builder.BCBuilderSetDebugLoc"(%"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode.DebugLoc.202"*)

declare %"adt$main.bytecode.DebugLoc.202"* @"adtcfn$adtc$main.bytecode.DebugLoc.At"(%"adt$main.ir.SourceFileRef.226"*, %"adt$main.ast.SrcLoc.167"*)

define void @"fn$main.bytecode_compiler.BCInjectParameters"(%"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.ir.IRFunctionDecl.203"* %fun, %"adt$main.bytecode.FunctionFrame.171"* %frame) {
entry:
  %var_ = alloca %"adt$main.bytecode.Variable.189"*
  %params = alloca %"adt$main.ir.IRParamList.195"*
  %bake.frame = alloca %"adt$main.bytecode.FunctionFrame.171"*
  %bake.fun = alloca %"adt$main.ir.IRFunctionDecl.203"*
  %bake.bc = alloca %"adt$main.bytecode_compiler.BCCompiler"*
  store %"adt$main.bytecode.FunctionFrame.171"* %frame, %"adt$main.bytecode.FunctionFrame.171"** %bake.frame
  store %"adt$main.ir.IRFunctionDecl.203"* %fun, %"adt$main.ir.IRFunctionDecl.203"** %bake.fun
  store %"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  br label %35

; <label>:0:                                      ; preds = %30
  %1 = bitcast %"adt$main.ir.IRParamList.195"* %31 to %"adtc$main.ir.IRParamList.Cons.224"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRParamList.Cons.224", %"adtc$main.ir.IRParamList.Cons.224"* %1, i32 0, i32 1
  %3 = load %"adt$main.ir.IRParam.225"*, %"adt$main.ir.IRParam.225"** %2
  %4 = bitcast %"adt$main.ir.IRParamList.195"* %31 to %"adtc$main.ir.IRParamList.Cons.224"*
  %5 = getelementptr inbounds %"adtc$main.ir.IRParamList.Cons.224", %"adtc$main.ir.IRParamList.Cons.224"* %4, i32 0, i32 2
  %6 = load %"adt$main.ir.IRParamList.195"*, %"adt$main.ir.IRParamList.195"** %5
  %7 = call %"adt$main.bytecode.Variable.189"* @"adtcfn$adtc$main.bytecode.Variable.Parameter"(%"adt$main.ir.IRParam.225"* %3)
  store %"adt$main.bytecode.Variable.189"* %7, %"adt$main.bytecode.Variable.189"** %var_
  %8 = load %"adt$main.bytecode.Variable.189"*, %"adt$main.bytecode.Variable.189"** %var_
  %9 = getelementptr inbounds %"adt$main.ir.IRParam.225", %"adt$main.ir.IRParam.225"* %3, i32 0, i32 3
  %10 = load %"adt$main.ir.IRTypeNode.230"*, %"adt$main.ir.IRTypeNode.230"** %9
  %11 = getelementptr inbounds %"adt$main.ir.IRTypeNode.230", %"adt$main.ir.IRTypeNode.230"* %10, i32 0, i32 3
  %12 = load %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRType.161"** %11
  %13 = getelementptr inbounds %"adt$main.bytecode.Variable.189", %"adt$main.bytecode.Variable.189"* %8, i32 0, i32 1
  store %"adt$main.ir.IRType.161"* %12, %"adt$main.ir.IRType.161"** %13
  %14 = load %"adt$main.bytecode.Variable.189"*, %"adt$main.bytecode.Variable.189"** %var_
  %15 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %16 = getelementptr inbounds %"adt$main.ir.IRParam.225", %"adt$main.ir.IRParam.225"* %3, i32 0, i32 2
  %17 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %16
  %18 = call %"adt$main.bytecode.DebugLoc.202"* @"fn$main.bytecode_compiler.DbgLocCreate"(%"adt$main.bytecode_compiler.BCCompiler"* %15, %"adt$main.ast.SrcLoc.167"* %17)
  %19 = getelementptr inbounds %"adt$main.bytecode.Variable.189", %"adt$main.bytecode.Variable.189"* %14, i32 0, i32 2
  store %"adt$main.bytecode.DebugLoc.202"* %18, %"adt$main.bytecode.DebugLoc.202"** %19
  %20 = load %"adt$main.bytecode.FunctionFrame.171"*, %"adt$main.bytecode.FunctionFrame.171"** %bake.frame
  %21 = load %"adt$main.bytecode.Variable.189"*, %"adt$main.bytecode.Variable.189"** %var_
  call void @"fn$main.bytecode.FunctionFrameAddVar"(%"adt$main.bytecode.FunctionFrame.171"* %20, %"adt$main.bytecode.Variable.189"* %21)
  store %"adt$main.ir.IRParamList.195"* %6, %"adt$main.ir.IRParamList.195"** %params
  %22 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %23 = getelementptr inbounds %"adt$main.ir.IRParam.225", %"adt$main.ir.IRParam.225"* %3, i32 0, i32 1
  %24 = load i8*, i8** %23
  %25 = load %"adt$main.bytecode.Variable.189"*, %"adt$main.bytecode.Variable.189"** %var_
  %26 = call %"adt$main.bytecode_compiler.LocalRef"* @"adtcfn$adtc$main.bytecode_compiler.LocalRef.Variable"(%"adt$main.bytecode.Variable.189"* %25)
  call void @"fn$main.bytecode_compiler.BCCompilerAddScopeRef"(%"adt$main.bytecode_compiler.BCCompiler"* %22, i8* %24, %"adt$main.bytecode_compiler.LocalRef"* %26)
  br label %28

; <label>:27:                                     ; preds = %30
  ret void

; <label>:28:                                     ; preds = %0, %30
  br label %34
                                                  ; No predecessors!
  unreachable

; <label>:30:                                     ; preds = %34
  %31 = load %"adt$main.ir.IRParamList.195"*, %"adt$main.ir.IRParamList.195"** %params
  %32 = getelementptr inbounds %"adt$main.ir.IRParamList.195", %"adt$main.ir.IRParamList.195"* %31, i32 0, i32 0
  %33 = load i32, i32* %32
  switch i32 %33, label %28 [
    i32 1, label %0
    i32 0, label %27
  ]

; <label>:34:                                     ; preds = %28, %35
  br label %30

; <label>:35:                                     ; preds = %entry
  %36 = load %"adt$main.ir.IRFunctionDecl.203"*, %"adt$main.ir.IRFunctionDecl.203"** %bake.fun
  %37 = getelementptr inbounds %"adt$main.ir.IRFunctionDecl.203", %"adt$main.ir.IRFunctionDecl.203"* %36, i32 0, i32 2
  %38 = load %"adt$main.ir.IRParamList.195"*, %"adt$main.ir.IRParamList.195"** %37
  store %"adt$main.ir.IRParamList.195"* %38, %"adt$main.ir.IRParamList.195"** %params
  br label %34
}

declare %"adt$main.bytecode.Variable.189"* @"adtcfn$adtc$main.bytecode.Variable.Parameter"(%"adt$main.ir.IRParam.225"*)

define %"adt$main.bytecode_compiler.Scope"* @"adtcfn$adtc$main.bytecode_compiler.Scope.New"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode_compiler.Scope.New"* getelementptr (%"adtc$main.bytecode_compiler.Scope.New", %"adtc$main.bytecode_compiler.Scope.New"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode_compiler.Scope.New"*
  %2 = getelementptr inbounds %"adtc$main.bytecode_compiler.Scope.New", %"adtc$main.bytecode_compiler.Scope.New"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.bytecode_compiler.Scope.New"* %1 to %"adt$main.bytecode_compiler.Scope"*
  ret %"adt$main.bytecode_compiler.Scope"* %3
}

define %"adt$main.bytecode_compiler.ScopeBinding"* @"adtcfn$adtc$main.bytecode_compiler.ScopeBinding.Nil"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode_compiler.ScopeBinding.Nil"*
  %2 = getelementptr inbounds %"adtc$main.bytecode_compiler.ScopeBinding.Nil", %"adtc$main.bytecode_compiler.ScopeBinding.Nil"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.bytecode_compiler.ScopeBinding.Nil"* %1 to %"adt$main.bytecode_compiler.ScopeBinding"*
  ret %"adt$main.bytecode_compiler.ScopeBinding"* %3
}

define %"adt$main.bytecode_compiler.Termination"* @"adtcfn$adtc$main.bytecode_compiler.Termination.Never"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode_compiler.Termination.Never"*
  %2 = getelementptr inbounds %"adtc$main.bytecode_compiler.Termination.Never", %"adtc$main.bytecode_compiler.Termination.Never"* %1, i32 0, i32 0
  store i32 2, i32* %2
  %3 = bitcast %"adtc$main.bytecode_compiler.Termination.Never"* %1 to %"adt$main.bytecode_compiler.Termination"*
  ret %"adt$main.bytecode_compiler.Termination"* %3
}

define void @"fn$main.bytecode_compiler.BCLeaveFrame"(%"adt$main.bytecode_compiler.BCCompiler"* %bc) {
entry:
  %bake.bc = alloca %"adt$main.bytecode_compiler.BCCompiler"*
  store %"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  br label %0

; <label>:0:                                      ; preds = %entry
  ret void
}

define void @"fn$main.bytecode_compiler.BCEnterFrame"(%"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.bytecode.FunctionFrame.171"* %frame) {
entry:
  %bake.frame = alloca %"adt$main.bytecode.FunctionFrame.171"*
  %bake.bc = alloca %"adt$main.bytecode_compiler.BCCompiler"*
  store %"adt$main.bytecode.FunctionFrame.171"* %frame, %"adt$main.bytecode.FunctionFrame.171"** %bake.frame
  store %"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  br label %0

; <label>:0:                                      ; preds = %entry
  %1 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %2 = load %"adt$main.bytecode.FunctionFrame.171"*, %"adt$main.bytecode.FunctionFrame.171"** %bake.frame
  %3 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %1, i32 0, i32 4
  store %"adt$main.bytecode.FunctionFrame.171"* %2, %"adt$main.bytecode.FunctionFrame.171"** %3
  %4 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %5 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %4, i32 0, i32 5
  %6 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %5
  %7 = load %"adt$main.bytecode.FunctionFrame.171"*, %"adt$main.bytecode.FunctionFrame.171"** %bake.frame
  %8 = getelementptr inbounds %"adt$main.bytecode.FunctionFrame.171", %"adt$main.bytecode.FunctionFrame.171"* %7, i32 0, i32 2
  %9 = load %"adt$main.bytecode.BasicBlock.182"*, %"adt$main.bytecode.BasicBlock.182"** %8
  call void @"fn$main.bytecode_builder.BCBuilderSetInsertPoint"(%"adt$main.bytecode_builder.BCBuilder"* %6, %"adt$main.bytecode.BasicBlock.182"* %9)
  ret void
}

define void @"fn$main.bytecode_compiler.BCLeaveFunction"(%"adt$main.bytecode_compiler.BCCompiler"* %bc) {
entry:
  %bake.bc = alloca %"adt$main.bytecode_compiler.BCCompiler"*
  store %"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  br label %0

; <label>:0:                                      ; preds = %entry
  ret void
}

define void @"fn$main.bytecode_compiler.BCEnterFuction"(%"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.ir.IRFunctionDecl.203"* %fun) {
entry:
  %bake.fun = alloca %"adt$main.ir.IRFunctionDecl.203"*
  %bake.bc = alloca %"adt$main.bytecode_compiler.BCCompiler"*
  store %"adt$main.ir.IRFunctionDecl.203"* %fun, %"adt$main.ir.IRFunctionDecl.203"** %bake.fun
  store %"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  br label %0

; <label>:0:                                      ; preds = %entry
  %1 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %2 = load %"adt$main.ir.IRFunctionDecl.203"*, %"adt$main.ir.IRFunctionDecl.203"** %bake.fun
  %3 = getelementptr inbounds %"adt$main.ir.IRFunctionDecl.203", %"adt$main.ir.IRFunctionDecl.203"* %2, i32 0, i32 3
  %4 = load %"adt$main.ir.IRTypeNode.230"*, %"adt$main.ir.IRTypeNode.230"** %3
  %5 = getelementptr inbounds %"adt$main.ir.IRTypeNode.230", %"adt$main.ir.IRTypeNode.230"* %4, i32 0, i32 3
  %6 = load %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRType.161"** %5
  %7 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %1, i32 0, i32 3
  store %"adt$main.ir.IRType.161"* %6, %"adt$main.ir.IRType.161"** %7
  ret void
}

define void @"fn$main.bytecode_compiler.BCCompileGlobal"(%"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.ir.IRGlobalDecl.191"* %global_) {
entry:
  %val = alloca %"adt$main.bytecode.ValueRef.168"*
  %scope = alloca %"adt$main.bytecode_compiler.Scope"*
  %frame = alloca %"adt$main.bytecode.FunctionFrame.171"*
  %bake.global_ = alloca %"adt$main.ir.IRGlobalDecl.191"*
  %bake.bc = alloca %"adt$main.bytecode_compiler.BCCompiler"*
  store %"adt$main.ir.IRGlobalDecl.191"* %global_, %"adt$main.ir.IRGlobalDecl.191"** %bake.global_
  store %"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  br label %0

; <label>:0:                                      ; preds = %entry
  %1 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %2 = load %"adt$main.ir.IRGlobalDecl.191"*, %"adt$main.ir.IRGlobalDecl.191"** %bake.global_
  %3 = getelementptr inbounds %"adt$main.ir.IRGlobalDecl.191", %"adt$main.ir.IRGlobalDecl.191"* %2, i32 0, i32 2
  %4 = load %"adt$main.ir.IRTypeNode.230"*, %"adt$main.ir.IRTypeNode.230"** %3
  %5 = getelementptr inbounds %"adt$main.ir.IRTypeNode.230", %"adt$main.ir.IRTypeNode.230"* %4, i32 0, i32 3
  %6 = load %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRType.161"** %5
  %7 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %1, i32 0, i32 3
  store %"adt$main.ir.IRType.161"* %6, %"adt$main.ir.IRType.161"** %7
  %8 = call %"adt$main.bytecode.FunctionFrame.171"* @"fn$main.bytecode.FunctionFrameCreate"()
  store %"adt$main.bytecode.FunctionFrame.171"* %8, %"adt$main.bytecode.FunctionFrame.171"** %frame
  %9 = load %"adt$main.ir.IRGlobalDecl.191"*, %"adt$main.ir.IRGlobalDecl.191"** %bake.global_
  %10 = getelementptr inbounds %"adt$main.ir.IRGlobalDecl.191", %"adt$main.ir.IRGlobalDecl.191"* %9, i32 0, i32 3
  %11 = load %"adt$main.ir.IRExprNode.188"*, %"adt$main.ir.IRExprNode.188"** %10
  %12 = load %"adt$main.bytecode.FunctionFrame.171"*, %"adt$main.bytecode.FunctionFrame.171"** %frame
  %13 = getelementptr inbounds %"adt$main.ir.IRExprNode.188", %"adt$main.ir.IRExprNode.188"* %11, i32 0, i32 3
  store %"adt$main.bytecode.FunctionFrame.171"* %12, %"adt$main.bytecode.FunctionFrame.171"** %13
  %14 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %15 = load %"adt$main.bytecode.FunctionFrame.171"*, %"adt$main.bytecode.FunctionFrame.171"** %frame
  call void @"fn$main.bytecode_compiler.BCEnterFrame"(%"adt$main.bytecode_compiler.BCCompiler"* %14, %"adt$main.bytecode.FunctionFrame.171"* %15)
  %16 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %17 = call %"adt$main.bytecode_compiler.Scope"* @"fn$main.bytecode_compiler.BCCompilerEnterScope"(%"adt$main.bytecode_compiler.BCCompiler"* %16)
  store %"adt$main.bytecode_compiler.Scope"* %17, %"adt$main.bytecode_compiler.Scope"** %scope
  %18 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %19 = load %"adt$main.ir.IRGlobalDecl.191"*, %"adt$main.ir.IRGlobalDecl.191"** %bake.global_
  %20 = getelementptr inbounds %"adt$main.ir.IRGlobalDecl.191", %"adt$main.ir.IRGlobalDecl.191"* %19, i32 0, i32 3
  %21 = load %"adt$main.ir.IRExprNode.188"*, %"adt$main.ir.IRExprNode.188"** %20
  %22 = getelementptr inbounds %"adt$main.ir.IRExprNode.188", %"adt$main.ir.IRExprNode.188"* %21, i32 0, i32 2
  %23 = load %"adt$main.ast_expr.AstExpr.174"*, %"adt$main.ast_expr.AstExpr.174"** %22
  %24 = load %"adt$main.ir.IRGlobalDecl.191"*, %"adt$main.ir.IRGlobalDecl.191"** %bake.global_
  %25 = getelementptr inbounds %"adt$main.ir.IRGlobalDecl.191", %"adt$main.ir.IRGlobalDecl.191"* %24, i32 0, i32 2
  %26 = load %"adt$main.ir.IRTypeNode.230"*, %"adt$main.ir.IRTypeNode.230"** %25
  %27 = getelementptr inbounds %"adt$main.ir.IRTypeNode.230", %"adt$main.ir.IRTypeNode.230"* %26, i32 0, i32 3
  %28 = load %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRType.161"** %27
  %29 = call %"adt$main.bytecode.ValueRef.168"* @"fn$main.bytecode_compiler.BCCompileExprAs"(%"adt$main.bytecode_compiler.BCCompiler"* %18, %"adt$main.ast_expr.AstExpr.174"* %23, %"adt$main.ir.IRType.161"* %28)
  store %"adt$main.bytecode.ValueRef.168"* %29, %"adt$main.bytecode.ValueRef.168"** %val
  %30 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %31 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %30, i32 0, i32 5
  %32 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %31
  %33 = load %"adt$main.bytecode.ValueRef.168"*, %"adt$main.bytecode.ValueRef.168"** %val
  call void @"fn$main.bytecode_builder.BCBuilderReturn"(%"adt$main.bytecode_builder.BCBuilder"* %32, %"adt$main.bytecode.ValueRef.168"* %33)
  %34 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %35 = call %"adt$main.bytecode_compiler.Scope"* @"fn$main.bytecode_compiler.BCCompilerLeaveScope"(%"adt$main.bytecode_compiler.BCCompiler"* %34)
  %36 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  call void @"fn$main.bytecode_compiler.BCLeaveFrame"(%"adt$main.bytecode_compiler.BCCompiler"* %36)
  ret void
}

declare %"adt$main.bytecode.FunctionFrame.171"* @"fn$main.bytecode.FunctionFrameCreate"()

define void @"fn$main.bytecode_compiler.BCCompileFunction"(%"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.ir.IRFunctionDecl.203"* %fun) {
entry:
  %returningUnit = alloca i1
  %scope = alloca %"adt$main.bytecode_compiler.Scope"*
  %frame = alloca %"adt$main.bytecode.FunctionFrame.171"*
  %bake.fun = alloca %"adt$main.ir.IRFunctionDecl.203"*
  %bake.bc = alloca %"adt$main.bytecode_compiler.BCCompiler"*
  store %"adt$main.ir.IRFunctionDecl.203"* %fun, %"adt$main.ir.IRFunctionDecl.203"** %bake.fun
  store %"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  br label %60

; <label>:0:                                      ; preds = %8
  br label %30

; <label>:1:                                      ; preds = %21
  %2 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %3 = load %"adt$main.ir.IRFunctionDecl.203"*, %"adt$main.ir.IRFunctionDecl.203"** %bake.fun
  %4 = getelementptr inbounds %"adt$main.ir.IRFunctionDecl.203", %"adt$main.ir.IRFunctionDecl.203"* %3, i32 0, i32 1
  %5 = load %"adt$main.ir.IRSymbol.176"*, %"adt$main.ir.IRSymbol.176"** %4
  %6 = getelementptr inbounds %"adt$main.ir.IRSymbol.176", %"adt$main.ir.IRSymbol.176"* %5, i32 0, i32 2
  %7 = load %"adt$main.ast.SrcLoc.167"*, %"adt$main.ast.SrcLoc.167"** %6
  call void @"fn$main.bytecode_compiler.BCCompilerError"(%"adt$main.bytecode_compiler.BCCompiler"* %2, %"adt$main.ast.SrcLoc.167"* %7, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @40, i32 0, i32 0))
  unreachable

; <label>:8:                                      ; preds = %21
  %9 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %10 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %9, i32 0, i32 5
  %11 = load %"adt$main.bytecode_builder.BCBuilder"*, %"adt$main.bytecode_builder.BCBuilder"** %10
  %12 = call %"adt$main.bytecode.ValueRef.168"* @"adtcfn$adtc$main.bytecode.ValueRef.ConstUnit"()
  call void @"fn$main.bytecode_builder.BCBuilderReturn"(%"adt$main.bytecode_builder.BCBuilder"* %11, %"adt$main.bytecode.ValueRef.168"* %12)
  br label %0

; <label>:13:                                     ; preds = %15
  store i1 true, i1* %returningUnit
  br label %14

; <label>:14:                                     ; preds = %13, %15
  br label %21

; <label>:15:                                     ; preds = %23
  %16 = bitcast %"adt$main.ir.IRType.161"* %26 to %"adtc$main.ir.IRType.Prim.162"*
  %17 = getelementptr inbounds %"adtc$main.ir.IRType.Prim.162", %"adtc$main.ir.IRType.Prim.162"* %16, i32 0, i32 1
  %18 = load %"adt$main.ir.IRPrimType.163"*, %"adt$main.ir.IRPrimType.163"** %17
  %19 = getelementptr inbounds %"adt$main.ir.IRPrimType.163", %"adt$main.ir.IRPrimType.163"* %18, i32 0, i32 0
  %20 = load i32, i32* %19
  switch i32 %20, label %14 [
    i32 0, label %13
  ]

; <label>:21:                                     ; preds = %14, %23
  %22 = load i1, i1* %returningUnit
  br i1 %22, label %8, label %1

; <label>:23:                                     ; preds = %32
  store i1 false, i1* %returningUnit
  %24 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %25 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %24, i32 0, i32 3
  %26 = load %"adt$main.ir.IRType.161"*, %"adt$main.ir.IRType.161"** %25
  %27 = getelementptr inbounds %"adt$main.ir.IRType.161", %"adt$main.ir.IRType.161"* %26, i32 0, i32 0
  %28 = load i32, i32* %27
  switch i32 %28, label %21 [
    i32 1, label %15
  ]

; <label>:29:                                     ; preds = %32
  br label %30

; <label>:30:                                     ; preds = %0, %29
  %31 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  call void @"fn$main.bytecode_compiler.BCLeaveFunction"(%"adt$main.bytecode_compiler.BCCompiler"* %31)
  br label %59

; <label>:32:                                     ; preds = %60
  %33 = bitcast %"adt$main.ir.IRFunctionBody.231"* %63 to %"adtc$main.ir.IRFunctionBody.Block.234"*
  %34 = getelementptr inbounds %"adtc$main.ir.IRFunctionBody.Block.234", %"adtc$main.ir.IRFunctionBody.Block.234"* %33, i32 0, i32 2
  %35 = load %"adt$main.ir.IRBlockNode.235"*, %"adt$main.ir.IRBlockNode.235"** %34
  %36 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %37 = load %"adt$main.ir.IRFunctionDecl.203"*, %"adt$main.ir.IRFunctionDecl.203"** %bake.fun
  call void @"fn$main.bytecode_compiler.BCEnterFuction"(%"adt$main.bytecode_compiler.BCCompiler"* %36, %"adt$main.ir.IRFunctionDecl.203"* %37)
  %38 = call %"adt$main.bytecode.FunctionFrame.171"* @"fn$main.bytecode.FunctionFrameCreate"()
  store %"adt$main.bytecode.FunctionFrame.171"* %38, %"adt$main.bytecode.FunctionFrame.171"** %frame
  %39 = load %"adt$main.bytecode.FunctionFrame.171"*, %"adt$main.bytecode.FunctionFrame.171"** %frame
  %40 = getelementptr inbounds %"adt$main.ir.IRBlockNode.235", %"adt$main.ir.IRBlockNode.235"* %35, i32 0, i32 2
  store %"adt$main.bytecode.FunctionFrame.171"* %39, %"adt$main.bytecode.FunctionFrame.171"** %40
  %41 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %42 = load %"adt$main.bytecode.FunctionFrame.171"*, %"adt$main.bytecode.FunctionFrame.171"** %frame
  call void @"fn$main.bytecode_compiler.BCEnterFrame"(%"adt$main.bytecode_compiler.BCCompiler"* %41, %"adt$main.bytecode.FunctionFrame.171"* %42)
  %43 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %44 = call %"adt$main.bytecode_compiler.Scope"* @"fn$main.bytecode_compiler.BCCompilerEnterScope"(%"adt$main.bytecode_compiler.BCCompiler"* %43)
  store %"adt$main.bytecode_compiler.Scope"* %44, %"adt$main.bytecode_compiler.Scope"** %scope
  %45 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %46 = load %"adt$main.ir.IRFunctionDecl.203"*, %"adt$main.ir.IRFunctionDecl.203"** %bake.fun
  %47 = load %"adt$main.bytecode.FunctionFrame.171"*, %"adt$main.bytecode.FunctionFrame.171"** %frame
  call void @"fn$main.bytecode_compiler.BCInjectParameters"(%"adt$main.bytecode_compiler.BCCompiler"* %45, %"adt$main.ir.IRFunctionDecl.203"* %46, %"adt$main.bytecode.FunctionFrame.171"* %47)
  %48 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %49 = getelementptr inbounds %"adt$main.ir.IRBlockNode.235", %"adt$main.ir.IRBlockNode.235"* %35, i32 0, i32 1
  %50 = load %"adt$main.ast_stmt.AstStmtList.216"*, %"adt$main.ast_stmt.AstStmtList.216"** %49
  call void @"fn$main.bytecode_compiler.BCCompileCode"(%"adt$main.bytecode_compiler.BCCompiler"* %48, %"adt$main.ast_stmt.AstStmtList.216"* %50)
  %51 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  %52 = call %"adt$main.bytecode_compiler.Scope"* @"fn$main.bytecode_compiler.BCCompilerLeaveScope"(%"adt$main.bytecode_compiler.BCCompiler"* %51)
  %53 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  call void @"fn$main.bytecode_compiler.BCLeaveFrame"(%"adt$main.bytecode_compiler.BCCompiler"* %53)
  %54 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %scope
  %55 = getelementptr inbounds %"adt$main.bytecode_compiler.Scope", %"adt$main.bytecode_compiler.Scope"* %54, i32 0, i32 1
  %56 = load %"adt$main.bytecode_compiler.Termination"*, %"adt$main.bytecode_compiler.Termination"** %55
  %57 = getelementptr inbounds %"adt$main.bytecode_compiler.Termination", %"adt$main.bytecode_compiler.Termination"* %56, i32 0, i32 0
  %58 = load i32, i32* %57
  switch i32 %58, label %23 [
    i32 0, label %29
  ]

; <label>:59:                                     ; preds = %30, %60
  ret void

; <label>:60:                                     ; preds = %entry
  %61 = load %"adt$main.ir.IRFunctionDecl.203"*, %"adt$main.ir.IRFunctionDecl.203"** %bake.fun
  %62 = getelementptr inbounds %"adt$main.ir.IRFunctionDecl.203", %"adt$main.ir.IRFunctionDecl.203"* %61, i32 0, i32 5
  %63 = load %"adt$main.ir.IRFunctionBody.231"*, %"adt$main.ir.IRFunctionBody.231"** %62
  %64 = getelementptr inbounds %"adt$main.ir.IRFunctionBody.231", %"adt$main.ir.IRFunctionBody.231"* %63, i32 0, i32 0
  %65 = load i32, i32* %64
  switch i32 %65, label %59 [
    i32 1, label %32
  ]
}

define void @"fn$main.bytecode_compiler.BCompileSymbol"(%"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.ir.IRSymbol.176"* %symbol) {
entry:
  %bake.symbol = alloca %"adt$main.ir.IRSymbol.176"*
  %bake.bc = alloca %"adt$main.bytecode_compiler.BCCompiler"*
  store %"adt$main.ir.IRSymbol.176"* %symbol, %"adt$main.ir.IRSymbol.176"** %bake.symbol
  store %"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  br label %15

; <label>:0:                                      ; preds = %15
  %1 = bitcast %"adt$main.ir.IRSymbol.176"* %16 to %"adtc$main.ir.IRSymbol.Function.204"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRSymbol.Function.204", %"adtc$main.ir.IRSymbol.Function.204"* %1, i32 0, i32 4
  %3 = load %"adt$main.ir.IRFunctionDecl.203"*, %"adt$main.ir.IRFunctionDecl.203"** %2
  %4 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  call void @"fn$main.bytecode_compiler.BCCompileFunction"(%"adt$main.bytecode_compiler.BCCompiler"* %4, %"adt$main.ir.IRFunctionDecl.203"* %3)
  br label %14

; <label>:5:                                      ; preds = %15
  %6 = bitcast %"adt$main.ir.IRSymbol.176"* %16 to %"adtc$main.ir.IRSymbol.Global.190"*
  %7 = getelementptr inbounds %"adtc$main.ir.IRSymbol.Global.190", %"adtc$main.ir.IRSymbol.Global.190"* %6, i32 0, i32 4
  %8 = load %"adt$main.ir.IRGlobalDecl.191"*, %"adt$main.ir.IRGlobalDecl.191"** %7
  %9 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  call void @"fn$main.bytecode_compiler.BCCompileGlobal"(%"adt$main.bytecode_compiler.BCCompiler"* %9, %"adt$main.ir.IRGlobalDecl.191"* %8)
  br label %14

; <label>:10:                                     ; preds = %15
  %11 = bitcast %"adt$main.ir.IRSymbol.176"* %16 to %"adtc$main.ir.IRSymbol.ADT.192"*
  %12 = getelementptr inbounds %"adtc$main.ir.IRSymbol.ADT.192", %"adtc$main.ir.IRSymbol.ADT.192"* %11, i32 0, i32 4
  %13 = load %"adt$main.ir.IRADTDecl.165"*, %"adt$main.ir.IRADTDecl.165"** %12
  br label %14

; <label>:14:                                     ; preds = %0, %5, %10, %15
  ret void

; <label>:15:                                     ; preds = %entry
  %16 = load %"adt$main.ir.IRSymbol.176"*, %"adt$main.ir.IRSymbol.176"** %bake.symbol
  %17 = getelementptr inbounds %"adt$main.ir.IRSymbol.176", %"adt$main.ir.IRSymbol.176"* %16, i32 0, i32 0
  %18 = load i32, i32* %17
  switch i32 %18, label %14 [
    i32 0, label %0
    i32 1, label %5
    i32 2, label %10
  ]
}

declare void @"fn$main.prelude.Exit"(i32)

declare i8* @jf_string_concat(i8*, i8*)

declare i8* @"fn$main.prelude.IntToStr"(i32)

declare void @"fn$main.prelude.WriteLn"(i8*)

define void @"fn$main.bytecode_compiler.BCCompileSymbols"(%"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.ir.IRSymbolList.229"* %symbols) {
entry:
  %bake.symbols = alloca %"adt$main.ir.IRSymbolList.229"*
  %bake.bc = alloca %"adt$main.bytecode_compiler.BCCompiler"*
  store %"adt$main.ir.IRSymbolList.229"* %symbols, %"adt$main.ir.IRSymbolList.229"** %bake.symbols
  store %"adt$main.bytecode_compiler.BCCompiler"* %bc, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  br label %16

; <label>:0:                                      ; preds = %11
  %1 = bitcast %"adt$main.ir.IRSymbolList.229"* %12 to %"adtc$main.ir.IRSymbolList.Cons.237"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRSymbolList.Cons.237", %"adtc$main.ir.IRSymbolList.Cons.237"* %1, i32 0, i32 1
  %3 = load %"adt$main.ir.IRSymbol.176"*, %"adt$main.ir.IRSymbol.176"** %2
  %4 = bitcast %"adt$main.ir.IRSymbolList.229"* %12 to %"adtc$main.ir.IRSymbolList.Cons.237"*
  %5 = getelementptr inbounds %"adtc$main.ir.IRSymbolList.Cons.237", %"adtc$main.ir.IRSymbolList.Cons.237"* %4, i32 0, i32 2
  %6 = load %"adt$main.ir.IRSymbolList.229"*, %"adt$main.ir.IRSymbolList.229"** %5
  %7 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bake.bc
  call void @"fn$main.bytecode_compiler.BCompileSymbol"(%"adt$main.bytecode_compiler.BCCompiler"* %7, %"adt$main.ir.IRSymbol.176"* %3)
  store %"adt$main.ir.IRSymbolList.229"* %6, %"adt$main.ir.IRSymbolList.229"** %bake.symbols
  br label %9

; <label>:8:                                      ; preds = %11
  ret void

; <label>:9:                                      ; preds = %0, %11
  br label %15
                                                  ; No predecessors!
  unreachable

; <label>:11:                                     ; preds = %15
  %12 = load %"adt$main.ir.IRSymbolList.229"*, %"adt$main.ir.IRSymbolList.229"** %bake.symbols
  %13 = getelementptr inbounds %"adt$main.ir.IRSymbolList.229", %"adt$main.ir.IRSymbolList.229"* %12, i32 0, i32 0
  %14 = load i32, i32* %13
  switch i32 %14, label %9 [
    i32 1, label %0
    i32 0, label %8
  ]

; <label>:15:                                     ; preds = %9, %16
  br label %11

; <label>:16:                                     ; preds = %entry
  br label %15
}

define %"adt$main.bytecode_compiler.BCCompiler"* @"fn$main.bytecode_compiler.BCCompilerCreate"(%"adt$main.compiler.CompilerContext.169"* %context, %"adt$main.ir.IRSourceFile.170"* %file) {
entry:
  %scope = alloca %"adt$main.bytecode_compiler.Scope"*
  %bc = alloca %"adt$main.bytecode_compiler.BCCompiler"*
  %bake.file = alloca %"adt$main.ir.IRSourceFile.170"*
  %bake.context = alloca %"adt$main.compiler.CompilerContext.169"*
  store %"adt$main.ir.IRSourceFile.170"* %file, %"adt$main.ir.IRSourceFile.170"** %bake.file
  store %"adt$main.compiler.CompilerContext.169"* %context, %"adt$main.compiler.CompilerContext.169"** %bake.context
  br label %0

; <label>:0:                                      ; preds = %entry
  %1 = call %"adt$main.bytecode_compiler.BCCompiler"* @"adtcfn$adtc$main.bytecode_compiler.BCCompiler.New"()
  store %"adt$main.bytecode_compiler.BCCompiler"* %1, %"adt$main.bytecode_compiler.BCCompiler"** %bc
  %2 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bc
  %3 = load %"adt$main.compiler.CompilerContext.169"*, %"adt$main.compiler.CompilerContext.169"** %bake.context
  %4 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %2, i32 0, i32 1
  store %"adt$main.compiler.CompilerContext.169"* %3, %"adt$main.compiler.CompilerContext.169"** %4
  %5 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bc
  %6 = load %"adt$main.ir.IRSourceFile.170"*, %"adt$main.ir.IRSourceFile.170"** %bake.file
  %7 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %5, i32 0, i32 2
  store %"adt$main.ir.IRSourceFile.170"* %6, %"adt$main.ir.IRSourceFile.170"** %7
  %8 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bc
  %9 = call %"adt$main.bytecode_builder.BCBuilder"* @"fn$main.bytecode_builder.BCBuilderCreate"()
  %10 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %8, i32 0, i32 5
  store %"adt$main.bytecode_builder.BCBuilder"* %9, %"adt$main.bytecode_builder.BCBuilder"** %10
  %11 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bc
  %12 = load %"adt$main.compiler.CompilerContext.169"*, %"adt$main.compiler.CompilerContext.169"** %bake.context
  %13 = call %"adt$main.ir_builder.IRBuilder.172"* @"fn$main.ir_builder.IRBuilderCreate"(%"adt$main.compiler.CompilerContext.169"* %12)
  %14 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %11, i32 0, i32 6
  store %"adt$main.ir_builder.IRBuilder.172"* %13, %"adt$main.ir_builder.IRBuilder.172"** %14
  %15 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bc
  %16 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %15, i32 0, i32 6
  %17 = load %"adt$main.ir_builder.IRBuilder.172"*, %"adt$main.ir_builder.IRBuilder.172"** %16
  %18 = load %"adt$main.ir.IRSourceFile.170"*, %"adt$main.ir.IRSourceFile.170"** %bake.file
  %19 = getelementptr inbounds %"adt$main.ir_builder.IRBuilder.172", %"adt$main.ir_builder.IRBuilder.172"* %17, i32 0, i32 2
  store %"adt$main.ir.IRSourceFile.170"* %18, %"adt$main.ir.IRSourceFile.170"** %19
  %20 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bc
  %21 = load %"adt$main.compiler.CompilerContext.169"*, %"adt$main.compiler.CompilerContext.169"** %bake.context
  %22 = load %"adt$main.ir.IRSourceFile.170"*, %"adt$main.ir.IRSourceFile.170"** %bake.file
  %23 = call %"adt$main.ir_compiler.IRCompiler.173"* @"fn$main.ir_compiler.IRCompilerCreate"(%"adt$main.compiler.CompilerContext.169"* %21, %"adt$main.ir.IRSourceFile.170"* %22)
  %24 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %20, i32 0, i32 7
  store %"adt$main.ir_compiler.IRCompiler.173"* %23, %"adt$main.ir_compiler.IRCompiler.173"** %24
  %25 = call %"adt$main.bytecode_compiler.Scope"* @"adtcfn$adtc$main.bytecode_compiler.Scope.New"()
  store %"adt$main.bytecode_compiler.Scope"* %25, %"adt$main.bytecode_compiler.Scope"** %scope
  %26 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %scope
  %27 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %scope
  %28 = getelementptr inbounds %"adt$main.bytecode_compiler.Scope", %"adt$main.bytecode_compiler.Scope"* %26, i32 0, i32 2
  store %"adt$main.bytecode_compiler.Scope"* %27, %"adt$main.bytecode_compiler.Scope"** %28
  %29 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %scope
  %30 = call %"adt$main.bytecode_compiler.ScopeBinding"* @"adtcfn$adtc$main.bytecode_compiler.ScopeBinding.Nil"()
  %31 = getelementptr inbounds %"adt$main.bytecode_compiler.Scope", %"adt$main.bytecode_compiler.Scope"* %29, i32 0, i32 3
  store %"adt$main.bytecode_compiler.ScopeBinding"* %30, %"adt$main.bytecode_compiler.ScopeBinding"** %31
  %32 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bc
  %33 = load %"adt$main.bytecode_compiler.Scope"*, %"adt$main.bytecode_compiler.Scope"** %scope
  %34 = getelementptr inbounds %"adt$main.bytecode_compiler.BCCompiler", %"adt$main.bytecode_compiler.BCCompiler"* %32, i32 0, i32 8
  store %"adt$main.bytecode_compiler.Scope"* %33, %"adt$main.bytecode_compiler.Scope"** %34
  %35 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %bc
  ret %"adt$main.bytecode_compiler.BCCompiler"* %35
}

define %"adt$main.bytecode_compiler.BCCompiler"* @"adtcfn$adtc$main.bytecode_compiler.BCCompiler.New"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode_compiler.BCCompiler.New"* getelementptr (%"adtc$main.bytecode_compiler.BCCompiler.New", %"adtc$main.bytecode_compiler.BCCompiler.New"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode_compiler.BCCompiler.New"*
  %2 = getelementptr inbounds %"adtc$main.bytecode_compiler.BCCompiler.New", %"adtc$main.bytecode_compiler.BCCompiler.New"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.bytecode_compiler.BCCompiler.New"* %1 to %"adt$main.bytecode_compiler.BCCompiler"*
  ret %"adt$main.bytecode_compiler.BCCompiler"* %3
}

declare %"adt$main.bytecode_builder.BCBuilder"* @"fn$main.bytecode_builder.BCBuilderCreate"()

declare %"adt$main.ir_builder.IRBuilder.172"* @"fn$main.ir_builder.IRBuilderCreate"(%"adt$main.compiler.CompilerContext.169"*)

declare %"adt$main.ir_compiler.IRCompiler.173"* @"fn$main.ir_compiler.IRCompilerCreate"(%"adt$main.compiler.CompilerContext.169"*, %"adt$main.ir.IRSourceFile.170"*)

define void @"fn$main.bytecode_compiler.BCCompileFile"(%"adt$main.compiler.CompilerContext.169"* %context, %"adt$main.ir.IRSourceFile.170"* %file) {
entry:
  %compiler = alloca %"adt$main.bytecode_compiler.BCCompiler"*
  %bake.file = alloca %"adt$main.ir.IRSourceFile.170"*
  %bake.context = alloca %"adt$main.compiler.CompilerContext.169"*
  store %"adt$main.ir.IRSourceFile.170"* %file, %"adt$main.ir.IRSourceFile.170"** %bake.file
  store %"adt$main.compiler.CompilerContext.169"* %context, %"adt$main.compiler.CompilerContext.169"** %bake.context
  br label %0

; <label>:0:                                      ; preds = %entry
  %1 = load %"adt$main.compiler.CompilerContext.169"*, %"adt$main.compiler.CompilerContext.169"** %bake.context
  %2 = load %"adt$main.ir.IRSourceFile.170"*, %"adt$main.ir.IRSourceFile.170"** %bake.file
  %3 = call %"adt$main.bytecode_compiler.BCCompiler"* @"fn$main.bytecode_compiler.BCCompilerCreate"(%"adt$main.compiler.CompilerContext.169"* %1, %"adt$main.ir.IRSourceFile.170"* %2)
  store %"adt$main.bytecode_compiler.BCCompiler"* %3, %"adt$main.bytecode_compiler.BCCompiler"** %compiler
  %4 = load %"adt$main.ir.IRSourceFile.170"*, %"adt$main.ir.IRSourceFile.170"** %bake.file
  %5 = getelementptr inbounds %"adt$main.ir.IRSourceFile.170", %"adt$main.ir.IRSourceFile.170"* %4, i32 0, i32 1
  %6 = load %"adt$main.ir.SourceFileRef.226"*, %"adt$main.ir.SourceFileRef.226"** %5
  %7 = getelementptr inbounds %"adt$main.ir.SourceFileRef.226", %"adt$main.ir.SourceFileRef.226"* %6, i32 0, i32 4
  %8 = load i8*, i8** %7
  %9 = call i8* @jf_string_concat(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @44, i32 0, i32 0), i8* %8)
  %10 = call i8* @jf_string_concat(i8* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @45, i32 0, i32 0))
  call void @"fn$main.prelude.WriteLn"(i8* %10)
  %11 = load %"adt$main.bytecode_compiler.BCCompiler"*, %"adt$main.bytecode_compiler.BCCompiler"** %compiler
  %12 = load %"adt$main.ir.IRSourceFile.170"*, %"adt$main.ir.IRSourceFile.170"** %bake.file
  %13 = getelementptr inbounds %"adt$main.ir.IRSourceFile.170", %"adt$main.ir.IRSourceFile.170"* %12, i32 0, i32 4
  %14 = load %"adt$main.ir.IRSymbolList.229"*, %"adt$main.ir.IRSymbolList.229"** %13
  call void @"fn$main.bytecode_compiler.BCCompileSymbols"(%"adt$main.bytecode_compiler.BCCompiler"* %11, %"adt$main.ir.IRSymbolList.229"* %14)
  %15 = load %"adt$main.ir.IRSourceFile.170"*, %"adt$main.ir.IRSourceFile.170"** %bake.file
  %16 = getelementptr inbounds %"adt$main.ir.IRSourceFile.170", %"adt$main.ir.IRSourceFile.170"* %15, i32 0, i32 1
  %17 = load %"adt$main.ir.SourceFileRef.226"*, %"adt$main.ir.SourceFileRef.226"** %16
  %18 = getelementptr inbounds %"adt$main.ir.SourceFileRef.226", %"adt$main.ir.SourceFileRef.226"* %17, i32 0, i32 4
  %19 = load i8*, i8** %18
  %20 = call i8* @jf_string_concat(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @46, i32 0, i32 0), i8* %19)
  %21 = call i8* @jf_string_concat(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @47, i32 0, i32 0))
  call void @"fn$main.prelude.WriteLn"(i8* %21)
  ret void
}

define void @"fn$main.bytecode_compiler.BCCompileUnit"(%"adt$main.compiler.CompilerContext.169"* %context, %"adt$main.ir.IRCompilationUnit.227"* %unit_) {
entry:
  %files = alloca %"adt$main.ir.IRSourceFileList.238"*
  %bake.unit_ = alloca %"adt$main.ir.IRCompilationUnit.227"*
  %bake.context = alloca %"adt$main.compiler.CompilerContext.169"*
  store %"adt$main.ir.IRCompilationUnit.227"* %unit_, %"adt$main.ir.IRCompilationUnit.227"** %bake.unit_
  store %"adt$main.compiler.CompilerContext.169"* %context, %"adt$main.compiler.CompilerContext.169"** %bake.context
  br label %16

; <label>:0:                                      ; preds = %11
  %1 = bitcast %"adt$main.ir.IRSourceFileList.238"* %12 to %"adtc$main.ir.IRSourceFileList.Cons.239"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRSourceFileList.Cons.239", %"adtc$main.ir.IRSourceFileList.Cons.239"* %1, i32 0, i32 1
  %3 = load %"adt$main.ir.IRSourceFile.170"*, %"adt$main.ir.IRSourceFile.170"** %2
  %4 = bitcast %"adt$main.ir.IRSourceFileList.238"* %12 to %"adtc$main.ir.IRSourceFileList.Cons.239"*
  %5 = getelementptr inbounds %"adtc$main.ir.IRSourceFileList.Cons.239", %"adtc$main.ir.IRSourceFileList.Cons.239"* %4, i32 0, i32 2
  %6 = load %"adt$main.ir.IRSourceFileList.238"*, %"adt$main.ir.IRSourceFileList.238"** %5
  %7 = load %"adt$main.compiler.CompilerContext.169"*, %"adt$main.compiler.CompilerContext.169"** %bake.context
  call void @"fn$main.bytecode_compiler.BCCompileFile"(%"adt$main.compiler.CompilerContext.169"* %7, %"adt$main.ir.IRSourceFile.170"* %3)
  store %"adt$main.ir.IRSourceFileList.238"* %6, %"adt$main.ir.IRSourceFileList.238"** %files
  br label %9

; <label>:8:                                      ; preds = %11
  ret void

; <label>:9:                                      ; preds = %0, %11
  br label %15
                                                  ; No predecessors!
  unreachable

; <label>:11:                                     ; preds = %15
  %12 = load %"adt$main.ir.IRSourceFileList.238"*, %"adt$main.ir.IRSourceFileList.238"** %files
  %13 = getelementptr inbounds %"adt$main.ir.IRSourceFileList.238", %"adt$main.ir.IRSourceFileList.238"* %12, i32 0, i32 0
  %14 = load i32, i32* %13
  switch i32 %14, label %9 [
    i32 1, label %0
    i32 0, label %8
  ]

; <label>:15:                                     ; preds = %9, %16
  br label %11

; <label>:16:                                     ; preds = %entry
  %17 = load %"adt$main.ir.IRCompilationUnit.227"*, %"adt$main.ir.IRCompilationUnit.227"** %bake.unit_
  %18 = getelementptr inbounds %"adt$main.ir.IRCompilationUnit.227", %"adt$main.ir.IRCompilationUnit.227"* %17, i32 0, i32 2
  %19 = load %"adt$main.ir.IRSourceFileList.238"*, %"adt$main.ir.IRSourceFileList.238"** %18
  store %"adt$main.ir.IRSourceFileList.238"* %19, %"adt$main.ir.IRSourceFileList.238"** %files
  br label %15
}

define void @"fn$main.bytecode_compiler.BCCompileUnits"(%"adt$main.compiler.CompilerContext.169"* %context, %"adt$main.ir.IRCompilationUnitList.240"* %units) {
entry:
  %units1 = alloca %"adt$main.ir.IRCompilationUnitList.240"*
  %bake.units = alloca %"adt$main.ir.IRCompilationUnitList.240"*
  %bake.context = alloca %"adt$main.compiler.CompilerContext.169"*
  store %"adt$main.ir.IRCompilationUnitList.240"* %units, %"adt$main.ir.IRCompilationUnitList.240"** %bake.units
  store %"adt$main.compiler.CompilerContext.169"* %context, %"adt$main.compiler.CompilerContext.169"** %bake.context
  br label %16

; <label>:0:                                      ; preds = %11
  %1 = bitcast %"adt$main.ir.IRCompilationUnitList.240"* %12 to %"adtc$main.ir.IRCompilationUnitList.Cons.241"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRCompilationUnitList.Cons.241", %"adtc$main.ir.IRCompilationUnitList.Cons.241"* %1, i32 0, i32 1
  %3 = load %"adt$main.ir.IRCompilationUnit.227"*, %"adt$main.ir.IRCompilationUnit.227"** %2
  %4 = bitcast %"adt$main.ir.IRCompilationUnitList.240"* %12 to %"adtc$main.ir.IRCompilationUnitList.Cons.241"*
  %5 = getelementptr inbounds %"adtc$main.ir.IRCompilationUnitList.Cons.241", %"adtc$main.ir.IRCompilationUnitList.Cons.241"* %4, i32 0, i32 2
  %6 = load %"adt$main.ir.IRCompilationUnitList.240"*, %"adt$main.ir.IRCompilationUnitList.240"** %5
  %7 = load %"adt$main.compiler.CompilerContext.169"*, %"adt$main.compiler.CompilerContext.169"** %bake.context
  call void @"fn$main.bytecode_compiler.BCCompileUnit"(%"adt$main.compiler.CompilerContext.169"* %7, %"adt$main.ir.IRCompilationUnit.227"* %3)
  store %"adt$main.ir.IRCompilationUnitList.240"* %6, %"adt$main.ir.IRCompilationUnitList.240"** %units1
  br label %9

; <label>:8:                                      ; preds = %11
  ret void

; <label>:9:                                      ; preds = %0, %11
  br label %15
                                                  ; No predecessors!
  unreachable

; <label>:11:                                     ; preds = %15
  %12 = load %"adt$main.ir.IRCompilationUnitList.240"*, %"adt$main.ir.IRCompilationUnitList.240"** %units1
  %13 = getelementptr inbounds %"adt$main.ir.IRCompilationUnitList.240", %"adt$main.ir.IRCompilationUnitList.240"* %12, i32 0, i32 0
  %14 = load i32, i32* %13
  switch i32 %14, label %9 [
    i32 1, label %0
    i32 0, label %8
  ]

; <label>:15:                                     ; preds = %9, %16
  br label %11

; <label>:16:                                     ; preds = %entry
  %17 = load %"adt$main.compiler.CompilerContext.169"*, %"adt$main.compiler.CompilerContext.169"** %bake.context
  %18 = getelementptr inbounds %"adt$main.compiler.CompilerContext.169", %"adt$main.compiler.CompilerContext.169"* %17, i32 0, i32 2
  %19 = load %"adt$main.ir.IRCompilationUnitList.240"*, %"adt$main.ir.IRCompilationUnitList.240"** %18
  store %"adt$main.ir.IRCompilationUnitList.240"* %19, %"adt$main.ir.IRCompilationUnitList.240"** %units1
  br label %15
}

define %"adt$main.bytecode_compiler.Termination"* @"fn$main.bytecode_compiler.TerminationChoice"(%"adt$main.bytecode_compiler.Termination"* %left, %"adt$main.bytecode_compiler.Termination"* %right) {
entry:
  %bake.right = alloca %"adt$main.bytecode_compiler.Termination"*
  %bake.left = alloca %"adt$main.bytecode_compiler.Termination"*
  store %"adt$main.bytecode_compiler.Termination"* %right, %"adt$main.bytecode_compiler.Termination"** %bake.right
  store %"adt$main.bytecode_compiler.Termination"* %left, %"adt$main.bytecode_compiler.Termination"** %bake.left
  br label %25

; <label>:0:                                      ; preds = %7
  %1 = load %"adt$main.bytecode_compiler.Termination"*, %"adt$main.bytecode_compiler.Termination"** %bake.right
  ret %"adt$main.bytecode_compiler.Termination"* %1

; <label>:2:                                      ; preds = %7
  %3 = load %"adt$main.bytecode_compiler.Termination"*, %"adt$main.bytecode_compiler.Termination"** %bake.right
  ret %"adt$main.bytecode_compiler.Termination"* %3

; <label>:4:                                      ; preds = %7
  %5 = call %"adt$main.bytecode_compiler.Termination"* @"adtcfn$adtc$main.bytecode_compiler.Termination.Maybe"()
  ret %"adt$main.bytecode_compiler.Termination"* %5

; <label>:6:                                      ; preds = %7
  br label %24

; <label>:7:                                      ; preds = %25
  %8 = load %"adt$main.bytecode_compiler.Termination"*, %"adt$main.bytecode_compiler.Termination"** %bake.right
  %9 = getelementptr inbounds %"adt$main.bytecode_compiler.Termination", %"adt$main.bytecode_compiler.Termination"* %8, i32 0, i32 0
  %10 = load i32, i32* %9
  switch i32 %10, label %6 [
    i32 2, label %0
    i32 1, label %2
    i32 0, label %4
  ]

; <label>:11:                                     ; preds = %25
  %12 = load %"adt$main.bytecode_compiler.Termination"*, %"adt$main.bytecode_compiler.Termination"** %bake.left
  ret %"adt$main.bytecode_compiler.Termination"* %12

; <label>:13:                                     ; preds = %20
  %14 = call %"adt$main.bytecode_compiler.Termination"* @"adtcfn$adtc$main.bytecode_compiler.Termination.Maybe"()
  ret %"adt$main.bytecode_compiler.Termination"* %14

; <label>:15:                                     ; preds = %20
  %16 = load %"adt$main.bytecode_compiler.Termination"*, %"adt$main.bytecode_compiler.Termination"** %bake.right
  ret %"adt$main.bytecode_compiler.Termination"* %16

; <label>:17:                                     ; preds = %20
  %18 = load %"adt$main.bytecode_compiler.Termination"*, %"adt$main.bytecode_compiler.Termination"** %bake.right
  ret %"adt$main.bytecode_compiler.Termination"* %18

; <label>:19:                                     ; preds = %20
  br label %24

; <label>:20:                                     ; preds = %25
  %21 = load %"adt$main.bytecode_compiler.Termination"*, %"adt$main.bytecode_compiler.Termination"** %bake.right
  %22 = getelementptr inbounds %"adt$main.bytecode_compiler.Termination", %"adt$main.bytecode_compiler.Termination"* %21, i32 0, i32 0
  %23 = load i32, i32* %22
  switch i32 %23, label %19 [
    i32 2, label %13
    i32 1, label %15
    i32 0, label %17
  ]

; <label>:24:                                     ; preds = %6, %19, %25
  unreachable

; <label>:25:                                     ; preds = %entry
  %26 = load %"adt$main.bytecode_compiler.Termination"*, %"adt$main.bytecode_compiler.Termination"** %bake.left
  %27 = getelementptr inbounds %"adt$main.bytecode_compiler.Termination", %"adt$main.bytecode_compiler.Termination"* %26, i32 0, i32 0
  %28 = load i32, i32* %27
  switch i32 %28, label %24 [
    i32 2, label %7
    i32 1, label %11
    i32 0, label %20
  ]
}

define %"adt$main.bytecode_compiler.Termination"* @"fn$main.bytecode_compiler.TerminationConcat"(%"adt$main.bytecode_compiler.Termination"* %first, %"adt$main.bytecode_compiler.Termination"* %second) {
entry:
  %bake.second = alloca %"adt$main.bytecode_compiler.Termination"*
  %bake.first = alloca %"adt$main.bytecode_compiler.Termination"*
  store %"adt$main.bytecode_compiler.Termination"* %second, %"adt$main.bytecode_compiler.Termination"** %bake.second
  store %"adt$main.bytecode_compiler.Termination"* %first, %"adt$main.bytecode_compiler.Termination"** %bake.first
  br label %16

; <label>:0:                                      ; preds = %16
  %1 = load %"adt$main.bytecode_compiler.Termination"*, %"adt$main.bytecode_compiler.Termination"** %bake.second
  ret %"adt$main.bytecode_compiler.Termination"* %1

; <label>:2:                                      ; preds = %9
  %3 = load %"adt$main.bytecode_compiler.Termination"*, %"adt$main.bytecode_compiler.Termination"** %bake.first
  ret %"adt$main.bytecode_compiler.Termination"* %3

; <label>:4:                                      ; preds = %9
  %5 = load %"adt$main.bytecode_compiler.Termination"*, %"adt$main.bytecode_compiler.Termination"** %bake.second
  ret %"adt$main.bytecode_compiler.Termination"* %5

; <label>:6:                                      ; preds = %9
  %7 = load %"adt$main.bytecode_compiler.Termination"*, %"adt$main.bytecode_compiler.Termination"** %bake.second
  ret %"adt$main.bytecode_compiler.Termination"* %7

; <label>:8:                                      ; preds = %9
  br label %15

; <label>:9:                                      ; preds = %16
  %10 = load %"adt$main.bytecode_compiler.Termination"*, %"adt$main.bytecode_compiler.Termination"** %bake.second
  %11 = getelementptr inbounds %"adt$main.bytecode_compiler.Termination", %"adt$main.bytecode_compiler.Termination"* %10, i32 0, i32 0
  %12 = load i32, i32* %11
  switch i32 %12, label %8 [
    i32 2, label %2
    i32 1, label %4
    i32 0, label %6
  ]

; <label>:13:                                     ; preds = %16
  %14 = load %"adt$main.bytecode_compiler.Termination"*, %"adt$main.bytecode_compiler.Termination"** %bake.first
  ret %"adt$main.bytecode_compiler.Termination"* %14

; <label>:15:                                     ; preds = %8, %16
  unreachable

; <label>:16:                                     ; preds = %entry
  %17 = load %"adt$main.bytecode_compiler.Termination"*, %"adt$main.bytecode_compiler.Termination"** %bake.first
  %18 = getelementptr inbounds %"adt$main.bytecode_compiler.Termination", %"adt$main.bytecode_compiler.Termination"* %17, i32 0, i32 0
  %19 = load i32, i32* %18
  switch i32 %19, label %15 [
    i32 2, label %0
    i32 1, label %9
    i32 0, label %13
  ]
}

define void @"fn$main.bytecode_compiler.BCCompile"(%"adt$main.compiler.CompilerContext.169"* %context) {
entry:
  %bake.context = alloca %"adt$main.compiler.CompilerContext.169"*
  store %"adt$main.compiler.CompilerContext.169"* %context, %"adt$main.compiler.CompilerContext.169"** %bake.context
  br label %0

; <label>:0:                                      ; preds = %entry
  %1 = load %"adt$main.compiler.CompilerContext.169"*, %"adt$main.compiler.CompilerContext.169"** %bake.context
  %2 = load %"adt$main.compiler.CompilerContext.169"*, %"adt$main.compiler.CompilerContext.169"** %bake.context
  %3 = getelementptr inbounds %"adt$main.compiler.CompilerContext.169", %"adt$main.compiler.CompilerContext.169"* %2, i32 0, i32 2
  %4 = load %"adt$main.ir.IRCompilationUnitList.240"*, %"adt$main.ir.IRCompilationUnitList.240"** %3
  call void @"fn$main.bytecode_compiler.BCCompileUnits"(%"adt$main.compiler.CompilerContext.169"* %1, %"adt$main.ir.IRCompilationUnitList.240"* %4)
  ret void
}

define %"adt$main.bytecode_compiler.MaybeLocalRef"* @"adtcfn$adtc$main.bytecode_compiler.MaybeLocalRef.Nothing"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode_compiler.MaybeLocalRef.Nothing"*
  %2 = getelementptr inbounds %"adtc$main.bytecode_compiler.MaybeLocalRef.Nothing", %"adtc$main.bytecode_compiler.MaybeLocalRef.Nothing"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.bytecode_compiler.MaybeLocalRef.Nothing"* %1 to %"adt$main.bytecode_compiler.MaybeLocalRef"*
  ret %"adt$main.bytecode_compiler.MaybeLocalRef"* %3
}

declare i8* @jf_allocate(i32)

define %"adt$main.bytecode_compiler.MaybeLocalRef"* @"adtcfn$adtc$main.bytecode_compiler.MaybeLocalRef.Just"(%"adt$main.bytecode_compiler.LocalRef"* %val) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode_compiler.MaybeLocalRef.Just"* getelementptr (%"adtc$main.bytecode_compiler.MaybeLocalRef.Just", %"adtc$main.bytecode_compiler.MaybeLocalRef.Just"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode_compiler.MaybeLocalRef.Just"*
  %2 = getelementptr inbounds %"adtc$main.bytecode_compiler.MaybeLocalRef.Just", %"adtc$main.bytecode_compiler.MaybeLocalRef.Just"* %1, i32 0, i32 0
  store i32 1, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode_compiler.MaybeLocalRef.Just", %"adtc$main.bytecode_compiler.MaybeLocalRef.Just"* %1, i32 0, i32 1
  store %"adt$main.bytecode_compiler.LocalRef"* %val, %"adt$main.bytecode_compiler.LocalRef"** %3
  %4 = bitcast %"adtc$main.bytecode_compiler.MaybeLocalRef.Just"* %1 to %"adt$main.bytecode_compiler.MaybeLocalRef"*
  ret %"adt$main.bytecode_compiler.MaybeLocalRef"* %4
}

define %"adt$main.bytecode_compiler.MaybeScope"* @"adtcfn$adtc$main.bytecode_compiler.MaybeScope.Nothing"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode_compiler.MaybeScope.Nothing"*
  %2 = getelementptr inbounds %"adtc$main.bytecode_compiler.MaybeScope.Nothing", %"adtc$main.bytecode_compiler.MaybeScope.Nothing"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.bytecode_compiler.MaybeScope.Nothing"* %1 to %"adt$main.bytecode_compiler.MaybeScope"*
  ret %"adt$main.bytecode_compiler.MaybeScope"* %3
}

define %"adt$main.bytecode_compiler.MaybeScope"* @"adtcfn$adtc$main.bytecode_compiler.MaybeScope.Just"(%"adt$main.bytecode_compiler.Scope"* %value) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode_compiler.MaybeScope.Just"* getelementptr (%"adtc$main.bytecode_compiler.MaybeScope.Just", %"adtc$main.bytecode_compiler.MaybeScope.Just"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode_compiler.MaybeScope.Just"*
  %2 = getelementptr inbounds %"adtc$main.bytecode_compiler.MaybeScope.Just", %"adtc$main.bytecode_compiler.MaybeScope.Just"* %1, i32 0, i32 0
  store i32 1, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode_compiler.MaybeScope.Just", %"adtc$main.bytecode_compiler.MaybeScope.Just"* %1, i32 0, i32 1
  store %"adt$main.bytecode_compiler.Scope"* %value, %"adt$main.bytecode_compiler.Scope"** %3
  %4 = bitcast %"adtc$main.bytecode_compiler.MaybeScope.Just"* %1 to %"adt$main.bytecode_compiler.MaybeScope"*
  ret %"adt$main.bytecode_compiler.MaybeScope"* %4
}

define %"adt$main.bytecode_compiler.Termination"* @"adtcfn$adtc$main.bytecode_compiler.Termination.Maybe"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode_compiler.Termination.Maybe"*
  %2 = getelementptr inbounds %"adtc$main.bytecode_compiler.Termination.Maybe", %"adtc$main.bytecode_compiler.Termination.Maybe"* %1, i32 0, i32 0
  store i32 1, i32* %2
  %3 = bitcast %"adtc$main.bytecode_compiler.Termination.Maybe"* %1 to %"adt$main.bytecode_compiler.Termination"*
  ret %"adt$main.bytecode_compiler.Termination"* %3
}
