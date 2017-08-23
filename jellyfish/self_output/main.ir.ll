; ModuleID = 'main.ir'
source_filename = "main.ir"

%"adt$main.ir.MaybeIRADTField" = type { i32 }
%"adt$main.ir.IRADTDecl.107" = type { i32, %"adt$main.ir.IRADTConsList.109"*, %"adt$main.ir.IRADTFieldList.108"*, %"adt$main.ir.IRSymbol.110"*, %"adt$main.ir.IRType.111"*, %"adt$main.ir.IRType.111"* }
%"adt$main.ir.IRADTConsList.109" = type { i32 }
%"adt$main.ir.IRADTFieldList.108" = type { i32 }
%"adt$main.ir.IRSymbol.110" = type { i32, %"adt$main.ir.IRSourceFile.120"*, %"adt$main.ast.SrcLoc.114"*, i8* }
%"adt$main.ir.IRSourceFile.120" = type { i32, %"adt$main.ir.SourceFileRef.123"*, %"adt$main.ir.IRCompilationUnit.119"*, %"adt$main.ir.IRImportList.124"*, %"adt$main.ir.IRSymbolList.125"* }
%"adt$main.ir.SourceFileRef.123" = type { i32, i8*, i8*, i8*, i8* }
%"adt$main.ir.IRCompilationUnit.119" = type { i32, i8*, %"adt$main.ir.IRSourceFileList.121"* }
%"adt$main.ir.IRSourceFileList.121" = type { i32 }
%"adt$main.ir.IRImportList.124" = type { i32 }
%"adt$main.ir.IRSymbolList.125" = type { i32 }
%"adt$main.ast.SrcLoc.114" = type opaque
%"adt$main.ir.IRType.111" = type { i32 }
%"adtc$main.ir.IRADTFieldList.Cons.112" = type { i32, %"adt$main.ir.IRADTField.113"*, %"adt$main.ir.IRADTFieldList.108"* }
%"adt$main.ir.IRADTField.113" = type { i32, %"adt$main.ir.IRADTDecl.107"*, i8*, %"adt$main.ast.SrcLoc.114"*, %"adt$main.ir.IRTypeNode.115"*, i32 }
%"adt$main.ir.IRTypeNode.115" = type { i32, i1, %"adt$main.ast.SrcLoc.114"*, %"adt$main.ir.IRType.111"* }
%"adtc$main.ir.MaybeIRADTField.Nothing" = type { i32 }
%"adtc$main.ir.MaybeIRADTField.Just" = type { i32, %"adt$main.ir.IRADTField.113"* }
%"adt$main.ir.MaybeIRADTCons" = type { i32 }
%"adtc$main.ir.IRADTConsList.Cons.116" = type { i32, %"adt$main.ir.IRADTCons.117"*, %"adt$main.ir.IRADTConsList.109"* }
%"adt$main.ir.IRADTCons.117" = type { i32, %"adt$main.ir.IRADTDecl.107"*, i32, i8*, %"adt$main.ast.SrcLoc.114"*, %"adt$main.ir.IRParamList.118"*, %"adt$main.ir.IRType.111"* }
%"adt$main.ir.IRParamList.118" = type { i32 }
%"adtc$main.ir.MaybeIRADTCons.Nothing" = type { i32 }
%"adtc$main.ir.MaybeIRADTCons.Just" = type { i32, %"adt$main.ir.IRADTCons.117"* }
%"adtc$main.ir.IRSourceFileList.Cons.122" = type { i32, %"adt$main.ir.IRSourceFile.120"*, %"adt$main.ir.IRSourceFileList.121"* }
%"adtc$main.ir.IRSourceFile.New" = type { i32, %"adt$main.ir.SourceFileRef.123"*, %"adt$main.ir.IRCompilationUnit.119"*, %"adt$main.ir.IRImportList.124"*, %"adt$main.ir.IRSymbolList.125"* }
%"adtc$main.ir.IRImportList.Nil" = type { i32 }
%"adtc$main.ir.IRSymbolList.Nil" = type { i32 }
%"adtc$main.ir.IRCompilationUnit.New" = type { i32, i8*, %"adt$main.ir.IRSourceFileList.121"* }
%"adtc$main.ir.IRSourceFileList.Nil" = type { i32 }
%"adt$main.ir.IRCompilationUnitList.126" = type { i32 }
%"adtc$main.ir.IRCompilationUnitList.Nil" = type { i32 }
%"adtc$main.ir.IRCompilationUnitList.Cons.127" = type { i32, %"adt$main.ir.IRCompilationUnit.119"*, %"adt$main.ir.IRCompilationUnitList.126"* }
%"adtc$main.ir.SourceFileRef.New" = type { i32, i8*, i8*, i8*, i8* }
%"adtc$main.ir.IRSymbolList.Cons.128" = type { i32, %"adt$main.ir.IRSymbol.110"*, %"adt$main.ir.IRSymbolList.125"* }
%"adt$main.ir.MaybeIRType" = type { i32 }
%"adtc$main.ir.MaybeIRType.Nothing" = type { i32 }
%"adtc$main.ir.MaybeIRType.Just" = type { i32, %"adt$main.ir.IRType.111"* }
%"adt$main.ir.IRTypeList.129" = type { i32 }
%"adtc$main.ir.IRTypeList.Nil" = type { i32 }
%"adtc$main.ir.IRTypeList.Cons" = type { i32, %"adt$main.ir.IRType.111"*, %"adt$main.ir.IRTypeList.129"* }
%"adt$main.ir.IRTypeReference.131" = type { i32, i8*, %"adt$main.ast.SrcLoc.114"*, %"adt$main.ir.IRSourceFile.120"*, %"adt$main.ir.IRType.111"* }
%"adtc$main.ir.IRType.Ref.130" = type { i32, %"adt$main.ir.IRTypeReference.131"* }
%"adt$main.ir.IRPrimType.133" = type { i32 }
%"adtc$main.ir.IRType.Prim.132" = type { i32, %"adt$main.ir.IRPrimType.133"* }
%"adtc$main.ir.IRType.ADT.134" = type { i32, %"adt$main.ir.IRADTDecl.107"* }
%"adtc$main.ir.IRType.ADTMetaclass.135" = type { i32, %"adt$main.ir.IRADTDecl.107"* }
%"adtc$main.ir.IRType.ArrayUnsized.136" = type { i32, %"adt$main.ir.IRType.111"* }
%"adt$main.ir.IRExprNode.138" = type { i32, %"adt$main.ast.SrcLoc.114"*, %"adt$main.ast_expr.AstExpr.139"*, %"adt$main.bytecode.FunctionFrame.140"* }
%"adt$main.ast_expr.AstExpr.139" = type opaque
%"adt$main.bytecode.FunctionFrame.140" = type opaque
%"adtc$main.ir.IRType.ArraySized.137" = type { i32, %"adt$main.ir.IRType.111"*, %"adt$main.ir.IRExprNode.138"* }
%"adtc$main.ir.IRType.Function" = type { i32, %"adt$main.ir.IRType.111"*, %"adt$main.ir.IRTypeList.129"* }
%"adtc$main.ir.IRTypeReference.New" = type { i32, i8*, %"adt$main.ast.SrcLoc.114"*, %"adt$main.ir.IRSourceFile.120"*, %"adt$main.ir.IRType.111"* }
%"adtc$main.ir.IRPrimType.Unit" = type { i32 }
%"adtc$main.ir.IRPrimType.Undef" = type { i32 }
%"adtc$main.ir.IRPrimType.I32" = type { i32 }
%"adtc$main.ir.IRPrimType.String" = type { i32 }
%"adtc$main.ir.IRPrimType.Pointer" = type { i32 }
%"adtc$main.ir.IRPrimType.Bool" = type { i32 }
%"adtc$main.ir.IRExprNode.New" = type { i32, %"adt$main.ast.SrcLoc.114"*, %"adt$main.ast_expr.AstExpr.139"*, %"adt$main.bytecode.FunctionFrame.140"* }
%"adtc$main.ir.IRTypeNode.New" = type { i32, i1, %"adt$main.ast.SrcLoc.114"*, %"adt$main.ir.IRType.111"* }
%"adt$main.ir.IRGlobalDecl.141" = type { i32, %"adt$main.ir.IRSymbol.110"*, %"adt$main.ir.IRTypeNode.115"*, %"adt$main.ir.IRExprNode.138"* }
%"adtc$main.ir.IRGlobalDecl.New" = type { i32, %"adt$main.ir.IRSymbol.110"*, %"adt$main.ir.IRTypeNode.115"*, %"adt$main.ir.IRExprNode.138"* }
%"adtc$main.ir.IRParamList.Nil" = type { i32 }
%"adt$main.ir.IRParam.143" = type { i32, i8*, %"adt$main.ast.SrcLoc.114"*, %"adt$main.ir.IRTypeNode.115"* }
%"adtc$main.ir.IRParamList.Cons.142" = type { i32, %"adt$main.ir.IRParam.143"*, %"adt$main.ir.IRParamList.118"* }
%"adtc$main.ir.IRParam.New" = type { i32, i8*, %"adt$main.ast.SrcLoc.114"*, %"adt$main.ir.IRTypeNode.115"* }
%"adtc$main.ir.IRADTConsList.Nil" = type { i32 }
%"adtc$main.ir.IRADTCons.New" = type { i32, %"adt$main.ir.IRADTDecl.107"*, i32, i8*, %"adt$main.ast.SrcLoc.114"*, %"adt$main.ir.IRParamList.118"*, %"adt$main.ir.IRType.111"* }
%"adtc$main.ir.IRADTFieldList.Nil" = type { i32 }
%"adtc$main.ir.IRADTField.New" = type { i32, %"adt$main.ir.IRADTDecl.107"*, i8*, %"adt$main.ast.SrcLoc.114"*, %"adt$main.ir.IRTypeNode.115"*, i32 }
%"adtc$main.ir.IRADTDecl.New" = type { i32, %"adt$main.ir.IRADTConsList.109"*, %"adt$main.ir.IRADTFieldList.108"*, %"adt$main.ir.IRSymbol.110"*, %"adt$main.ir.IRType.111"*, %"adt$main.ir.IRType.111"* }
%"adt$main.ir.IRBlockNode.144" = type { i32, %"adt$main.ast_stmt.AstStmtList.145"*, %"adt$main.bytecode.FunctionFrame.140"* }
%"adt$main.ast_stmt.AstStmtList.145" = type opaque
%"adtc$main.ir.IRBlockNode.New" = type { i32, %"adt$main.ast_stmt.AstStmtList.145"*, %"adt$main.bytecode.FunctionFrame.140"* }
%"adt$main.ir.IRFunctionBody.146" = type { i32, %"adt$main.ast.SrcLoc.114"* }
%"adtc$main.ir.IRFunctionBody.FFIImport.147" = type { i32, %"adt$main.ast.SrcLoc.114"*, i8* }
%"adtc$main.ir.IRFunctionBody.Block.148" = type { i32, %"adt$main.ast.SrcLoc.114"*, %"adt$main.ir.IRBlockNode.144"* }
%"adt$main.ir.IRFunctionDecl.149" = type { i32, %"adt$main.ir.IRSymbol.110"*, %"adt$main.ir.IRParamList.118"*, %"adt$main.ir.IRTypeNode.115"*, %"adt$main.ir.IRType.111"*, %"adt$main.ir.IRFunctionBody.146"* }
%"adtc$main.ir.IRFunctionDecl.New" = type { i32, %"adt$main.ir.IRSymbol.110"*, %"adt$main.ir.IRParamList.118"*, %"adt$main.ir.IRTypeNode.115"*, %"adt$main.ir.IRType.111"*, %"adt$main.ir.IRFunctionBody.146"* }
%"adt$main.ir.MaybeIRSymbol" = type { i32 }
%"adtc$main.ir.MaybeIRSymbol.Nothing" = type { i32 }
%"adtc$main.ir.MaybeIRSymbol.Just" = type { i32, %"adt$main.ir.IRSymbol.110"* }
%"adtc$main.ir.IRSymbol.Function.150" = type { i32, %"adt$main.ir.IRSourceFile.120"*, %"adt$main.ast.SrcLoc.114"*, i8*, %"adt$main.ir.IRFunctionDecl.149"* }
%"adtc$main.ir.IRSymbol.Global.151" = type { i32, %"adt$main.ir.IRSourceFile.120"*, %"adt$main.ast.SrcLoc.114"*, i8*, %"adt$main.ir.IRGlobalDecl.141"* }
%"adtc$main.ir.IRSymbol.ADT.152" = type { i32, %"adt$main.ir.IRSourceFile.120"*, %"adt$main.ast.SrcLoc.114"*, i8*, %"adt$main.ir.IRADTDecl.107"* }
%"adt$main.ir.IRImport.154" = type { i32, %"adt$main.ast.SrcLoc.114"*, %"adt$main.ast.QualID.155"*, i8*, %"adt$main.ir.IRCompilationUnit.119"* }
%"adt$main.ast.QualID.155" = type opaque
%"adtc$main.ir.IRImportList.Cons.153" = type { i32, %"adt$main.ir.IRImport.154"*, %"adt$main.ir.IRImportList.124"* }
%"adtc$main.ir.IRImport.New" = type { i32, %"adt$main.ast.SrcLoc.114"*, %"adt$main.ast.QualID.155"*, i8*, %"adt$main.ir.IRCompilationUnit.119"* }

@0 = private global [32 x i8] c"Duplicate source file for unit \00"
@1 = private global [14 x i8] c" with suffix \00"
@2 = private global [26 x i8] c"prim type not implemented\00"

define %"adt$main.ir.MaybeIRADTField"* @"fn$main.ir.IRADTFindField"(%"adt$main.ir.IRADTDecl.107"* %adt_, i8* %name) {
entry:
  %fields = alloca %"adt$main.ir.IRADTFieldList.108"*
  %bake.name = alloca i8*
  %bake.adt_ = alloca %"adt$main.ir.IRADTDecl.107"*
  store i8* %name, i8** %bake.name
  store %"adt$main.ir.IRADTDecl.107"* %adt_, %"adt$main.ir.IRADTDecl.107"** %bake.adt_
  br label %25

; <label>:0:                                      ; preds = %1
  store %"adt$main.ir.IRADTFieldList.108"* %10, %"adt$main.ir.IRADTFieldList.108"** %fields
  br label %18

; <label>:1:                                      ; preds = %4
  br label %0

; <label>:2:                                      ; preds = %4
  %3 = call %"adt$main.ir.MaybeIRADTField"* @"adtcfn$adtc$main.ir.MaybeIRADTField.Just"(%"adt$main.ir.IRADTField.113"* %7)
  ret %"adt$main.ir.MaybeIRADTField"* %3

; <label>:4:                                      ; preds = %20
  %5 = bitcast %"adt$main.ir.IRADTFieldList.108"* %21 to %"adtc$main.ir.IRADTFieldList.Cons.112"*
  %6 = getelementptr inbounds %"adtc$main.ir.IRADTFieldList.Cons.112", %"adtc$main.ir.IRADTFieldList.Cons.112"* %5, i32 0, i32 1
  %7 = load %"adt$main.ir.IRADTField.113"*, %"adt$main.ir.IRADTField.113"** %6
  %8 = bitcast %"adt$main.ir.IRADTFieldList.108"* %21 to %"adtc$main.ir.IRADTFieldList.Cons.112"*
  %9 = getelementptr inbounds %"adtc$main.ir.IRADTFieldList.Cons.112", %"adtc$main.ir.IRADTFieldList.Cons.112"* %8, i32 0, i32 2
  %10 = load %"adt$main.ir.IRADTFieldList.108"*, %"adt$main.ir.IRADTFieldList.108"** %9
  %11 = getelementptr inbounds %"adt$main.ir.IRADTField.113", %"adt$main.ir.IRADTField.113"* %7, i32 0, i32 2
  %12 = load i8*, i8** %11
  %13 = load i8*, i8** %bake.name
  %14 = call i32 @jf_string_compare(i8* %12, i8* %13)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %2, label %1

; <label>:16:                                     ; preds = %20
  %17 = call %"adt$main.ir.MaybeIRADTField"* @"adtcfn$adtc$main.ir.MaybeIRADTField.Nothing"()
  ret %"adt$main.ir.MaybeIRADTField"* %17

; <label>:18:                                     ; preds = %0, %20
  br label %24
                                                  ; No predecessors!
  unreachable

; <label>:20:                                     ; preds = %24
  %21 = load %"adt$main.ir.IRADTFieldList.108"*, %"adt$main.ir.IRADTFieldList.108"** %fields
  %22 = getelementptr inbounds %"adt$main.ir.IRADTFieldList.108", %"adt$main.ir.IRADTFieldList.108"* %21, i32 0, i32 0
  %23 = load i32, i32* %22
  switch i32 %23, label %18 [
    i32 1, label %4
    i32 0, label %16
  ]

; <label>:24:                                     ; preds = %18, %25
  br label %20

; <label>:25:                                     ; preds = %entry
  %26 = load %"adt$main.ir.IRADTDecl.107"*, %"adt$main.ir.IRADTDecl.107"** %bake.adt_
  %27 = getelementptr inbounds %"adt$main.ir.IRADTDecl.107", %"adt$main.ir.IRADTDecl.107"* %26, i32 0, i32 2
  %28 = load %"adt$main.ir.IRADTFieldList.108"*, %"adt$main.ir.IRADTFieldList.108"** %27
  store %"adt$main.ir.IRADTFieldList.108"* %28, %"adt$main.ir.IRADTFieldList.108"** %fields
  br label %24
}

define %"adt$main.ir.MaybeIRADTField"* @"adtcfn$adtc$main.ir.MaybeIRADTField.Nothing"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.MaybeIRADTField.Nothing"*
  %2 = getelementptr inbounds %"adtc$main.ir.MaybeIRADTField.Nothing", %"adtc$main.ir.MaybeIRADTField.Nothing"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.ir.MaybeIRADTField.Nothing"* %1 to %"adt$main.ir.MaybeIRADTField"*
  ret %"adt$main.ir.MaybeIRADTField"* %3
}

declare i32 @jf_string_compare(i8*, i8*)

define %"adt$main.ir.MaybeIRADTField"* @"adtcfn$adtc$main.ir.MaybeIRADTField.Just"(%"adt$main.ir.IRADTField.113"* %field_) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.ir.MaybeIRADTField.Just"* getelementptr (%"adtc$main.ir.MaybeIRADTField.Just", %"adtc$main.ir.MaybeIRADTField.Just"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.MaybeIRADTField.Just"*
  %2 = getelementptr inbounds %"adtc$main.ir.MaybeIRADTField.Just", %"adtc$main.ir.MaybeIRADTField.Just"* %1, i32 0, i32 0
  store i32 1, i32* %2
  %3 = getelementptr inbounds %"adtc$main.ir.MaybeIRADTField.Just", %"adtc$main.ir.MaybeIRADTField.Just"* %1, i32 0, i32 1
  store %"adt$main.ir.IRADTField.113"* %field_, %"adt$main.ir.IRADTField.113"** %3
  %4 = bitcast %"adtc$main.ir.MaybeIRADTField.Just"* %1 to %"adt$main.ir.MaybeIRADTField"*
  ret %"adt$main.ir.MaybeIRADTField"* %4
}

define %"adt$main.ir.MaybeIRADTCons"* @"fn$main.ir.IRADTFindConstructor"(%"adt$main.ir.IRADTDecl.107"* %adt_, i8* %name) {
entry:
  %cons = alloca %"adt$main.ir.IRADTConsList.109"*
  %bake.name = alloca i8*
  %bake.adt_ = alloca %"adt$main.ir.IRADTDecl.107"*
  store i8* %name, i8** %bake.name
  store %"adt$main.ir.IRADTDecl.107"* %adt_, %"adt$main.ir.IRADTDecl.107"** %bake.adt_
  br label %25

; <label>:0:                                      ; preds = %1
  store %"adt$main.ir.IRADTConsList.109"* %10, %"adt$main.ir.IRADTConsList.109"** %cons
  br label %18

; <label>:1:                                      ; preds = %4
  br label %0

; <label>:2:                                      ; preds = %4
  %3 = call %"adt$main.ir.MaybeIRADTCons"* @"adtcfn$adtc$main.ir.MaybeIRADTCons.Just"(%"adt$main.ir.IRADTCons.117"* %7)
  ret %"adt$main.ir.MaybeIRADTCons"* %3

; <label>:4:                                      ; preds = %20
  %5 = bitcast %"adt$main.ir.IRADTConsList.109"* %21 to %"adtc$main.ir.IRADTConsList.Cons.116"*
  %6 = getelementptr inbounds %"adtc$main.ir.IRADTConsList.Cons.116", %"adtc$main.ir.IRADTConsList.Cons.116"* %5, i32 0, i32 1
  %7 = load %"adt$main.ir.IRADTCons.117"*, %"adt$main.ir.IRADTCons.117"** %6
  %8 = bitcast %"adt$main.ir.IRADTConsList.109"* %21 to %"adtc$main.ir.IRADTConsList.Cons.116"*
  %9 = getelementptr inbounds %"adtc$main.ir.IRADTConsList.Cons.116", %"adtc$main.ir.IRADTConsList.Cons.116"* %8, i32 0, i32 2
  %10 = load %"adt$main.ir.IRADTConsList.109"*, %"adt$main.ir.IRADTConsList.109"** %9
  %11 = getelementptr inbounds %"adt$main.ir.IRADTCons.117", %"adt$main.ir.IRADTCons.117"* %7, i32 0, i32 3
  %12 = load i8*, i8** %11
  %13 = load i8*, i8** %bake.name
  %14 = call i32 @jf_string_compare(i8* %12, i8* %13)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %2, label %1

; <label>:16:                                     ; preds = %20
  %17 = call %"adt$main.ir.MaybeIRADTCons"* @"adtcfn$adtc$main.ir.MaybeIRADTCons.Nothing"()
  ret %"adt$main.ir.MaybeIRADTCons"* %17

; <label>:18:                                     ; preds = %0, %20
  br label %24
                                                  ; No predecessors!
  unreachable

; <label>:20:                                     ; preds = %24
  %21 = load %"adt$main.ir.IRADTConsList.109"*, %"adt$main.ir.IRADTConsList.109"** %cons
  %22 = getelementptr inbounds %"adt$main.ir.IRADTConsList.109", %"adt$main.ir.IRADTConsList.109"* %21, i32 0, i32 0
  %23 = load i32, i32* %22
  switch i32 %23, label %18 [
    i32 1, label %4
    i32 0, label %16
  ]

; <label>:24:                                     ; preds = %18, %25
  br label %20

; <label>:25:                                     ; preds = %entry
  %26 = load %"adt$main.ir.IRADTDecl.107"*, %"adt$main.ir.IRADTDecl.107"** %bake.adt_
  %27 = getelementptr inbounds %"adt$main.ir.IRADTDecl.107", %"adt$main.ir.IRADTDecl.107"* %26, i32 0, i32 1
  %28 = load %"adt$main.ir.IRADTConsList.109"*, %"adt$main.ir.IRADTConsList.109"** %27
  store %"adt$main.ir.IRADTConsList.109"* %28, %"adt$main.ir.IRADTConsList.109"** %cons
  br label %24
}

define %"adt$main.ir.MaybeIRADTCons"* @"adtcfn$adtc$main.ir.MaybeIRADTCons.Nothing"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.MaybeIRADTCons.Nothing"*
  %2 = getelementptr inbounds %"adtc$main.ir.MaybeIRADTCons.Nothing", %"adtc$main.ir.MaybeIRADTCons.Nothing"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.ir.MaybeIRADTCons.Nothing"* %1 to %"adt$main.ir.MaybeIRADTCons"*
  ret %"adt$main.ir.MaybeIRADTCons"* %3
}

define %"adt$main.ir.MaybeIRADTCons"* @"adtcfn$adtc$main.ir.MaybeIRADTCons.Just"(%"adt$main.ir.IRADTCons.117"* %constr) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.ir.MaybeIRADTCons.Just"* getelementptr (%"adtc$main.ir.MaybeIRADTCons.Just", %"adtc$main.ir.MaybeIRADTCons.Just"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.MaybeIRADTCons.Just"*
  %2 = getelementptr inbounds %"adtc$main.ir.MaybeIRADTCons.Just", %"adtc$main.ir.MaybeIRADTCons.Just"* %1, i32 0, i32 0
  store i32 1, i32* %2
  %3 = getelementptr inbounds %"adtc$main.ir.MaybeIRADTCons.Just", %"adtc$main.ir.MaybeIRADTCons.Just"* %1, i32 0, i32 1
  store %"adt$main.ir.IRADTCons.117"* %constr, %"adt$main.ir.IRADTCons.117"** %3
  %4 = bitcast %"adtc$main.ir.MaybeIRADTCons.Just"* %1 to %"adt$main.ir.MaybeIRADTCons"*
  ret %"adt$main.ir.MaybeIRADTCons"* %4
}

define void @"fn$main.ir.IRUnitInsertFile"(%"adt$main.ir.IRCompilationUnit.119"* %unit_, %"adt$main.ir.IRSourceFile.120"* %file) {
entry:
  %files = alloca %"adt$main.ir.IRSourceFileList.121"*
  %bake.file = alloca %"adt$main.ir.IRSourceFile.120"*
  %bake.unit_ = alloca %"adt$main.ir.IRCompilationUnit.119"*
  store %"adt$main.ir.IRSourceFile.120"* %file, %"adt$main.ir.IRSourceFile.120"** %bake.file
  store %"adt$main.ir.IRCompilationUnit.119"* %unit_, %"adt$main.ir.IRCompilationUnit.119"** %bake.unit_
  br label %47

; <label>:0:                                      ; preds = %1
  br label %40

; <label>:1:                                      ; preds = %14
  br label %0

; <label>:2:                                      ; preds = %14
  %3 = load %"adt$main.ir.IRCompilationUnit.119"*, %"adt$main.ir.IRCompilationUnit.119"** %bake.unit_
  %4 = getelementptr inbounds %"adt$main.ir.IRCompilationUnit.119", %"adt$main.ir.IRCompilationUnit.119"* %3, i32 0, i32 1
  %5 = load i8*, i8** %4
  %6 = call i8* @jf_string_concat(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @0, i32 0, i32 0), i8* %5)
  %7 = call i8* @jf_string_concat(i8* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @1, i32 0, i32 0))
  %8 = load %"adt$main.ir.IRSourceFile.120"*, %"adt$main.ir.IRSourceFile.120"** %bake.file
  %9 = getelementptr inbounds %"adt$main.ir.IRSourceFile.120", %"adt$main.ir.IRSourceFile.120"* %8, i32 0, i32 1
  %10 = load %"adt$main.ir.SourceFileRef.123"*, %"adt$main.ir.SourceFileRef.123"** %9
  %11 = getelementptr inbounds %"adt$main.ir.SourceFileRef.123", %"adt$main.ir.SourceFileRef.123"* %10, i32 0, i32 3
  %12 = load i8*, i8** %11
  %13 = call i8* @jf_string_concat(i8* %7, i8* %12)
  call void @"fn$main.prelude.WriteLn"(i8* %13)
  call void @"fn$main.prelude.Exit"(i32 1)
  unreachable

; <label>:14:                                     ; preds = %42
  %15 = bitcast %"adt$main.ir.IRSourceFileList.121"* %43 to %"adtc$main.ir.IRSourceFileList.Cons.122"*
  %16 = getelementptr inbounds %"adtc$main.ir.IRSourceFileList.Cons.122", %"adtc$main.ir.IRSourceFileList.Cons.122"* %15, i32 0, i32 1
  %17 = load %"adt$main.ir.IRSourceFile.120"*, %"adt$main.ir.IRSourceFile.120"** %16
  %18 = bitcast %"adt$main.ir.IRSourceFileList.121"* %43 to %"adtc$main.ir.IRSourceFileList.Cons.122"*
  %19 = getelementptr inbounds %"adtc$main.ir.IRSourceFileList.Cons.122", %"adtc$main.ir.IRSourceFileList.Cons.122"* %18, i32 0, i32 2
  %20 = load %"adt$main.ir.IRSourceFileList.121"*, %"adt$main.ir.IRSourceFileList.121"** %19
  store %"adt$main.ir.IRSourceFileList.121"* %20, %"adt$main.ir.IRSourceFileList.121"** %files
  %21 = getelementptr inbounds %"adt$main.ir.IRSourceFile.120", %"adt$main.ir.IRSourceFile.120"* %17, i32 0, i32 1
  %22 = load %"adt$main.ir.SourceFileRef.123"*, %"adt$main.ir.SourceFileRef.123"** %21
  %23 = getelementptr inbounds %"adt$main.ir.SourceFileRef.123", %"adt$main.ir.SourceFileRef.123"* %22, i32 0, i32 3
  %24 = load i8*, i8** %23
  %25 = load %"adt$main.ir.IRSourceFile.120"*, %"adt$main.ir.IRSourceFile.120"** %bake.file
  %26 = getelementptr inbounds %"adt$main.ir.IRSourceFile.120", %"adt$main.ir.IRSourceFile.120"* %25, i32 0, i32 1
  %27 = load %"adt$main.ir.SourceFileRef.123"*, %"adt$main.ir.SourceFileRef.123"** %26
  %28 = getelementptr inbounds %"adt$main.ir.SourceFileRef.123", %"adt$main.ir.SourceFileRef.123"* %27, i32 0, i32 3
  %29 = load i8*, i8** %28
  %30 = call i32 @jf_string_compare(i8* %24, i8* %29)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %2, label %1

; <label>:32:                                     ; preds = %42
  %33 = load %"adt$main.ir.IRCompilationUnit.119"*, %"adt$main.ir.IRCompilationUnit.119"** %bake.unit_
  %34 = load %"adt$main.ir.IRSourceFile.120"*, %"adt$main.ir.IRSourceFile.120"** %bake.file
  %35 = load %"adt$main.ir.IRCompilationUnit.119"*, %"adt$main.ir.IRCompilationUnit.119"** %bake.unit_
  %36 = getelementptr inbounds %"adt$main.ir.IRCompilationUnit.119", %"adt$main.ir.IRCompilationUnit.119"* %35, i32 0, i32 2
  %37 = load %"adt$main.ir.IRSourceFileList.121"*, %"adt$main.ir.IRSourceFileList.121"** %36
  %38 = call %"adt$main.ir.IRSourceFileList.121"* @"adtcfn$adtc$main.ir.IRSourceFileList.Cons"(%"adt$main.ir.IRSourceFile.120"* %34, %"adt$main.ir.IRSourceFileList.121"* %37)
  %39 = getelementptr inbounds %"adt$main.ir.IRCompilationUnit.119", %"adt$main.ir.IRCompilationUnit.119"* %33, i32 0, i32 2
  store %"adt$main.ir.IRSourceFileList.121"* %38, %"adt$main.ir.IRSourceFileList.121"** %39
  ret void

; <label>:40:                                     ; preds = %0, %42
  br label %46
                                                  ; No predecessors!
  unreachable

; <label>:42:                                     ; preds = %46
  %43 = load %"adt$main.ir.IRSourceFileList.121"*, %"adt$main.ir.IRSourceFileList.121"** %files
  %44 = getelementptr inbounds %"adt$main.ir.IRSourceFileList.121", %"adt$main.ir.IRSourceFileList.121"* %43, i32 0, i32 0
  %45 = load i32, i32* %44
  switch i32 %45, label %40 [
    i32 1, label %14
    i32 0, label %32
  ]

; <label>:46:                                     ; preds = %40, %47
  br label %42

; <label>:47:                                     ; preds = %entry
  %48 = load %"adt$main.ir.IRCompilationUnit.119"*, %"adt$main.ir.IRCompilationUnit.119"** %bake.unit_
  %49 = getelementptr inbounds %"adt$main.ir.IRCompilationUnit.119", %"adt$main.ir.IRCompilationUnit.119"* %48, i32 0, i32 2
  %50 = load %"adt$main.ir.IRSourceFileList.121"*, %"adt$main.ir.IRSourceFileList.121"** %49
  store %"adt$main.ir.IRSourceFileList.121"* %50, %"adt$main.ir.IRSourceFileList.121"** %files
  br label %46
}

define %"adt$main.ir.IRSourceFileList.121"* @"adtcfn$adtc$main.ir.IRSourceFileList.Cons"(%"adt$main.ir.IRSourceFile.120"* %file, %"adt$main.ir.IRSourceFileList.121"* %tail) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.ir.IRSourceFileList.Cons.122"* getelementptr (%"adtc$main.ir.IRSourceFileList.Cons.122", %"adtc$main.ir.IRSourceFileList.Cons.122"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.IRSourceFileList.Cons.122"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRSourceFileList.Cons.122", %"adtc$main.ir.IRSourceFileList.Cons.122"* %1, i32 0, i32 0
  store i32 1, i32* %2
  %3 = getelementptr inbounds %"adtc$main.ir.IRSourceFileList.Cons.122", %"adtc$main.ir.IRSourceFileList.Cons.122"* %1, i32 0, i32 1
  store %"adt$main.ir.IRSourceFile.120"* %file, %"adt$main.ir.IRSourceFile.120"** %3
  %4 = getelementptr inbounds %"adtc$main.ir.IRSourceFileList.Cons.122", %"adtc$main.ir.IRSourceFileList.Cons.122"* %1, i32 0, i32 2
  store %"adt$main.ir.IRSourceFileList.121"* %tail, %"adt$main.ir.IRSourceFileList.121"** %4
  %5 = bitcast %"adtc$main.ir.IRSourceFileList.Cons.122"* %1 to %"adt$main.ir.IRSourceFileList.121"*
  ret %"adt$main.ir.IRSourceFileList.121"* %5
}

declare i8* @jf_string_concat(i8*, i8*)

declare void @"fn$main.prelude.WriteLn"(i8*)

declare void @"fn$main.prelude.Exit"(i32)

define %"adt$main.ir.IRSourceFile.120"* @"fn$main.ir.IRSourceFileCreate"(%"adt$main.ir.IRCompilationUnit.119"* %unit_, %"adt$main.ir.SourceFileRef.123"* %ref) {
entry:
  %file = alloca %"adt$main.ir.IRSourceFile.120"*
  %bake.ref = alloca %"adt$main.ir.SourceFileRef.123"*
  %bake.unit_ = alloca %"adt$main.ir.IRCompilationUnit.119"*
  store %"adt$main.ir.SourceFileRef.123"* %ref, %"adt$main.ir.SourceFileRef.123"** %bake.ref
  store %"adt$main.ir.IRCompilationUnit.119"* %unit_, %"adt$main.ir.IRCompilationUnit.119"** %bake.unit_
  br label %0

; <label>:0:                                      ; preds = %entry
  %1 = call %"adt$main.ir.IRSourceFile.120"* @"adtcfn$adtc$main.ir.IRSourceFile.New"()
  store %"adt$main.ir.IRSourceFile.120"* %1, %"adt$main.ir.IRSourceFile.120"** %file
  %2 = load %"adt$main.ir.IRSourceFile.120"*, %"adt$main.ir.IRSourceFile.120"** %file
  %3 = load %"adt$main.ir.SourceFileRef.123"*, %"adt$main.ir.SourceFileRef.123"** %bake.ref
  %4 = getelementptr inbounds %"adt$main.ir.IRSourceFile.120", %"adt$main.ir.IRSourceFile.120"* %2, i32 0, i32 1
  store %"adt$main.ir.SourceFileRef.123"* %3, %"adt$main.ir.SourceFileRef.123"** %4
  %5 = load %"adt$main.ir.IRSourceFile.120"*, %"adt$main.ir.IRSourceFile.120"** %file
  %6 = load %"adt$main.ir.IRCompilationUnit.119"*, %"adt$main.ir.IRCompilationUnit.119"** %bake.unit_
  %7 = getelementptr inbounds %"adt$main.ir.IRSourceFile.120", %"adt$main.ir.IRSourceFile.120"* %5, i32 0, i32 2
  store %"adt$main.ir.IRCompilationUnit.119"* %6, %"adt$main.ir.IRCompilationUnit.119"** %7
  %8 = load %"adt$main.ir.IRSourceFile.120"*, %"adt$main.ir.IRSourceFile.120"** %file
  %9 = call %"adt$main.ir.IRImportList.124"* @"adtcfn$adtc$main.ir.IRImportList.Nil"()
  %10 = getelementptr inbounds %"adt$main.ir.IRSourceFile.120", %"adt$main.ir.IRSourceFile.120"* %8, i32 0, i32 3
  store %"adt$main.ir.IRImportList.124"* %9, %"adt$main.ir.IRImportList.124"** %10
  %11 = load %"adt$main.ir.IRSourceFile.120"*, %"adt$main.ir.IRSourceFile.120"** %file
  %12 = call %"adt$main.ir.IRSymbolList.125"* @"adtcfn$adtc$main.ir.IRSymbolList.Nil"()
  %13 = getelementptr inbounds %"adt$main.ir.IRSourceFile.120", %"adt$main.ir.IRSourceFile.120"* %11, i32 0, i32 4
  store %"adt$main.ir.IRSymbolList.125"* %12, %"adt$main.ir.IRSymbolList.125"** %13
  %14 = load %"adt$main.ir.IRCompilationUnit.119"*, %"adt$main.ir.IRCompilationUnit.119"** %bake.unit_
  %15 = load %"adt$main.ir.IRSourceFile.120"*, %"adt$main.ir.IRSourceFile.120"** %file
  call void @"fn$main.ir.IRUnitInsertFile"(%"adt$main.ir.IRCompilationUnit.119"* %14, %"adt$main.ir.IRSourceFile.120"* %15)
  %16 = load %"adt$main.ir.IRSourceFile.120"*, %"adt$main.ir.IRSourceFile.120"** %file
  ret %"adt$main.ir.IRSourceFile.120"* %16
}

define %"adt$main.ir.IRSourceFile.120"* @"adtcfn$adtc$main.ir.IRSourceFile.New"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.ir.IRSourceFile.New"* getelementptr (%"adtc$main.ir.IRSourceFile.New", %"adtc$main.ir.IRSourceFile.New"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.IRSourceFile.New"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRSourceFile.New", %"adtc$main.ir.IRSourceFile.New"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.ir.IRSourceFile.New"* %1 to %"adt$main.ir.IRSourceFile.120"*
  ret %"adt$main.ir.IRSourceFile.120"* %3
}

define %"adt$main.ir.IRImportList.124"* @"adtcfn$adtc$main.ir.IRImportList.Nil"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.IRImportList.Nil"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRImportList.Nil", %"adtc$main.ir.IRImportList.Nil"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.ir.IRImportList.Nil"* %1 to %"adt$main.ir.IRImportList.124"*
  ret %"adt$main.ir.IRImportList.124"* %3
}

define %"adt$main.ir.IRSymbolList.125"* @"adtcfn$adtc$main.ir.IRSymbolList.Nil"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.IRSymbolList.Nil"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRSymbolList.Nil", %"adtc$main.ir.IRSymbolList.Nil"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.ir.IRSymbolList.Nil"* %1 to %"adt$main.ir.IRSymbolList.125"*
  ret %"adt$main.ir.IRSymbolList.125"* %3
}

define %"adt$main.ir.IRCompilationUnit.119"* @"fn$main.ir.IRCompilationUnitCreate"(i8* %name) {
entry:
  %unit_ = alloca %"adt$main.ir.IRCompilationUnit.119"*
  %bake.name = alloca i8*
  store i8* %name, i8** %bake.name
  br label %0

; <label>:0:                                      ; preds = %entry
  %1 = call %"adt$main.ir.IRCompilationUnit.119"* @"adtcfn$adtc$main.ir.IRCompilationUnit.New"()
  store %"adt$main.ir.IRCompilationUnit.119"* %1, %"adt$main.ir.IRCompilationUnit.119"** %unit_
  %2 = load %"adt$main.ir.IRCompilationUnit.119"*, %"adt$main.ir.IRCompilationUnit.119"** %unit_
  %3 = load i8*, i8** %bake.name
  %4 = getelementptr inbounds %"adt$main.ir.IRCompilationUnit.119", %"adt$main.ir.IRCompilationUnit.119"* %2, i32 0, i32 1
  store i8* %3, i8** %4
  %5 = load %"adt$main.ir.IRCompilationUnit.119"*, %"adt$main.ir.IRCompilationUnit.119"** %unit_
  %6 = call %"adt$main.ir.IRSourceFileList.121"* @"adtcfn$adtc$main.ir.IRSourceFileList.Nil"()
  %7 = getelementptr inbounds %"adt$main.ir.IRCompilationUnit.119", %"adt$main.ir.IRCompilationUnit.119"* %5, i32 0, i32 2
  store %"adt$main.ir.IRSourceFileList.121"* %6, %"adt$main.ir.IRSourceFileList.121"** %7
  %8 = load %"adt$main.ir.IRCompilationUnit.119"*, %"adt$main.ir.IRCompilationUnit.119"** %unit_
  ret %"adt$main.ir.IRCompilationUnit.119"* %8
}

define %"adt$main.ir.IRCompilationUnit.119"* @"adtcfn$adtc$main.ir.IRCompilationUnit.New"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.ir.IRCompilationUnit.New"* getelementptr (%"adtc$main.ir.IRCompilationUnit.New", %"adtc$main.ir.IRCompilationUnit.New"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.IRCompilationUnit.New"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRCompilationUnit.New", %"adtc$main.ir.IRCompilationUnit.New"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.ir.IRCompilationUnit.New"* %1 to %"adt$main.ir.IRCompilationUnit.119"*
  ret %"adt$main.ir.IRCompilationUnit.119"* %3
}

define %"adt$main.ir.IRSourceFileList.121"* @"adtcfn$adtc$main.ir.IRSourceFileList.Nil"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.IRSourceFileList.Nil"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRSourceFileList.Nil", %"adtc$main.ir.IRSourceFileList.Nil"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.ir.IRSourceFileList.Nil"* %1 to %"adt$main.ir.IRSourceFileList.121"*
  ret %"adt$main.ir.IRSourceFileList.121"* %3
}

define %"adt$main.ir.IRCompilationUnitList.126"* @"adtcfn$adtc$main.ir.IRCompilationUnitList.Nil"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.IRCompilationUnitList.Nil"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRCompilationUnitList.Nil", %"adtc$main.ir.IRCompilationUnitList.Nil"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.ir.IRCompilationUnitList.Nil"* %1 to %"adt$main.ir.IRCompilationUnitList.126"*
  ret %"adt$main.ir.IRCompilationUnitList.126"* %3
}

declare i8* @jf_allocate(i32)

define %"adt$main.ir.IRCompilationUnitList.126"* @"adtcfn$adtc$main.ir.IRCompilationUnitList.Cons"(%"adt$main.ir.IRCompilationUnit.119"* %unit_, %"adt$main.ir.IRCompilationUnitList.126"* %tail) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.ir.IRCompilationUnitList.Cons.127"* getelementptr (%"adtc$main.ir.IRCompilationUnitList.Cons.127", %"adtc$main.ir.IRCompilationUnitList.Cons.127"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.IRCompilationUnitList.Cons.127"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRCompilationUnitList.Cons.127", %"adtc$main.ir.IRCompilationUnitList.Cons.127"* %1, i32 0, i32 0
  store i32 1, i32* %2
  %3 = getelementptr inbounds %"adtc$main.ir.IRCompilationUnitList.Cons.127", %"adtc$main.ir.IRCompilationUnitList.Cons.127"* %1, i32 0, i32 1
  store %"adt$main.ir.IRCompilationUnit.119"* %unit_, %"adt$main.ir.IRCompilationUnit.119"** %3
  %4 = getelementptr inbounds %"adtc$main.ir.IRCompilationUnitList.Cons.127", %"adtc$main.ir.IRCompilationUnitList.Cons.127"* %1, i32 0, i32 2
  store %"adt$main.ir.IRCompilationUnitList.126"* %tail, %"adt$main.ir.IRCompilationUnitList.126"** %4
  %5 = bitcast %"adtc$main.ir.IRCompilationUnitList.Cons.127"* %1 to %"adt$main.ir.IRCompilationUnitList.126"*
  ret %"adt$main.ir.IRCompilationUnitList.126"* %5
}

define %"adt$main.ir.SourceFileRef.123"* @"adtcfn$adtc$main.ir.SourceFileRef.New"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.ir.SourceFileRef.New"* getelementptr (%"adtc$main.ir.SourceFileRef.New", %"adtc$main.ir.SourceFileRef.New"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.SourceFileRef.New"*
  %2 = getelementptr inbounds %"adtc$main.ir.SourceFileRef.New", %"adtc$main.ir.SourceFileRef.New"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.ir.SourceFileRef.New"* %1 to %"adt$main.ir.SourceFileRef.123"*
  ret %"adt$main.ir.SourceFileRef.123"* %3
}

define %"adt$main.ir.IRSymbolList.125"* @"adtcfn$adtc$main.ir.IRSymbolList.Cons"(%"adt$main.ir.IRSymbol.110"* %symbol, %"adt$main.ir.IRSymbolList.125"* %tail) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.ir.IRSymbolList.Cons.128"* getelementptr (%"adtc$main.ir.IRSymbolList.Cons.128", %"adtc$main.ir.IRSymbolList.Cons.128"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.IRSymbolList.Cons.128"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRSymbolList.Cons.128", %"adtc$main.ir.IRSymbolList.Cons.128"* %1, i32 0, i32 0
  store i32 1, i32* %2
  %3 = getelementptr inbounds %"adtc$main.ir.IRSymbolList.Cons.128", %"adtc$main.ir.IRSymbolList.Cons.128"* %1, i32 0, i32 1
  store %"adt$main.ir.IRSymbol.110"* %symbol, %"adt$main.ir.IRSymbol.110"** %3
  %4 = getelementptr inbounds %"adtc$main.ir.IRSymbolList.Cons.128", %"adtc$main.ir.IRSymbolList.Cons.128"* %1, i32 0, i32 2
  store %"adt$main.ir.IRSymbolList.125"* %tail, %"adt$main.ir.IRSymbolList.125"** %4
  %5 = bitcast %"adtc$main.ir.IRSymbolList.Cons.128"* %1 to %"adt$main.ir.IRSymbolList.125"*
  ret %"adt$main.ir.IRSymbolList.125"* %5
}

define %"adt$main.ir.MaybeIRType"* @"adtcfn$adtc$main.ir.MaybeIRType.Nothing"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.MaybeIRType.Nothing"*
  %2 = getelementptr inbounds %"adtc$main.ir.MaybeIRType.Nothing", %"adtc$main.ir.MaybeIRType.Nothing"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.ir.MaybeIRType.Nothing"* %1 to %"adt$main.ir.MaybeIRType"*
  ret %"adt$main.ir.MaybeIRType"* %3
}

define %"adt$main.ir.MaybeIRType"* @"adtcfn$adtc$main.ir.MaybeIRType.Just"(%"adt$main.ir.IRType.111"* %val) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.ir.MaybeIRType.Just"* getelementptr (%"adtc$main.ir.MaybeIRType.Just", %"adtc$main.ir.MaybeIRType.Just"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.MaybeIRType.Just"*
  %2 = getelementptr inbounds %"adtc$main.ir.MaybeIRType.Just", %"adtc$main.ir.MaybeIRType.Just"* %1, i32 0, i32 0
  store i32 1, i32* %2
  %3 = getelementptr inbounds %"adtc$main.ir.MaybeIRType.Just", %"adtc$main.ir.MaybeIRType.Just"* %1, i32 0, i32 1
  store %"adt$main.ir.IRType.111"* %val, %"adt$main.ir.IRType.111"** %3
  %4 = bitcast %"adtc$main.ir.MaybeIRType.Just"* %1 to %"adt$main.ir.MaybeIRType"*
  ret %"adt$main.ir.MaybeIRType"* %4
}

define %"adt$main.ir.IRTypeList.129"* @"adtcfn$adtc$main.ir.IRTypeList.Nil"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.IRTypeList.Nil"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRTypeList.Nil", %"adtc$main.ir.IRTypeList.Nil"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.ir.IRTypeList.Nil"* %1 to %"adt$main.ir.IRTypeList.129"*
  ret %"adt$main.ir.IRTypeList.129"* %3
}

define %"adt$main.ir.IRTypeList.129"* @"adtcfn$adtc$main.ir.IRTypeList.Cons"(%"adt$main.ir.IRType.111"* %type, %"adt$main.ir.IRTypeList.129"* %tail) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.ir.IRTypeList.Cons"* getelementptr (%"adtc$main.ir.IRTypeList.Cons", %"adtc$main.ir.IRTypeList.Cons"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.IRTypeList.Cons"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRTypeList.Cons", %"adtc$main.ir.IRTypeList.Cons"* %1, i32 0, i32 0
  store i32 1, i32* %2
  %3 = getelementptr inbounds %"adtc$main.ir.IRTypeList.Cons", %"adtc$main.ir.IRTypeList.Cons"* %1, i32 0, i32 1
  store %"adt$main.ir.IRType.111"* %type, %"adt$main.ir.IRType.111"** %3
  %4 = getelementptr inbounds %"adtc$main.ir.IRTypeList.Cons", %"adtc$main.ir.IRTypeList.Cons"* %1, i32 0, i32 2
  store %"adt$main.ir.IRTypeList.129"* %tail, %"adt$main.ir.IRTypeList.129"** %4
  %5 = bitcast %"adtc$main.ir.IRTypeList.Cons"* %1 to %"adt$main.ir.IRTypeList.129"*
  ret %"adt$main.ir.IRTypeList.129"* %5
}

define %"adt$main.ir.IRType.111"* @"adtcfn$adtc$main.ir.IRType.Ref"(%"adt$main.ir.IRTypeReference.131"* %ref) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.ir.IRType.Ref.130"* getelementptr (%"adtc$main.ir.IRType.Ref.130", %"adtc$main.ir.IRType.Ref.130"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.IRType.Ref.130"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRType.Ref.130", %"adtc$main.ir.IRType.Ref.130"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = getelementptr inbounds %"adtc$main.ir.IRType.Ref.130", %"adtc$main.ir.IRType.Ref.130"* %1, i32 0, i32 1
  store %"adt$main.ir.IRTypeReference.131"* %ref, %"adt$main.ir.IRTypeReference.131"** %3
  %4 = bitcast %"adtc$main.ir.IRType.Ref.130"* %1 to %"adt$main.ir.IRType.111"*
  ret %"adt$main.ir.IRType.111"* %4
}

define %"adt$main.ir.IRType.111"* @"adtcfn$adtc$main.ir.IRType.Prim"(%"adt$main.ir.IRPrimType.133"* %type) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.ir.IRType.Prim.132"* getelementptr (%"adtc$main.ir.IRType.Prim.132", %"adtc$main.ir.IRType.Prim.132"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.IRType.Prim.132"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRType.Prim.132", %"adtc$main.ir.IRType.Prim.132"* %1, i32 0, i32 0
  store i32 1, i32* %2
  %3 = getelementptr inbounds %"adtc$main.ir.IRType.Prim.132", %"adtc$main.ir.IRType.Prim.132"* %1, i32 0, i32 1
  store %"adt$main.ir.IRPrimType.133"* %type, %"adt$main.ir.IRPrimType.133"** %3
  %4 = bitcast %"adtc$main.ir.IRType.Prim.132"* %1 to %"adt$main.ir.IRType.111"*
  ret %"adt$main.ir.IRType.111"* %4
}

define %"adt$main.ir.IRType.111"* @"adtcfn$adtc$main.ir.IRType.ADT"(%"adt$main.ir.IRADTDecl.107"* %decl) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.ir.IRType.ADT.134"* getelementptr (%"adtc$main.ir.IRType.ADT.134", %"adtc$main.ir.IRType.ADT.134"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.IRType.ADT.134"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRType.ADT.134", %"adtc$main.ir.IRType.ADT.134"* %1, i32 0, i32 0
  store i32 2, i32* %2
  %3 = getelementptr inbounds %"adtc$main.ir.IRType.ADT.134", %"adtc$main.ir.IRType.ADT.134"* %1, i32 0, i32 1
  store %"adt$main.ir.IRADTDecl.107"* %decl, %"adt$main.ir.IRADTDecl.107"** %3
  %4 = bitcast %"adtc$main.ir.IRType.ADT.134"* %1 to %"adt$main.ir.IRType.111"*
  ret %"adt$main.ir.IRType.111"* %4
}

define %"adt$main.ir.IRType.111"* @"adtcfn$adtc$main.ir.IRType.ADTMetaclass"(%"adt$main.ir.IRADTDecl.107"* %decl) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.ir.IRType.ADTMetaclass.135"* getelementptr (%"adtc$main.ir.IRType.ADTMetaclass.135", %"adtc$main.ir.IRType.ADTMetaclass.135"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.IRType.ADTMetaclass.135"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRType.ADTMetaclass.135", %"adtc$main.ir.IRType.ADTMetaclass.135"* %1, i32 0, i32 0
  store i32 3, i32* %2
  %3 = getelementptr inbounds %"adtc$main.ir.IRType.ADTMetaclass.135", %"adtc$main.ir.IRType.ADTMetaclass.135"* %1, i32 0, i32 1
  store %"adt$main.ir.IRADTDecl.107"* %decl, %"adt$main.ir.IRADTDecl.107"** %3
  %4 = bitcast %"adtc$main.ir.IRType.ADTMetaclass.135"* %1 to %"adt$main.ir.IRType.111"*
  ret %"adt$main.ir.IRType.111"* %4
}

define %"adt$main.ir.IRType.111"* @"adtcfn$adtc$main.ir.IRType.ArrayUnsized"(%"adt$main.ir.IRType.111"* %elementType) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.ir.IRType.ArrayUnsized.136"* getelementptr (%"adtc$main.ir.IRType.ArrayUnsized.136", %"adtc$main.ir.IRType.ArrayUnsized.136"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.IRType.ArrayUnsized.136"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRType.ArrayUnsized.136", %"adtc$main.ir.IRType.ArrayUnsized.136"* %1, i32 0, i32 0
  store i32 4, i32* %2
  %3 = getelementptr inbounds %"adtc$main.ir.IRType.ArrayUnsized.136", %"adtc$main.ir.IRType.ArrayUnsized.136"* %1, i32 0, i32 1
  store %"adt$main.ir.IRType.111"* %elementType, %"adt$main.ir.IRType.111"** %3
  %4 = bitcast %"adtc$main.ir.IRType.ArrayUnsized.136"* %1 to %"adt$main.ir.IRType.111"*
  ret %"adt$main.ir.IRType.111"* %4
}

define %"adt$main.ir.IRType.111"* @"adtcfn$adtc$main.ir.IRType.ArraySized"(%"adt$main.ir.IRType.111"* %elementType, %"adt$main.ir.IRExprNode.138"* %size) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.ir.IRType.ArraySized.137"* getelementptr (%"adtc$main.ir.IRType.ArraySized.137", %"adtc$main.ir.IRType.ArraySized.137"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.IRType.ArraySized.137"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRType.ArraySized.137", %"adtc$main.ir.IRType.ArraySized.137"* %1, i32 0, i32 0
  store i32 5, i32* %2
  %3 = getelementptr inbounds %"adtc$main.ir.IRType.ArraySized.137", %"adtc$main.ir.IRType.ArraySized.137"* %1, i32 0, i32 1
  store %"adt$main.ir.IRType.111"* %elementType, %"adt$main.ir.IRType.111"** %3
  %4 = getelementptr inbounds %"adtc$main.ir.IRType.ArraySized.137", %"adtc$main.ir.IRType.ArraySized.137"* %1, i32 0, i32 2
  store %"adt$main.ir.IRExprNode.138"* %size, %"adt$main.ir.IRExprNode.138"** %4
  %5 = bitcast %"adtc$main.ir.IRType.ArraySized.137"* %1 to %"adt$main.ir.IRType.111"*
  ret %"adt$main.ir.IRType.111"* %5
}

define %"adt$main.ir.IRType.111"* @"adtcfn$adtc$main.ir.IRType.Function"(%"adt$main.ir.IRType.111"* %retTy, %"adt$main.ir.IRTypeList.129"* %list) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.ir.IRType.Function"* getelementptr (%"adtc$main.ir.IRType.Function", %"adtc$main.ir.IRType.Function"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.IRType.Function"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRType.Function", %"adtc$main.ir.IRType.Function"* %1, i32 0, i32 0
  store i32 6, i32* %2
  %3 = getelementptr inbounds %"adtc$main.ir.IRType.Function", %"adtc$main.ir.IRType.Function"* %1, i32 0, i32 1
  store %"adt$main.ir.IRType.111"* %retTy, %"adt$main.ir.IRType.111"** %3
  %4 = getelementptr inbounds %"adtc$main.ir.IRType.Function", %"adtc$main.ir.IRType.Function"* %1, i32 0, i32 2
  store %"adt$main.ir.IRTypeList.129"* %list, %"adt$main.ir.IRTypeList.129"** %4
  %5 = bitcast %"adtc$main.ir.IRType.Function"* %1 to %"adt$main.ir.IRType.111"*
  ret %"adt$main.ir.IRType.111"* %5
}

define %"adt$main.ir.IRTypeReference.131"* @"adtcfn$adtc$main.ir.IRTypeReference.New"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.ir.IRTypeReference.New"* getelementptr (%"adtc$main.ir.IRTypeReference.New", %"adtc$main.ir.IRTypeReference.New"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.IRTypeReference.New"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRTypeReference.New", %"adtc$main.ir.IRTypeReference.New"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.ir.IRTypeReference.New"* %1 to %"adt$main.ir.IRTypeReference.131"*
  ret %"adt$main.ir.IRTypeReference.131"* %3
}

define i32 @"fn$main.ir.PrimGetTag"(%"adt$main.ir.IRPrimType.133"* %prim) {
entry:
  %bake.prim = alloca %"adt$main.ir.IRPrimType.133"*
  store %"adt$main.ir.IRPrimType.133"* %prim, %"adt$main.ir.IRPrimType.133"** %bake.prim
  br label %7

; <label>:0:                                      ; preds = %7
  call void @"fn$main.prelude.WriteLn"(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @2, i32 0, i32 0))
  call void @"fn$main.prelude.Exit"(i32 1)
  unreachable

; <label>:1:                                      ; preds = %7
  ret i32 4

; <label>:2:                                      ; preds = %7
  ret i32 3

; <label>:3:                                      ; preds = %7
  ret i32 2

; <label>:4:                                      ; preds = %7
  ret i32 1

; <label>:5:                                      ; preds = %7
  ret i32 0
                                                  ; No predecessors!
  unreachable

; <label>:7:                                      ; preds = %entry
  %8 = load %"adt$main.ir.IRPrimType.133"*, %"adt$main.ir.IRPrimType.133"** %bake.prim
  %9 = getelementptr inbounds %"adt$main.ir.IRPrimType.133", %"adt$main.ir.IRPrimType.133"* %8, i32 0, i32 0
  %10 = load i32, i32* %9
  switch i32 %10, label %0 [
    i32 5, label %1
    i32 4, label %2
    i32 3, label %3
    i32 2, label %4
    i32 0, label %5
  ]
}

define %"adt$main.ir.IRPrimType.133"* @"adtcfn$adtc$main.ir.IRPrimType.Unit"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.IRPrimType.Unit"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRPrimType.Unit", %"adtc$main.ir.IRPrimType.Unit"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.ir.IRPrimType.Unit"* %1 to %"adt$main.ir.IRPrimType.133"*
  ret %"adt$main.ir.IRPrimType.133"* %3
}

define %"adt$main.ir.IRPrimType.133"* @"adtcfn$adtc$main.ir.IRPrimType.Undef"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.IRPrimType.Undef"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRPrimType.Undef", %"adtc$main.ir.IRPrimType.Undef"* %1, i32 0, i32 0
  store i32 1, i32* %2
  %3 = bitcast %"adtc$main.ir.IRPrimType.Undef"* %1 to %"adt$main.ir.IRPrimType.133"*
  ret %"adt$main.ir.IRPrimType.133"* %3
}

define %"adt$main.ir.IRPrimType.133"* @"adtcfn$adtc$main.ir.IRPrimType.I32"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.IRPrimType.I32"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRPrimType.I32", %"adtc$main.ir.IRPrimType.I32"* %1, i32 0, i32 0
  store i32 2, i32* %2
  %3 = bitcast %"adtc$main.ir.IRPrimType.I32"* %1 to %"adt$main.ir.IRPrimType.133"*
  ret %"adt$main.ir.IRPrimType.133"* %3
}

define %"adt$main.ir.IRPrimType.133"* @"adtcfn$adtc$main.ir.IRPrimType.String"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.IRPrimType.String"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRPrimType.String", %"adtc$main.ir.IRPrimType.String"* %1, i32 0, i32 0
  store i32 3, i32* %2
  %3 = bitcast %"adtc$main.ir.IRPrimType.String"* %1 to %"adt$main.ir.IRPrimType.133"*
  ret %"adt$main.ir.IRPrimType.133"* %3
}

define %"adt$main.ir.IRPrimType.133"* @"adtcfn$adtc$main.ir.IRPrimType.Pointer"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.IRPrimType.Pointer"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRPrimType.Pointer", %"adtc$main.ir.IRPrimType.Pointer"* %1, i32 0, i32 0
  store i32 4, i32* %2
  %3 = bitcast %"adtc$main.ir.IRPrimType.Pointer"* %1 to %"adt$main.ir.IRPrimType.133"*
  ret %"adt$main.ir.IRPrimType.133"* %3
}

define %"adt$main.ir.IRPrimType.133"* @"adtcfn$adtc$main.ir.IRPrimType.Bool"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.IRPrimType.Bool"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRPrimType.Bool", %"adtc$main.ir.IRPrimType.Bool"* %1, i32 0, i32 0
  store i32 5, i32* %2
  %3 = bitcast %"adtc$main.ir.IRPrimType.Bool"* %1 to %"adt$main.ir.IRPrimType.133"*
  ret %"adt$main.ir.IRPrimType.133"* %3
}

define %"adt$main.ir.IRExprNode.138"* @"adtcfn$adtc$main.ir.IRExprNode.New"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.ir.IRExprNode.New"* getelementptr (%"adtc$main.ir.IRExprNode.New", %"adtc$main.ir.IRExprNode.New"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.IRExprNode.New"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRExprNode.New", %"adtc$main.ir.IRExprNode.New"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.ir.IRExprNode.New"* %1 to %"adt$main.ir.IRExprNode.138"*
  ret %"adt$main.ir.IRExprNode.138"* %3
}

define %"adt$main.ir.IRTypeNode.115"* @"adtcfn$adtc$main.ir.IRTypeNode.New"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.ir.IRTypeNode.New"* getelementptr (%"adtc$main.ir.IRTypeNode.New", %"adtc$main.ir.IRTypeNode.New"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.IRTypeNode.New"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRTypeNode.New", %"adtc$main.ir.IRTypeNode.New"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.ir.IRTypeNode.New"* %1 to %"adt$main.ir.IRTypeNode.115"*
  ret %"adt$main.ir.IRTypeNode.115"* %3
}

define %"adt$main.ir.IRGlobalDecl.141"* @"adtcfn$adtc$main.ir.IRGlobalDecl.New"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.ir.IRGlobalDecl.New"* getelementptr (%"adtc$main.ir.IRGlobalDecl.New", %"adtc$main.ir.IRGlobalDecl.New"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.IRGlobalDecl.New"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRGlobalDecl.New", %"adtc$main.ir.IRGlobalDecl.New"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.ir.IRGlobalDecl.New"* %1 to %"adt$main.ir.IRGlobalDecl.141"*
  ret %"adt$main.ir.IRGlobalDecl.141"* %3
}

define %"adt$main.ir.IRParamList.118"* @"adtcfn$adtc$main.ir.IRParamList.Nil"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.IRParamList.Nil"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRParamList.Nil", %"adtc$main.ir.IRParamList.Nil"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.ir.IRParamList.Nil"* %1 to %"adt$main.ir.IRParamList.118"*
  ret %"adt$main.ir.IRParamList.118"* %3
}

define %"adt$main.ir.IRParamList.118"* @"adtcfn$adtc$main.ir.IRParamList.Cons"(%"adt$main.ir.IRParam.143"* %param, %"adt$main.ir.IRParamList.118"* %tail) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.ir.IRParamList.Cons.142"* getelementptr (%"adtc$main.ir.IRParamList.Cons.142", %"adtc$main.ir.IRParamList.Cons.142"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.IRParamList.Cons.142"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRParamList.Cons.142", %"adtc$main.ir.IRParamList.Cons.142"* %1, i32 0, i32 0
  store i32 1, i32* %2
  %3 = getelementptr inbounds %"adtc$main.ir.IRParamList.Cons.142", %"adtc$main.ir.IRParamList.Cons.142"* %1, i32 0, i32 1
  store %"adt$main.ir.IRParam.143"* %param, %"adt$main.ir.IRParam.143"** %3
  %4 = getelementptr inbounds %"adtc$main.ir.IRParamList.Cons.142", %"adtc$main.ir.IRParamList.Cons.142"* %1, i32 0, i32 2
  store %"adt$main.ir.IRParamList.118"* %tail, %"adt$main.ir.IRParamList.118"** %4
  %5 = bitcast %"adtc$main.ir.IRParamList.Cons.142"* %1 to %"adt$main.ir.IRParamList.118"*
  ret %"adt$main.ir.IRParamList.118"* %5
}

define %"adt$main.ir.IRParam.143"* @"adtcfn$adtc$main.ir.IRParam.New"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.ir.IRParam.New"* getelementptr (%"adtc$main.ir.IRParam.New", %"adtc$main.ir.IRParam.New"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.IRParam.New"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRParam.New", %"adtc$main.ir.IRParam.New"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.ir.IRParam.New"* %1 to %"adt$main.ir.IRParam.143"*
  ret %"adt$main.ir.IRParam.143"* %3
}

define %"adt$main.ir.IRADTConsList.109"* @"adtcfn$adtc$main.ir.IRADTConsList.Nil"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.IRADTConsList.Nil"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRADTConsList.Nil", %"adtc$main.ir.IRADTConsList.Nil"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.ir.IRADTConsList.Nil"* %1 to %"adt$main.ir.IRADTConsList.109"*
  ret %"adt$main.ir.IRADTConsList.109"* %3
}

define %"adt$main.ir.IRADTConsList.109"* @"adtcfn$adtc$main.ir.IRADTConsList.Cons"(%"adt$main.ir.IRADTCons.117"* %cons, %"adt$main.ir.IRADTConsList.109"* %tail) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.ir.IRADTConsList.Cons.116"* getelementptr (%"adtc$main.ir.IRADTConsList.Cons.116", %"adtc$main.ir.IRADTConsList.Cons.116"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.IRADTConsList.Cons.116"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRADTConsList.Cons.116", %"adtc$main.ir.IRADTConsList.Cons.116"* %1, i32 0, i32 0
  store i32 1, i32* %2
  %3 = getelementptr inbounds %"adtc$main.ir.IRADTConsList.Cons.116", %"adtc$main.ir.IRADTConsList.Cons.116"* %1, i32 0, i32 1
  store %"adt$main.ir.IRADTCons.117"* %cons, %"adt$main.ir.IRADTCons.117"** %3
  %4 = getelementptr inbounds %"adtc$main.ir.IRADTConsList.Cons.116", %"adtc$main.ir.IRADTConsList.Cons.116"* %1, i32 0, i32 2
  store %"adt$main.ir.IRADTConsList.109"* %tail, %"adt$main.ir.IRADTConsList.109"** %4
  %5 = bitcast %"adtc$main.ir.IRADTConsList.Cons.116"* %1 to %"adt$main.ir.IRADTConsList.109"*
  ret %"adt$main.ir.IRADTConsList.109"* %5
}

define %"adt$main.ir.IRADTCons.117"* @"adtcfn$adtc$main.ir.IRADTCons.New"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.ir.IRADTCons.New"* getelementptr (%"adtc$main.ir.IRADTCons.New", %"adtc$main.ir.IRADTCons.New"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.IRADTCons.New"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRADTCons.New", %"adtc$main.ir.IRADTCons.New"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.ir.IRADTCons.New"* %1 to %"adt$main.ir.IRADTCons.117"*
  ret %"adt$main.ir.IRADTCons.117"* %3
}

define %"adt$main.ir.IRADTFieldList.108"* @"adtcfn$adtc$main.ir.IRADTFieldList.Nil"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.IRADTFieldList.Nil"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRADTFieldList.Nil", %"adtc$main.ir.IRADTFieldList.Nil"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.ir.IRADTFieldList.Nil"* %1 to %"adt$main.ir.IRADTFieldList.108"*
  ret %"adt$main.ir.IRADTFieldList.108"* %3
}

define %"adt$main.ir.IRADTFieldList.108"* @"adtcfn$adtc$main.ir.IRADTFieldList.Cons"(%"adt$main.ir.IRADTField.113"* %field_, %"adt$main.ir.IRADTFieldList.108"* %tail) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.ir.IRADTFieldList.Cons.112"* getelementptr (%"adtc$main.ir.IRADTFieldList.Cons.112", %"adtc$main.ir.IRADTFieldList.Cons.112"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.IRADTFieldList.Cons.112"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRADTFieldList.Cons.112", %"adtc$main.ir.IRADTFieldList.Cons.112"* %1, i32 0, i32 0
  store i32 1, i32* %2
  %3 = getelementptr inbounds %"adtc$main.ir.IRADTFieldList.Cons.112", %"adtc$main.ir.IRADTFieldList.Cons.112"* %1, i32 0, i32 1
  store %"adt$main.ir.IRADTField.113"* %field_, %"adt$main.ir.IRADTField.113"** %3
  %4 = getelementptr inbounds %"adtc$main.ir.IRADTFieldList.Cons.112", %"adtc$main.ir.IRADTFieldList.Cons.112"* %1, i32 0, i32 2
  store %"adt$main.ir.IRADTFieldList.108"* %tail, %"adt$main.ir.IRADTFieldList.108"** %4
  %5 = bitcast %"adtc$main.ir.IRADTFieldList.Cons.112"* %1 to %"adt$main.ir.IRADTFieldList.108"*
  ret %"adt$main.ir.IRADTFieldList.108"* %5
}

define %"adt$main.ir.IRADTField.113"* @"adtcfn$adtc$main.ir.IRADTField.New"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.ir.IRADTField.New"* getelementptr (%"adtc$main.ir.IRADTField.New", %"adtc$main.ir.IRADTField.New"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.IRADTField.New"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRADTField.New", %"adtc$main.ir.IRADTField.New"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.ir.IRADTField.New"* %1 to %"adt$main.ir.IRADTField.113"*
  ret %"adt$main.ir.IRADTField.113"* %3
}

define %"adt$main.ir.IRADTDecl.107"* @"adtcfn$adtc$main.ir.IRADTDecl.New"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.ir.IRADTDecl.New"* getelementptr (%"adtc$main.ir.IRADTDecl.New", %"adtc$main.ir.IRADTDecl.New"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.IRADTDecl.New"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRADTDecl.New", %"adtc$main.ir.IRADTDecl.New"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.ir.IRADTDecl.New"* %1 to %"adt$main.ir.IRADTDecl.107"*
  ret %"adt$main.ir.IRADTDecl.107"* %3
}

define %"adt$main.ir.IRBlockNode.144"* @"adtcfn$adtc$main.ir.IRBlockNode.New"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.ir.IRBlockNode.New"* getelementptr (%"adtc$main.ir.IRBlockNode.New", %"adtc$main.ir.IRBlockNode.New"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.IRBlockNode.New"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRBlockNode.New", %"adtc$main.ir.IRBlockNode.New"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.ir.IRBlockNode.New"* %1 to %"adt$main.ir.IRBlockNode.144"*
  ret %"adt$main.ir.IRBlockNode.144"* %3
}

define %"adt$main.ir.IRFunctionBody.146"* @"adtcfn$adtc$main.ir.IRFunctionBody.FFIImport"(i8* %text) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.ir.IRFunctionBody.FFIImport.147"* getelementptr (%"adtc$main.ir.IRFunctionBody.FFIImport.147", %"adtc$main.ir.IRFunctionBody.FFIImport.147"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.IRFunctionBody.FFIImport.147"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRFunctionBody.FFIImport.147", %"adtc$main.ir.IRFunctionBody.FFIImport.147"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = getelementptr inbounds %"adtc$main.ir.IRFunctionBody.FFIImport.147", %"adtc$main.ir.IRFunctionBody.FFIImport.147"* %1, i32 0, i32 2
  store i8* %text, i8** %3
  %4 = bitcast %"adtc$main.ir.IRFunctionBody.FFIImport.147"* %1 to %"adt$main.ir.IRFunctionBody.146"*
  ret %"adt$main.ir.IRFunctionBody.146"* %4
}

define %"adt$main.ir.IRFunctionBody.146"* @"adtcfn$adtc$main.ir.IRFunctionBody.Block"(%"adt$main.ir.IRBlockNode.144"* %block) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.ir.IRFunctionBody.Block.148"* getelementptr (%"adtc$main.ir.IRFunctionBody.Block.148", %"adtc$main.ir.IRFunctionBody.Block.148"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.IRFunctionBody.Block.148"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRFunctionBody.Block.148", %"adtc$main.ir.IRFunctionBody.Block.148"* %1, i32 0, i32 0
  store i32 1, i32* %2
  %3 = getelementptr inbounds %"adtc$main.ir.IRFunctionBody.Block.148", %"adtc$main.ir.IRFunctionBody.Block.148"* %1, i32 0, i32 2
  store %"adt$main.ir.IRBlockNode.144"* %block, %"adt$main.ir.IRBlockNode.144"** %3
  %4 = bitcast %"adtc$main.ir.IRFunctionBody.Block.148"* %1 to %"adt$main.ir.IRFunctionBody.146"*
  ret %"adt$main.ir.IRFunctionBody.146"* %4
}

define %"adt$main.ir.IRFunctionDecl.149"* @"adtcfn$adtc$main.ir.IRFunctionDecl.New"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.ir.IRFunctionDecl.New"* getelementptr (%"adtc$main.ir.IRFunctionDecl.New", %"adtc$main.ir.IRFunctionDecl.New"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.IRFunctionDecl.New"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRFunctionDecl.New", %"adtc$main.ir.IRFunctionDecl.New"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.ir.IRFunctionDecl.New"* %1 to %"adt$main.ir.IRFunctionDecl.149"*
  ret %"adt$main.ir.IRFunctionDecl.149"* %3
}

define %"adt$main.ir.MaybeIRSymbol"* @"adtcfn$adtc$main.ir.MaybeIRSymbol.Nothing"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.MaybeIRSymbol.Nothing"*
  %2 = getelementptr inbounds %"adtc$main.ir.MaybeIRSymbol.Nothing", %"adtc$main.ir.MaybeIRSymbol.Nothing"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.ir.MaybeIRSymbol.Nothing"* %1 to %"adt$main.ir.MaybeIRSymbol"*
  ret %"adt$main.ir.MaybeIRSymbol"* %3
}

define %"adt$main.ir.MaybeIRSymbol"* @"adtcfn$adtc$main.ir.MaybeIRSymbol.Just"(%"adt$main.ir.IRSymbol.110"* %symbol) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.ir.MaybeIRSymbol.Just"* getelementptr (%"adtc$main.ir.MaybeIRSymbol.Just", %"adtc$main.ir.MaybeIRSymbol.Just"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.MaybeIRSymbol.Just"*
  %2 = getelementptr inbounds %"adtc$main.ir.MaybeIRSymbol.Just", %"adtc$main.ir.MaybeIRSymbol.Just"* %1, i32 0, i32 0
  store i32 1, i32* %2
  %3 = getelementptr inbounds %"adtc$main.ir.MaybeIRSymbol.Just", %"adtc$main.ir.MaybeIRSymbol.Just"* %1, i32 0, i32 1
  store %"adt$main.ir.IRSymbol.110"* %symbol, %"adt$main.ir.IRSymbol.110"** %3
  %4 = bitcast %"adtc$main.ir.MaybeIRSymbol.Just"* %1 to %"adt$main.ir.MaybeIRSymbol"*
  ret %"adt$main.ir.MaybeIRSymbol"* %4
}

define %"adt$main.ir.IRSymbol.110"* @"adtcfn$adtc$main.ir.IRSymbol.Function"(%"adt$main.ir.IRFunctionDecl.149"* %decl) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.ir.IRSymbol.Function.150"* getelementptr (%"adtc$main.ir.IRSymbol.Function.150", %"adtc$main.ir.IRSymbol.Function.150"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.IRSymbol.Function.150"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRSymbol.Function.150", %"adtc$main.ir.IRSymbol.Function.150"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = getelementptr inbounds %"adtc$main.ir.IRSymbol.Function.150", %"adtc$main.ir.IRSymbol.Function.150"* %1, i32 0, i32 4
  store %"adt$main.ir.IRFunctionDecl.149"* %decl, %"adt$main.ir.IRFunctionDecl.149"** %3
  %4 = bitcast %"adtc$main.ir.IRSymbol.Function.150"* %1 to %"adt$main.ir.IRSymbol.110"*
  ret %"adt$main.ir.IRSymbol.110"* %4
}

define %"adt$main.ir.IRSymbol.110"* @"adtcfn$adtc$main.ir.IRSymbol.Global"(%"adt$main.ir.IRGlobalDecl.141"* %decl) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.ir.IRSymbol.Global.151"* getelementptr (%"adtc$main.ir.IRSymbol.Global.151", %"adtc$main.ir.IRSymbol.Global.151"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.IRSymbol.Global.151"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRSymbol.Global.151", %"adtc$main.ir.IRSymbol.Global.151"* %1, i32 0, i32 0
  store i32 1, i32* %2
  %3 = getelementptr inbounds %"adtc$main.ir.IRSymbol.Global.151", %"adtc$main.ir.IRSymbol.Global.151"* %1, i32 0, i32 4
  store %"adt$main.ir.IRGlobalDecl.141"* %decl, %"adt$main.ir.IRGlobalDecl.141"** %3
  %4 = bitcast %"adtc$main.ir.IRSymbol.Global.151"* %1 to %"adt$main.ir.IRSymbol.110"*
  ret %"adt$main.ir.IRSymbol.110"* %4
}

define %"adt$main.ir.IRSymbol.110"* @"adtcfn$adtc$main.ir.IRSymbol.ADT"(%"adt$main.ir.IRADTDecl.107"* %decl) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.ir.IRSymbol.ADT.152"* getelementptr (%"adtc$main.ir.IRSymbol.ADT.152", %"adtc$main.ir.IRSymbol.ADT.152"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.IRSymbol.ADT.152"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRSymbol.ADT.152", %"adtc$main.ir.IRSymbol.ADT.152"* %1, i32 0, i32 0
  store i32 2, i32* %2
  %3 = getelementptr inbounds %"adtc$main.ir.IRSymbol.ADT.152", %"adtc$main.ir.IRSymbol.ADT.152"* %1, i32 0, i32 4
  store %"adt$main.ir.IRADTDecl.107"* %decl, %"adt$main.ir.IRADTDecl.107"** %3
  %4 = bitcast %"adtc$main.ir.IRSymbol.ADT.152"* %1 to %"adt$main.ir.IRSymbol.110"*
  ret %"adt$main.ir.IRSymbol.110"* %4
}

define %"adt$main.ir.IRImportList.124"* @"adtcfn$adtc$main.ir.IRImportList.Cons"(%"adt$main.ir.IRImport.154"* %import_, %"adt$main.ir.IRImportList.124"* %tail) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.ir.IRImportList.Cons.153"* getelementptr (%"adtc$main.ir.IRImportList.Cons.153", %"adtc$main.ir.IRImportList.Cons.153"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.IRImportList.Cons.153"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRImportList.Cons.153", %"adtc$main.ir.IRImportList.Cons.153"* %1, i32 0, i32 0
  store i32 1, i32* %2
  %3 = getelementptr inbounds %"adtc$main.ir.IRImportList.Cons.153", %"adtc$main.ir.IRImportList.Cons.153"* %1, i32 0, i32 1
  store %"adt$main.ir.IRImport.154"* %import_, %"adt$main.ir.IRImport.154"** %3
  %4 = getelementptr inbounds %"adtc$main.ir.IRImportList.Cons.153", %"adtc$main.ir.IRImportList.Cons.153"* %1, i32 0, i32 2
  store %"adt$main.ir.IRImportList.124"* %tail, %"adt$main.ir.IRImportList.124"** %4
  %5 = bitcast %"adtc$main.ir.IRImportList.Cons.153"* %1 to %"adt$main.ir.IRImportList.124"*
  ret %"adt$main.ir.IRImportList.124"* %5
}

define %"adt$main.ir.IRImport.154"* @"adtcfn$adtc$main.ir.IRImport.New"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.ir.IRImport.New"* getelementptr (%"adtc$main.ir.IRImport.New", %"adtc$main.ir.IRImport.New"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir.IRImport.New"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRImport.New", %"adtc$main.ir.IRImport.New"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.ir.IRImport.New"* %1 to %"adt$main.ir.IRImport.154"*
  ret %"adt$main.ir.IRImport.154"* %3
}
