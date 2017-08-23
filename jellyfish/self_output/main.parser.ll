; ModuleID = 'main.parser'
source_filename = "main.parser"

%"adt$main.parser.ParserContext" = type { i32, i8*, %"adt$main.token.TokenStream.3"*, i32 }
%"adt$main.token.TokenStream.3" = type { i32, %"adt$main.token.Token.2"**, i32, i32 }
%"adt$main.token.Token.2" = type { i32, %"adt$main.token.TokenType.1"*, %"adt$main.ast.SrcLoc.0"*, i8* }
%"adt$main.token.TokenType.1" = type opaque
%"adt$main.ast.SrcLoc.0" = type { i32 }
%"adt$main.ast.AstFile" = type { i32, %"adt$main.ast.AstImportList"*, %"adt$main.ast.AstTopLevelList"* }
%"adt$main.ast.AstImportList" = type opaque
%"adt$main.ast.AstTopLevelList" = type opaque
%"adt$main.ast.AstImport" = type { i32, %"adt$main.ast.SrcLoc.0"*, %"adt$main.ast.QualID"* }
%"adt$main.ast.QualID" = type opaque
%"adt$main.ast.AstTopLevel" = type { i32, %"adt$main.ast.SrcLoc.0"* }
%"adt$main.ast_type.AstType" = type { i32, %"adt$main.ast.SrcLoc.0"* }
%"adt$main.ast_expr.MaybeAstExpr" = type { i32 }
%"adt$main.ast.Binder" = type opaque
%"adt$main.ast_expr.AstExpr" = type { i32, %"adt$main.ast.SrcLoc.0"* }
%"adt$main.ast_expr.AstExprList" = type opaque
%"adt$main.ast_expr.BinOp" = type opaque
%"adtc$main.ast_expr.MaybeAstExpr.Just" = type { i32, %"adt$main.ast_expr.AstExpr"* }
%"adtc$main.ast.SrcLoc.At" = type { i32, i32, i32 }
%"adt$main.ast.AstADTConsList" = type opaque
%"adt$main.ast.AstADTCons" = type { i32, %"adt$main.ast.Binder"*, %"adt$main.ast.AstParamList"* }
%"adt$main.ast.AstParamList" = type opaque
%"adt$main.ast.AstParam" = type { i32, %"adt$main.ast.Binder"*, %"adt$main.ast_type.AstType"* }
%"adt$main.ast.AstADTFieldsList" = type opaque
%"adt$main.ast.AstFuncBody" = type { i32, %"adt$main.ast.SrcLoc.0"* }
%"adt$main.ast_type.MaybeAstType" = type opaque
%"adt$main.ast_stmt.AstStmtList" = type opaque
%"adtc$main.ast_stmt.MaybeAstStmt.Just" = type { i32, %"adt$main.ast_stmt.AstStmt"* }
%"adt$main.ast_stmt.AstStmt" = type { i32, %"adt$main.ast.SrcLoc.0"* }
%"adt$main.ast_stmt.MaybeAstStmt" = type { i32 }
%"adt$main.ast_stmt.AstCaseList" = type opaque
%"adt$main.ast_stmt.AstCase" = type { i32, %"adt$main.ast.SrcLoc.0"*, %"adt$main.ast_stmt.AstPattern"*, %"adt$main.ast_stmt.AstStmtList"* }
%"adt$main.ast_stmt.AstPattern" = type { i32, %"adt$main.ast.SrcLoc.0"* }
%"adtc$main.ast_stmt.MaybeAstPattern.Just" = type { i32, %"adt$main.ast_stmt.AstPattern"* }
%"adt$main.ast_stmt.MaybeAstPattern" = type { i32 }
%"adt$main.ast_stmt.AstPatternList" = type opaque
%"adt$main.ast.AstField" = type { i32, %"adt$main.ast.Binder"*, %"adt$main.ast_type.AstType"* }
%"adtc$main.parser.ParserContext.New" = type { i32, i8*, %"adt$main.token.TokenStream.3"*, i32 }

@0 = private global [14 x i8] c"expected type\00"
@1 = private global [17 x i8] c"expected pattern\00"
@2 = private global [27 x i8] c"expected else, elif or end\00"
@3 = private global [20 x i8] c"expected expression\00"
@4 = private global [13 x i8] c"expected eof\00"
@5 = private global [7 x i8] c"(line \00"
@6 = private global [7 x i8] c", col \00"
@7 = private global [18 x i8] c"): Parser Error: \00"
@8 = private global [10 x i8] c"expected \00"

define void @"fn$main.parser.ParserParseFile"(%"adt$main.parser.ParserContext"* %par, %"adt$main.ast.AstFile"* %file) {
entry:
  %bake.file = alloca %"adt$main.ast.AstFile"*
  %bake.par = alloca %"adt$main.parser.ParserContext"*
  store %"adt$main.ast.AstFile"* %file, %"adt$main.ast.AstFile"** %bake.file
  store %"adt$main.parser.ParserContext"* %par, %"adt$main.parser.ParserContext"** %bake.par
  br label %0

; <label>:0:                                      ; preds = %entry
  %1 = load %"adt$main.ast.AstFile"*, %"adt$main.ast.AstFile"** %bake.file
  %2 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %3 = call %"adt$main.ast.AstImportList"* @"fn$main.parser.parseImports"(%"adt$main.parser.ParserContext"* %2)
  %4 = getelementptr inbounds %"adt$main.ast.AstFile", %"adt$main.ast.AstFile"* %1, i32 0, i32 1
  store %"adt$main.ast.AstImportList"* %3, %"adt$main.ast.AstImportList"** %4
  %5 = load %"adt$main.ast.AstFile"*, %"adt$main.ast.AstFile"** %bake.file
  %6 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %7 = call %"adt$main.ast.AstTopLevelList"* @"fn$main.parser.parseTLDs"(%"adt$main.parser.ParserContext"* %6)
  %8 = getelementptr inbounds %"adt$main.ast.AstFile", %"adt$main.ast.AstFile"* %5, i32 0, i32 2
  store %"adt$main.ast.AstTopLevelList"* %7, %"adt$main.ast.AstTopLevelList"** %8
  ret void
}

define %"adt$main.ast.AstImportList"* @"fn$main.parser.parseImports"(%"adt$main.parser.ParserContext"* %par) {
entry:
  %astImport = alloca %"adt$main.ast.AstImport"*
  %loc = alloca %"adt$main.ast.SrcLoc.0"*
  %bake.par = alloca %"adt$main.parser.ParserContext"*
  store %"adt$main.parser.ParserContext"* %par, %"adt$main.parser.ParserContext"** %bake.par
  br label %20
                                                  ; No predecessors!
  unreachable

; <label>:1:                                      ; preds = %20
  %2 = call %"adt$main.ast.AstImportList"* @"adtcfn$adtc$main.ast.AstImportList.Nil"()
  ret %"adt$main.ast.AstImportList"* %2

; <label>:3:                                      ; preds = %20
  %4 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %5 = call %"adt$main.ast.SrcLoc.0"* @"fn$main.parser.getLocation"(%"adt$main.parser.ParserContext"* %4)
  store %"adt$main.ast.SrcLoc.0"* %5, %"adt$main.ast.SrcLoc.0"** %loc
  %6 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %7 = call %"adt$main.token.Token.2"* @"fn$main.parser.take"(%"adt$main.parser.ParserContext"* %6)
  %8 = call %"adt$main.ast.AstImport"* @"adtcfn$adtc$main.ast.AstImport.New"()
  store %"adt$main.ast.AstImport"* %8, %"adt$main.ast.AstImport"** %astImport
  %9 = load %"adt$main.ast.AstImport"*, %"adt$main.ast.AstImport"** %astImport
  %10 = load %"adt$main.ast.SrcLoc.0"*, %"adt$main.ast.SrcLoc.0"** %loc
  %11 = getelementptr inbounds %"adt$main.ast.AstImport", %"adt$main.ast.AstImport"* %9, i32 0, i32 1
  store %"adt$main.ast.SrcLoc.0"* %10, %"adt$main.ast.SrcLoc.0"** %11
  %12 = load %"adt$main.ast.AstImport"*, %"adt$main.ast.AstImport"** %astImport
  %13 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %14 = call %"adt$main.ast.QualID"* @"fn$main.parser.parseQualID"(%"adt$main.parser.ParserContext"* %13)
  %15 = getelementptr inbounds %"adt$main.ast.AstImport", %"adt$main.ast.AstImport"* %12, i32 0, i32 2
  store %"adt$main.ast.QualID"* %14, %"adt$main.ast.QualID"** %15
  %16 = load %"adt$main.ast.AstImport"*, %"adt$main.ast.AstImport"** %astImport
  %17 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %18 = call %"adt$main.ast.AstImportList"* @"fn$main.parser.parseImports"(%"adt$main.parser.ParserContext"* %17)
  %19 = call %"adt$main.ast.AstImportList"* @"adtcfn$adtc$main.ast.AstImportList.Cons"(%"adt$main.ast.AstImport"* %16, %"adt$main.ast.AstImportList"* %18)
  ret %"adt$main.ast.AstImportList"* %19

; <label>:20:                                     ; preds = %entry
  %21 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %22 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.KImport"()
  %23 = call i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %21, %"adt$main.token.TokenType.1"* %22)
  br i1 %23, label %3, label %1
}

define %"adt$main.ast.AstTopLevelList"* @"fn$main.parser.parseTLDs"(%"adt$main.parser.ParserContext"* %par) {
entry:
  %global_ = alloca %"adt$main.ast.AstTopLevel"*
  %fun = alloca %"adt$main.ast.AstTopLevel"*
  %adt_ = alloca %"adt$main.ast.AstTopLevel"*
  %bake.par = alloca %"adt$main.parser.ParserContext"*
  store %"adt$main.parser.ParserContext"* %par, %"adt$main.parser.ParserContext"** %bake.par
  br label %34
                                                  ; No predecessors!
  br label %10

; <label>:1:                                      ; preds = %11
  %2 = call %"adt$main.ast.AstTopLevelList"* @"adtcfn$adtc$main.ast.AstTopLevelList.Nil"()
  ret %"adt$main.ast.AstTopLevelList"* %2

; <label>:3:                                      ; preds = %11
  %4 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %5 = call %"adt$main.ast.AstTopLevel"* @"fn$main.parser.parseGlobal"(%"adt$main.parser.ParserContext"* %4)
  store %"adt$main.ast.AstTopLevel"* %5, %"adt$main.ast.AstTopLevel"** %global_
  %6 = load %"adt$main.ast.AstTopLevel"*, %"adt$main.ast.AstTopLevel"** %global_
  %7 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %8 = call %"adt$main.ast.AstTopLevelList"* @"fn$main.parser.parseTLDs"(%"adt$main.parser.ParserContext"* %7)
  %9 = call %"adt$main.ast.AstTopLevelList"* @"adtcfn$adtc$main.ast.AstTopLevelList.Cons"(%"adt$main.ast.AstTopLevel"* %6, %"adt$main.ast.AstTopLevelList"* %8)
  ret %"adt$main.ast.AstTopLevelList"* %9

; <label>:10:                                     ; preds = %0
  br label %22

; <label>:11:                                     ; preds = %23
  %12 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %13 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.KGlobal"()
  %14 = call i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %12, %"adt$main.token.TokenType.1"* %13)
  br i1 %14, label %3, label %1

; <label>:15:                                     ; preds = %23
  %16 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %17 = call %"adt$main.ast.AstTopLevel"* @"fn$main.parser.parseFunction"(%"adt$main.parser.ParserContext"* %16)
  store %"adt$main.ast.AstTopLevel"* %17, %"adt$main.ast.AstTopLevel"** %fun
  %18 = load %"adt$main.ast.AstTopLevel"*, %"adt$main.ast.AstTopLevel"** %fun
  %19 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %20 = call %"adt$main.ast.AstTopLevelList"* @"fn$main.parser.parseTLDs"(%"adt$main.parser.ParserContext"* %19)
  %21 = call %"adt$main.ast.AstTopLevelList"* @"adtcfn$adtc$main.ast.AstTopLevelList.Cons"(%"adt$main.ast.AstTopLevel"* %18, %"adt$main.ast.AstTopLevelList"* %20)
  ret %"adt$main.ast.AstTopLevelList"* %21

; <label>:22:                                     ; preds = %10
  unreachable

; <label>:23:                                     ; preds = %34
  %24 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %25 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.KFunction"()
  %26 = call i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %24, %"adt$main.token.TokenType.1"* %25)
  br i1 %26, label %15, label %11

; <label>:27:                                     ; preds = %34
  %28 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %29 = call %"adt$main.ast.AstTopLevel"* @"fn$main.parser.parseADT"(%"adt$main.parser.ParserContext"* %28)
  store %"adt$main.ast.AstTopLevel"* %29, %"adt$main.ast.AstTopLevel"** %adt_
  %30 = load %"adt$main.ast.AstTopLevel"*, %"adt$main.ast.AstTopLevel"** %adt_
  %31 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %32 = call %"adt$main.ast.AstTopLevelList"* @"fn$main.parser.parseTLDs"(%"adt$main.parser.ParserContext"* %31)
  %33 = call %"adt$main.ast.AstTopLevelList"* @"adtcfn$adtc$main.ast.AstTopLevelList.Cons"(%"adt$main.ast.AstTopLevel"* %30, %"adt$main.ast.AstTopLevelList"* %32)
  ret %"adt$main.ast.AstTopLevelList"* %33

; <label>:34:                                     ; preds = %entry
  %35 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %36 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.KADT"()
  %37 = call i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %35, %"adt$main.token.TokenType.1"* %36)
  br i1 %37, label %27, label %23
}

define %"adt$main.ast_type.AstType"* @"fn$main.parser.parseType"(%"adt$main.parser.ParserContext"* %par) {
entry:
  %size = alloca %"adt$main.ast_expr.MaybeAstExpr"*
  %type = alloca %"adt$main.ast_type.AstType"*
  %loc = alloca %"adt$main.ast.SrcLoc.0"*
  %bake.par = alloca %"adt$main.parser.ParserContext"*
  store %"adt$main.parser.ParserContext"* %par, %"adt$main.parser.ParserContext"** %bake.par
  br label %25

; <label>:0:                                      ; preds = %6
  %1 = load %"adt$main.ast_type.AstType"*, %"adt$main.ast_type.AstType"** %type
  %2 = load %"adt$main.ast.SrcLoc.0"*, %"adt$main.ast.SrcLoc.0"** %loc
  %3 = getelementptr inbounds %"adt$main.ast_type.AstType", %"adt$main.ast_type.AstType"* %1, i32 0, i32 1
  store %"adt$main.ast.SrcLoc.0"* %2, %"adt$main.ast.SrcLoc.0"** %3
  br label %24

; <label>:4:                                      ; preds = %18
  %5 = load %"adt$main.ast_type.AstType"*, %"adt$main.ast_type.AstType"** %type
  ret %"adt$main.ast_type.AstType"* %5

; <label>:6:                                      ; preds = %18
  %7 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %8 = call %"adt$main.token.Token.2"* @"fn$main.parser.take"(%"adt$main.parser.ParserContext"* %7)
  %9 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %10 = call %"adt$main.ast_expr.MaybeAstExpr"* @"fn$main.parser.maybeParseExpr"(%"adt$main.parser.ParserContext"* %9, i32 0)
  store %"adt$main.ast_expr.MaybeAstExpr"* %10, %"adt$main.ast_expr.MaybeAstExpr"** %size
  %11 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %12 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.RBracket"()
  %13 = call %"adt$main.token.Token.2"* @"fn$main.parser.consume"(%"adt$main.parser.ParserContext"* %11, %"adt$main.token.TokenType.1"* %12)
  %14 = load %"adt$main.ast_type.AstType"*, %"adt$main.ast_type.AstType"** %type
  %15 = load %"adt$main.ast_expr.MaybeAstExpr"*, %"adt$main.ast_expr.MaybeAstExpr"** %size
  %16 = call %"adt$main.ast_type.AstType"* @"adtcfn$adtc$main.ast_type.AstType.Array"(%"adt$main.ast_type.AstType"* %14, %"adt$main.ast_expr.MaybeAstExpr"* %15)
  store %"adt$main.ast_type.AstType"* %16, %"adt$main.ast_type.AstType"** %type
  br label %0
                                                  ; No predecessors!
  unreachable

; <label>:18:                                     ; preds = %24
  %19 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %20 = call %"adt$main.ast.SrcLoc.0"* @"fn$main.parser.getLocation"(%"adt$main.parser.ParserContext"* %19)
  store %"adt$main.ast.SrcLoc.0"* %20, %"adt$main.ast.SrcLoc.0"** %loc
  %21 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %22 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.LBracket"()
  %23 = call i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %21, %"adt$main.token.TokenType.1"* %22)
  br i1 %23, label %6, label %4

; <label>:24:                                     ; preds = %0, %25
  br label %18

; <label>:25:                                     ; preds = %entry
  %26 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %27 = call %"adt$main.ast.SrcLoc.0"* @"fn$main.parser.getLocation"(%"adt$main.parser.ParserContext"* %26)
  store %"adt$main.ast.SrcLoc.0"* %27, %"adt$main.ast.SrcLoc.0"** %loc
  %28 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %29 = call %"adt$main.ast_type.AstType"* @"fn$main.parser.parseTypePrim"(%"adt$main.parser.ParserContext"* %28)
  store %"adt$main.ast_type.AstType"* %29, %"adt$main.ast_type.AstType"** %type
  %30 = load %"adt$main.ast_type.AstType"*, %"adt$main.ast_type.AstType"** %type
  %31 = load %"adt$main.ast.SrcLoc.0"*, %"adt$main.ast.SrcLoc.0"** %loc
  %32 = getelementptr inbounds %"adt$main.ast_type.AstType", %"adt$main.ast_type.AstType"* %30, i32 0, i32 1
  store %"adt$main.ast.SrcLoc.0"* %31, %"adt$main.ast.SrcLoc.0"** %32
  br label %24
}

define %"adt$main.ast.SrcLoc.0"* @"fn$main.parser.getLocation"(%"adt$main.parser.ParserContext"* %par) {
entry:
  %bake.par = alloca %"adt$main.parser.ParserContext"*
  store %"adt$main.parser.ParserContext"* %par, %"adt$main.parser.ParserContext"** %bake.par
  br label %0

; <label>:0:                                      ; preds = %entry
  %1 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %2 = call %"adt$main.token.Token.2"* @"fn$main.parser.getNextToken"(%"adt$main.parser.ParserContext"* %1)
  %3 = getelementptr inbounds %"adt$main.token.Token.2", %"adt$main.token.Token.2"* %2, i32 0, i32 2
  %4 = load %"adt$main.ast.SrcLoc.0"*, %"adt$main.ast.SrcLoc.0"** %3
  ret %"adt$main.ast.SrcLoc.0"* %4
}

define %"adt$main.ast_type.AstType"* @"fn$main.parser.parseTypePrim"(%"adt$main.parser.ParserContext"* %par) {
entry:
  %bake.par = alloca %"adt$main.parser.ParserContext"*
  store %"adt$main.parser.ParserContext"* %par, %"adt$main.parser.ParserContext"** %bake.par
  br label %7
                                                  ; No predecessors!
  unreachable

; <label>:1:                                      ; preds = %7
  %2 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  call void @"fn$main.parser.ParserError"(%"adt$main.parser.ParserContext"* %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @0, i32 0, i32 0))
  unreachable

; <label>:3:                                      ; preds = %7
  %4 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %5 = call %"adt$main.ast.Binder"* @"fn$main.parser.parseBinder"(%"adt$main.parser.ParserContext"* %4)
  %6 = call %"adt$main.ast_type.AstType"* @"adtcfn$adtc$main.ast_type.AstType.Ref"(%"adt$main.ast.Binder"* %5)
  ret %"adt$main.ast_type.AstType"* %6

; <label>:7:                                      ; preds = %entry
  %8 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %9 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.Identifier"()
  %10 = call i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %8, %"adt$main.token.TokenType.1"* %9)
  br i1 %10, label %3, label %1
}

declare %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.LBracket"()

define i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %par, %"adt$main.token.TokenType.1"* %tt) {
entry:
  %bake.tt = alloca %"adt$main.token.TokenType.1"*
  %bake.par = alloca %"adt$main.parser.ParserContext"*
  store %"adt$main.token.TokenType.1"* %tt, %"adt$main.token.TokenType.1"** %bake.tt
  store %"adt$main.parser.ParserContext"* %par, %"adt$main.parser.ParserContext"** %bake.par
  br label %0

; <label>:0:                                      ; preds = %entry
  %1 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %2 = call %"adt$main.token.TokenType.1"* @"fn$main.parser.peek"(%"adt$main.parser.ParserContext"* %1)
  %3 = call i32 @"fn$main.token.TokenTypeToNum"(%"adt$main.token.TokenType.1"* %2)
  %4 = load %"adt$main.token.TokenType.1"*, %"adt$main.token.TokenType.1"** %bake.tt
  %5 = call i32 @"fn$main.token.TokenTypeToNum"(%"adt$main.token.TokenType.1"* %4)
  %6 = icmp eq i32 %3, %5
  ret i1 %6
}

define %"adt$main.token.Token.2"* @"fn$main.parser.take"(%"adt$main.parser.ParserContext"* %par) {
entry:
  %tok = alloca %"adt$main.token.Token.2"*
  %bake.par = alloca %"adt$main.parser.ParserContext"*
  store %"adt$main.parser.ParserContext"* %par, %"adt$main.parser.ParserContext"** %bake.par
  br label %10

; <label>:0:                                      ; preds = %2, %3
  %1 = load %"adt$main.token.Token.2"*, %"adt$main.token.Token.2"** %tok
  ret %"adt$main.token.Token.2"* %1

; <label>:2:                                      ; preds = %10
  br label %0

; <label>:3:                                      ; preds = %10
  %4 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %5 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %6 = getelementptr inbounds %"adt$main.parser.ParserContext", %"adt$main.parser.ParserContext"* %5, i32 0, i32 3
  %7 = load i32, i32* %6
  %8 = add i32 %7, 1
  %9 = getelementptr inbounds %"adt$main.parser.ParserContext", %"adt$main.parser.ParserContext"* %4, i32 0, i32 3
  store i32 %8, i32* %9
  br label %0

; <label>:10:                                     ; preds = %entry
  %11 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %12 = call %"adt$main.token.Token.2"* @"fn$main.parser.getNextToken"(%"adt$main.parser.ParserContext"* %11)
  store %"adt$main.token.Token.2"* %12, %"adt$main.token.Token.2"** %tok
  %13 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %14 = getelementptr inbounds %"adt$main.parser.ParserContext", %"adt$main.parser.ParserContext"* %13, i32 0, i32 3
  %15 = load i32, i32* %14
  %16 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %17 = getelementptr inbounds %"adt$main.parser.ParserContext", %"adt$main.parser.ParserContext"* %16, i32 0, i32 2
  %18 = load %"adt$main.token.TokenStream.3"*, %"adt$main.token.TokenStream.3"** %17
  %19 = getelementptr inbounds %"adt$main.token.TokenStream.3", %"adt$main.token.TokenStream.3"* %18, i32 0, i32 3
  %20 = load i32, i32* %19
  %21 = sub i32 %20, 1
  %22 = icmp slt i32 %15, %21
  br i1 %22, label %3, label %2
}

define %"adt$main.ast_expr.MaybeAstExpr"* @"fn$main.parser.maybeParseExpr"(%"adt$main.parser.ParserContext"* %par, i32 %prec) {
entry:
  %rhs = alloca %"adt$main.ast_expr.AstExpr"*
  %args = alloca %"adt$main.ast_expr.AstExprList"*
  %loc = alloca %"adt$main.ast.SrcLoc.0"*
  %ast = alloca %"adt$main.ast_expr.AstExpr"*
  %bake.prec = alloca i32
  %bake.par = alloca %"adt$main.parser.ParserContext"*
  store i32 %prec, i32* %bake.prec
  store %"adt$main.parser.ParserContext"* %par, %"adt$main.parser.ParserContext"** %bake.par
  br label %243

; <label>:0:                                      ; preds = %243
  ret %"adt$main.ast_expr.MaybeAstExpr"* %245

; <label>:1:                                      ; preds = %5
  br label %15

; <label>:2:                                      ; preds = %10
  %3 = load %"adt$main.ast_expr.AstExpr"*, %"adt$main.ast_expr.AstExpr"** %ast
  %4 = call %"adt$main.ast_expr.MaybeAstExpr"* @"adtcfn$adtc$main.ast_expr.MaybeAstExpr.Just"(%"adt$main.ast_expr.AstExpr"* %3)
  ret %"adt$main.ast_expr.MaybeAstExpr"* %4

; <label>:5:                                      ; preds = %10
  %6 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %7 = load %"adt$main.ast_expr.AstExpr"*, %"adt$main.ast_expr.AstExpr"** %ast
  %8 = call %"adt$main.ast_expr.BinOp"* @"adtcfn$adtc$main.ast_expr.BinOp.Multiply"()
  %9 = call %"adt$main.ast_expr.AstExpr"* @"fn$main.parser.parseBinOp"(%"adt$main.parser.ParserContext"* %6, %"adt$main.ast_expr.AstExpr"* %7, %"adt$main.ast_expr.BinOp"* %8, i32 12)
  store %"adt$main.ast_expr.AstExpr"* %9, %"adt$main.ast_expr.AstExpr"** %ast
  br label %1

; <label>:10:                                     ; preds = %12, %16
  %11 = phi i1 [ %14, %12 ], [ false, %16 ]
  br i1 %11, label %5, label %2

; <label>:12:                                     ; preds = %16
  %13 = load i32, i32* %bake.prec
  %14 = icmp sle i32 %13, 11
  br label %10

; <label>:15:                                     ; preds = %1, %20
  br label %30

; <label>:16:                                     ; preds = %25
  %17 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %18 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.Multiply"()
  %19 = call i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %17, %"adt$main.token.TokenType.1"* %18)
  br i1 %19, label %12, label %10

; <label>:20:                                     ; preds = %25
  %21 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %22 = load %"adt$main.ast_expr.AstExpr"*, %"adt$main.ast_expr.AstExpr"** %ast
  %23 = call %"adt$main.ast_expr.BinOp"* @"adtcfn$adtc$main.ast_expr.BinOp.Divide"()
  %24 = call %"adt$main.ast_expr.AstExpr"* @"fn$main.parser.parseBinOp"(%"adt$main.parser.ParserContext"* %21, %"adt$main.ast_expr.AstExpr"* %22, %"adt$main.ast_expr.BinOp"* %23, i32 12)
  store %"adt$main.ast_expr.AstExpr"* %24, %"adt$main.ast_expr.AstExpr"** %ast
  br label %15

; <label>:25:                                     ; preds = %27, %31
  %26 = phi i1 [ %29, %27 ], [ false, %31 ]
  br i1 %26, label %20, label %16

; <label>:27:                                     ; preds = %31
  %28 = load i32, i32* %bake.prec
  %29 = icmp sle i32 %28, 11
  br label %25

; <label>:30:                                     ; preds = %15, %35
  br label %45

; <label>:31:                                     ; preds = %40
  %32 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %33 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.Divide"()
  %34 = call i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %32, %"adt$main.token.TokenType.1"* %33)
  br i1 %34, label %27, label %25

; <label>:35:                                     ; preds = %40
  %36 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %37 = load %"adt$main.ast_expr.AstExpr"*, %"adt$main.ast_expr.AstExpr"** %ast
  %38 = call %"adt$main.ast_expr.BinOp"* @"adtcfn$adtc$main.ast_expr.BinOp.Minus"()
  %39 = call %"adt$main.ast_expr.AstExpr"* @"fn$main.parser.parseBinOp"(%"adt$main.parser.ParserContext"* %36, %"adt$main.ast_expr.AstExpr"* %37, %"adt$main.ast_expr.BinOp"* %38, i32 11)
  store %"adt$main.ast_expr.AstExpr"* %39, %"adt$main.ast_expr.AstExpr"** %ast
  br label %30

; <label>:40:                                     ; preds = %42, %46
  %41 = phi i1 [ %44, %42 ], [ false, %46 ]
  br i1 %41, label %35, label %31

; <label>:42:                                     ; preds = %46
  %43 = load i32, i32* %bake.prec
  %44 = icmp sle i32 %43, 10
  br label %40

; <label>:45:                                     ; preds = %30, %50
  br label %60

; <label>:46:                                     ; preds = %55
  %47 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %48 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.Minus"()
  %49 = call i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %47, %"adt$main.token.TokenType.1"* %48)
  br i1 %49, label %42, label %40

; <label>:50:                                     ; preds = %55
  %51 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %52 = load %"adt$main.ast_expr.AstExpr"*, %"adt$main.ast_expr.AstExpr"** %ast
  %53 = call %"adt$main.ast_expr.BinOp"* @"adtcfn$adtc$main.ast_expr.BinOp.Plus"()
  %54 = call %"adt$main.ast_expr.AstExpr"* @"fn$main.parser.parseBinOp"(%"adt$main.parser.ParserContext"* %51, %"adt$main.ast_expr.AstExpr"* %52, %"adt$main.ast_expr.BinOp"* %53, i32 11)
  store %"adt$main.ast_expr.AstExpr"* %54, %"adt$main.ast_expr.AstExpr"** %ast
  br label %45

; <label>:55:                                     ; preds = %57, %61
  %56 = phi i1 [ %59, %57 ], [ false, %61 ]
  br i1 %56, label %50, label %46

; <label>:57:                                     ; preds = %61
  %58 = load i32, i32* %bake.prec
  %59 = icmp sle i32 %58, 10
  br label %55

; <label>:60:                                     ; preds = %45, %65
  br label %75

; <label>:61:                                     ; preds = %70
  %62 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %63 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.Plus"()
  %64 = call i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %62, %"adt$main.token.TokenType.1"* %63)
  br i1 %64, label %57, label %55

; <label>:65:                                     ; preds = %70
  %66 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %67 = load %"adt$main.ast_expr.AstExpr"*, %"adt$main.ast_expr.AstExpr"** %ast
  %68 = call %"adt$main.ast_expr.BinOp"* @"adtcfn$adtc$main.ast_expr.BinOp.CmpLE"()
  %69 = call %"adt$main.ast_expr.AstExpr"* @"fn$main.parser.parseBinOp"(%"adt$main.parser.ParserContext"* %66, %"adt$main.ast_expr.AstExpr"* %67, %"adt$main.ast_expr.BinOp"* %68, i32 6)
  store %"adt$main.ast_expr.AstExpr"* %69, %"adt$main.ast_expr.AstExpr"** %ast
  br label %60

; <label>:70:                                     ; preds = %72, %76
  %71 = phi i1 [ %74, %72 ], [ false, %76 ]
  br i1 %71, label %65, label %61

; <label>:72:                                     ; preds = %76
  %73 = load i32, i32* %bake.prec
  %74 = icmp sle i32 %73, 5
  br label %70

; <label>:75:                                     ; preds = %60, %80
  br label %90

; <label>:76:                                     ; preds = %85
  %77 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %78 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.CmpLE"()
  %79 = call i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %77, %"adt$main.token.TokenType.1"* %78)
  br i1 %79, label %72, label %70

; <label>:80:                                     ; preds = %85
  %81 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %82 = load %"adt$main.ast_expr.AstExpr"*, %"adt$main.ast_expr.AstExpr"** %ast
  %83 = call %"adt$main.ast_expr.BinOp"* @"adtcfn$adtc$main.ast_expr.BinOp.CmpLT"()
  %84 = call %"adt$main.ast_expr.AstExpr"* @"fn$main.parser.parseBinOp"(%"adt$main.parser.ParserContext"* %81, %"adt$main.ast_expr.AstExpr"* %82, %"adt$main.ast_expr.BinOp"* %83, i32 6)
  store %"adt$main.ast_expr.AstExpr"* %84, %"adt$main.ast_expr.AstExpr"** %ast
  br label %75

; <label>:85:                                     ; preds = %87, %91
  %86 = phi i1 [ %89, %87 ], [ false, %91 ]
  br i1 %86, label %80, label %76

; <label>:87:                                     ; preds = %91
  %88 = load i32, i32* %bake.prec
  %89 = icmp sle i32 %88, 5
  br label %85

; <label>:90:                                     ; preds = %75, %95
  br label %105

; <label>:91:                                     ; preds = %100
  %92 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %93 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.CmpLT"()
  %94 = call i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %92, %"adt$main.token.TokenType.1"* %93)
  br i1 %94, label %87, label %85

; <label>:95:                                     ; preds = %100
  %96 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %97 = load %"adt$main.ast_expr.AstExpr"*, %"adt$main.ast_expr.AstExpr"** %ast
  %98 = call %"adt$main.ast_expr.BinOp"* @"adtcfn$adtc$main.ast_expr.BinOp.CmpGE"()
  %99 = call %"adt$main.ast_expr.AstExpr"* @"fn$main.parser.parseBinOp"(%"adt$main.parser.ParserContext"* %96, %"adt$main.ast_expr.AstExpr"* %97, %"adt$main.ast_expr.BinOp"* %98, i32 6)
  store %"adt$main.ast_expr.AstExpr"* %99, %"adt$main.ast_expr.AstExpr"** %ast
  br label %90

; <label>:100:                                    ; preds = %102, %106
  %101 = phi i1 [ %104, %102 ], [ false, %106 ]
  br i1 %101, label %95, label %91

; <label>:102:                                    ; preds = %106
  %103 = load i32, i32* %bake.prec
  %104 = icmp sle i32 %103, 5
  br label %100

; <label>:105:                                    ; preds = %90, %110
  br label %120

; <label>:106:                                    ; preds = %115
  %107 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %108 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.CmpGE"()
  %109 = call i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %107, %"adt$main.token.TokenType.1"* %108)
  br i1 %109, label %102, label %100

; <label>:110:                                    ; preds = %115
  %111 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %112 = load %"adt$main.ast_expr.AstExpr"*, %"adt$main.ast_expr.AstExpr"** %ast
  %113 = call %"adt$main.ast_expr.BinOp"* @"adtcfn$adtc$main.ast_expr.BinOp.CmpGT"()
  %114 = call %"adt$main.ast_expr.AstExpr"* @"fn$main.parser.parseBinOp"(%"adt$main.parser.ParserContext"* %111, %"adt$main.ast_expr.AstExpr"* %112, %"adt$main.ast_expr.BinOp"* %113, i32 6)
  store %"adt$main.ast_expr.AstExpr"* %114, %"adt$main.ast_expr.AstExpr"** %ast
  br label %105

; <label>:115:                                    ; preds = %117, %121
  %116 = phi i1 [ %119, %117 ], [ false, %121 ]
  br i1 %116, label %110, label %106

; <label>:117:                                    ; preds = %121
  %118 = load i32, i32* %bake.prec
  %119 = icmp sle i32 %118, 5
  br label %115

; <label>:120:                                    ; preds = %105, %125
  br label %135

; <label>:121:                                    ; preds = %130
  %122 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %123 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.CmpGT"()
  %124 = call i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %122, %"adt$main.token.TokenType.1"* %123)
  br i1 %124, label %117, label %115

; <label>:125:                                    ; preds = %130
  %126 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %127 = load %"adt$main.ast_expr.AstExpr"*, %"adt$main.ast_expr.AstExpr"** %ast
  %128 = call %"adt$main.ast_expr.BinOp"* @"adtcfn$adtc$main.ast_expr.BinOp.CmpNE"()
  %129 = call %"adt$main.ast_expr.AstExpr"* @"fn$main.parser.parseBinOp"(%"adt$main.parser.ParserContext"* %126, %"adt$main.ast_expr.AstExpr"* %127, %"adt$main.ast_expr.BinOp"* %128, i32 6)
  store %"adt$main.ast_expr.AstExpr"* %129, %"adt$main.ast_expr.AstExpr"** %ast
  br label %120

; <label>:130:                                    ; preds = %132, %136
  %131 = phi i1 [ %134, %132 ], [ false, %136 ]
  br i1 %131, label %125, label %121

; <label>:132:                                    ; preds = %136
  %133 = load i32, i32* %bake.prec
  %134 = icmp sle i32 %133, 5
  br label %130

; <label>:135:                                    ; preds = %120, %140
  br label %150

; <label>:136:                                    ; preds = %145
  %137 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %138 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.CmpNE"()
  %139 = call i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %137, %"adt$main.token.TokenType.1"* %138)
  br i1 %139, label %132, label %130

; <label>:140:                                    ; preds = %145
  %141 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %142 = load %"adt$main.ast_expr.AstExpr"*, %"adt$main.ast_expr.AstExpr"** %ast
  %143 = call %"adt$main.ast_expr.BinOp"* @"adtcfn$adtc$main.ast_expr.BinOp.CmpEQ"()
  %144 = call %"adt$main.ast_expr.AstExpr"* @"fn$main.parser.parseBinOp"(%"adt$main.parser.ParserContext"* %141, %"adt$main.ast_expr.AstExpr"* %142, %"adt$main.ast_expr.BinOp"* %143, i32 6)
  store %"adt$main.ast_expr.AstExpr"* %144, %"adt$main.ast_expr.AstExpr"** %ast
  br label %135

; <label>:145:                                    ; preds = %147, %151
  %146 = phi i1 [ %149, %147 ], [ false, %151 ]
  br i1 %146, label %140, label %136

; <label>:147:                                    ; preds = %151
  %148 = load i32, i32* %bake.prec
  %149 = icmp sle i32 %148, 5
  br label %145

; <label>:150:                                    ; preds = %135, %155
  br label %165

; <label>:151:                                    ; preds = %160
  %152 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %153 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.CmpEQ"()
  %154 = call i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %152, %"adt$main.token.TokenType.1"* %153)
  br i1 %154, label %147, label %145

; <label>:155:                                    ; preds = %160
  %156 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %157 = load %"adt$main.ast_expr.AstExpr"*, %"adt$main.ast_expr.AstExpr"** %ast
  %158 = call %"adt$main.ast_expr.BinOp"* @"adtcfn$adtc$main.ast_expr.BinOp.And"()
  %159 = call %"adt$main.ast_expr.AstExpr"* @"fn$main.parser.parseBinOp"(%"adt$main.parser.ParserContext"* %156, %"adt$main.ast_expr.AstExpr"* %157, %"adt$main.ast_expr.BinOp"* %158, i32 5)
  store %"adt$main.ast_expr.AstExpr"* %159, %"adt$main.ast_expr.AstExpr"** %ast
  br label %150

; <label>:160:                                    ; preds = %162, %166
  %161 = phi i1 [ %164, %162 ], [ false, %166 ]
  br i1 %161, label %155, label %151

; <label>:162:                                    ; preds = %166
  %163 = load i32, i32* %bake.prec
  %164 = icmp sle i32 %163, 4
  br label %160

; <label>:165:                                    ; preds = %150, %170
  br label %180

; <label>:166:                                    ; preds = %175
  %167 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %168 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.KAnd"()
  %169 = call i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %167, %"adt$main.token.TokenType.1"* %168)
  br i1 %169, label %162, label %160

; <label>:170:                                    ; preds = %175
  %171 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %172 = load %"adt$main.ast_expr.AstExpr"*, %"adt$main.ast_expr.AstExpr"** %ast
  %173 = call %"adt$main.ast_expr.BinOp"* @"adtcfn$adtc$main.ast_expr.BinOp.Or"()
  %174 = call %"adt$main.ast_expr.AstExpr"* @"fn$main.parser.parseBinOp"(%"adt$main.parser.ParserContext"* %171, %"adt$main.ast_expr.AstExpr"* %172, %"adt$main.ast_expr.BinOp"* %173, i32 4)
  store %"adt$main.ast_expr.AstExpr"* %174, %"adt$main.ast_expr.AstExpr"** %ast
  br label %165

; <label>:175:                                    ; preds = %177, %181
  %176 = phi i1 [ %179, %177 ], [ false, %181 ]
  br i1 %176, label %170, label %166

; <label>:177:                                    ; preds = %181
  %178 = load i32, i32* %bake.prec
  %179 = icmp sle i32 %178, 3
  br label %175

; <label>:180:                                    ; preds = %165, %185
  br label %196

; <label>:181:                                    ; preds = %197
  %182 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %183 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.KOr"()
  %184 = call i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %182, %"adt$main.token.TokenType.1"* %183)
  br i1 %184, label %177, label %175

; <label>:185:                                    ; preds = %197
  %186 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %187 = call %"adt$main.token.Token.2"* @"fn$main.parser.take"(%"adt$main.parser.ParserContext"* %186)
  %188 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %189 = call %"adt$main.ast_expr.AstExpr"* @"fn$main.parser.parseExpr"(%"adt$main.parser.ParserContext"* %188, i32 0)
  store %"adt$main.ast_expr.AstExpr"* %189, %"adt$main.ast_expr.AstExpr"** %rhs
  %190 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %191 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.RBracket"()
  %192 = call %"adt$main.token.Token.2"* @"fn$main.parser.consume"(%"adt$main.parser.ParserContext"* %190, %"adt$main.token.TokenType.1"* %191)
  %193 = load %"adt$main.ast_expr.AstExpr"*, %"adt$main.ast_expr.AstExpr"** %ast
  %194 = load %"adt$main.ast_expr.AstExpr"*, %"adt$main.ast_expr.AstExpr"** %rhs
  %195 = call %"adt$main.ast_expr.AstExpr"* @"adtcfn$adtc$main.ast_expr.AstExpr.Index"(%"adt$main.ast_expr.AstExpr"* %193, %"adt$main.ast_expr.AstExpr"* %194)
  store %"adt$main.ast_expr.AstExpr"* %195, %"adt$main.ast_expr.AstExpr"** %ast
  br label %180

; <label>:196:                                    ; preds = %180, %201
  br label %212

; <label>:197:                                    ; preds = %216
  %198 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %199 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.LBracket"()
  %200 = call i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %198, %"adt$main.token.TokenType.1"* %199)
  br i1 %200, label %185, label %181

; <label>:201:                                    ; preds = %216
  %202 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %203 = call %"adt$main.token.Token.2"* @"fn$main.parser.take"(%"adt$main.parser.ParserContext"* %202)
  %204 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %205 = call %"adt$main.ast_expr.AstExprList"* @"fn$main.parser.parseExprListCommaSeparated"(%"adt$main.parser.ParserContext"* %204)
  store %"adt$main.ast_expr.AstExprList"* %205, %"adt$main.ast_expr.AstExprList"** %args
  %206 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %207 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.RParen"()
  %208 = call %"adt$main.token.Token.2"* @"fn$main.parser.consume"(%"adt$main.parser.ParserContext"* %206, %"adt$main.token.TokenType.1"* %207)
  %209 = load %"adt$main.ast_expr.AstExpr"*, %"adt$main.ast_expr.AstExpr"** %ast
  %210 = load %"adt$main.ast_expr.AstExprList"*, %"adt$main.ast_expr.AstExprList"** %args
  %211 = call %"adt$main.ast_expr.AstExpr"* @"adtcfn$adtc$main.ast_expr.AstExpr.Call"(%"adt$main.ast_expr.AstExpr"* %209, %"adt$main.ast_expr.AstExprList"* %210)
  store %"adt$main.ast_expr.AstExpr"* %211, %"adt$main.ast_expr.AstExpr"** %ast
  br label %196

; <label>:212:                                    ; preds = %196, %220
  %213 = load %"adt$main.ast_expr.AstExpr"*, %"adt$main.ast_expr.AstExpr"** %ast
  %214 = load %"adt$main.ast.SrcLoc.0"*, %"adt$main.ast.SrcLoc.0"** %loc
  %215 = getelementptr inbounds %"adt$main.ast_expr.AstExpr", %"adt$main.ast_expr.AstExpr"* %213, i32 0, i32 1
  store %"adt$main.ast.SrcLoc.0"* %214, %"adt$main.ast.SrcLoc.0"** %215
  br label %237

; <label>:216:                                    ; preds = %231
  %217 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %218 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.LParen"()
  %219 = call i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %217, %"adt$main.token.TokenType.1"* %218)
  br i1 %219, label %201, label %197

; <label>:220:                                    ; preds = %231
  %221 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %222 = call %"adt$main.token.Token.2"* @"fn$main.parser.take"(%"adt$main.parser.ParserContext"* %221)
  %223 = load %"adt$main.ast_expr.AstExpr"*, %"adt$main.ast_expr.AstExpr"** %ast
  %224 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %225 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.Identifier"()
  %226 = call %"adt$main.token.Token.2"* @"fn$main.parser.consume"(%"adt$main.parser.ParserContext"* %224, %"adt$main.token.TokenType.1"* %225)
  %227 = getelementptr inbounds %"adt$main.token.Token.2", %"adt$main.token.Token.2"* %226, i32 0, i32 3
  %228 = load i8*, i8** %227
  %229 = call %"adt$main.ast_expr.AstExpr"* @"adtcfn$adtc$main.ast_expr.AstExpr.Dot"(%"adt$main.ast_expr.AstExpr"* %223, i8* %228)
  store %"adt$main.ast_expr.AstExpr"* %229, %"adt$main.ast_expr.AstExpr"** %ast
  br label %212
                                                  ; No predecessors!
  br label %242

; <label>:231:                                    ; preds = %237
  %232 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %233 = call %"adt$main.ast.SrcLoc.0"* @"fn$main.parser.getLocation"(%"adt$main.parser.ParserContext"* %232)
  store %"adt$main.ast.SrcLoc.0"* %233, %"adt$main.ast.SrcLoc.0"** %loc
  %234 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %235 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.Dot"()
  %236 = call i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %234, %"adt$main.token.TokenType.1"* %235)
  br i1 %236, label %220, label %216

; <label>:237:                                    ; preds = %212, %238
  br label %231

; <label>:238:                                    ; preds = %243
  %239 = bitcast %"adt$main.ast_expr.MaybeAstExpr"* %245 to %"adtc$main.ast_expr.MaybeAstExpr.Just"*
  %240 = getelementptr inbounds %"adtc$main.ast_expr.MaybeAstExpr.Just", %"adtc$main.ast_expr.MaybeAstExpr.Just"* %239, i32 0, i32 1
  %241 = load %"adt$main.ast_expr.AstExpr"*, %"adt$main.ast_expr.AstExpr"** %240
  store %"adt$main.ast_expr.AstExpr"* %241, %"adt$main.ast_expr.AstExpr"** %ast
  br label %237

; <label>:242:                                    ; preds = %230
  unreachable

; <label>:243:                                    ; preds = %entry
  %244 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %245 = call %"adt$main.ast_expr.MaybeAstExpr"* @"fn$main.parser.maybeParsePrimExpr"(%"adt$main.parser.ParserContext"* %244)
  %246 = getelementptr inbounds %"adt$main.ast_expr.MaybeAstExpr", %"adt$main.ast_expr.MaybeAstExpr"* %245, i32 0, i32 0
  %247 = load i32, i32* %246
  switch i32 %247, label %0 [
    i32 1, label %238
  ]
}

declare %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.RBracket"()

define %"adt$main.token.Token.2"* @"fn$main.parser.consume"(%"adt$main.parser.ParserContext"* %par, %"adt$main.token.TokenType.1"* %tt) {
entry:
  %bake.tt = alloca %"adt$main.token.TokenType.1"*
  %bake.par = alloca %"adt$main.parser.ParserContext"*
  store %"adt$main.token.TokenType.1"* %tt, %"adt$main.token.TokenType.1"** %bake.tt
  store %"adt$main.parser.ParserContext"* %par, %"adt$main.parser.ParserContext"** %bake.par
  br label %9
                                                  ; No predecessors!
  unreachable

; <label>:1:                                      ; preds = %9
  %2 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %3 = load %"adt$main.token.TokenType.1"*, %"adt$main.token.TokenType.1"** %bake.tt
  %4 = call i8* @"fn$main.token.TokenTypeGetName"(%"adt$main.token.TokenType.1"* %3)
  %5 = call i8* @jf_string_concat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @8, i32 0, i32 0), i8* %4)
  call void @"fn$main.parser.ParserError"(%"adt$main.parser.ParserContext"* %2, i8* %5)
  unreachable

; <label>:6:                                      ; preds = %9
  %7 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %8 = call %"adt$main.token.Token.2"* @"fn$main.parser.take"(%"adt$main.parser.ParserContext"* %7)
  ret %"adt$main.token.Token.2"* %8

; <label>:9:                                      ; preds = %entry
  %10 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %11 = load %"adt$main.token.TokenType.1"*, %"adt$main.token.TokenType.1"** %bake.tt
  %12 = call i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %10, %"adt$main.token.TokenType.1"* %11)
  br i1 %12, label %6, label %1
}

declare %"adt$main.ast_type.AstType"* @"adtcfn$adtc$main.ast_type.AstType.Array"(%"adt$main.ast_type.AstType"*, %"adt$main.ast_expr.MaybeAstExpr"*)

declare %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.Identifier"()

define %"adt$main.ast.Binder"* @"fn$main.parser.parseBinder"(%"adt$main.parser.ParserContext"* %par) {
entry:
  %tok = alloca %"adt$main.token.Token.2"*
  %bake.par = alloca %"adt$main.parser.ParserContext"*
  store %"adt$main.parser.ParserContext"* %par, %"adt$main.parser.ParserContext"** %bake.par
  br label %0

; <label>:0:                                      ; preds = %entry
  %1 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %2 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.Identifier"()
  %3 = call %"adt$main.token.Token.2"* @"fn$main.parser.consume"(%"adt$main.parser.ParserContext"* %1, %"adt$main.token.TokenType.1"* %2)
  store %"adt$main.token.Token.2"* %3, %"adt$main.token.Token.2"** %tok
  %4 = load %"adt$main.token.Token.2"*, %"adt$main.token.Token.2"** %tok
  %5 = getelementptr inbounds %"adt$main.token.Token.2", %"adt$main.token.Token.2"* %4, i32 0, i32 3
  %6 = load i8*, i8** %5
  %7 = load %"adt$main.token.Token.2"*, %"adt$main.token.Token.2"** %tok
  %8 = getelementptr inbounds %"adt$main.token.Token.2", %"adt$main.token.Token.2"* %7, i32 0, i32 2
  %9 = load %"adt$main.ast.SrcLoc.0"*, %"adt$main.ast.SrcLoc.0"** %8
  %10 = call %"adt$main.ast.Binder"* @"adtcfn$adtc$main.ast.Binder.NameAt"(i8* %6, %"adt$main.ast.SrcLoc.0"* %9)
  ret %"adt$main.ast.Binder"* %10
}

declare %"adt$main.ast_type.AstType"* @"adtcfn$adtc$main.ast_type.AstType.Ref"(%"adt$main.ast.Binder"*)

define void @"fn$main.parser.ParserError"(%"adt$main.parser.ParserContext"* %par, i8* %message) {
entry:
  %loc = alloca %"adt$main.ast.SrcLoc.0"*
  %bake.message = alloca i8*
  %bake.par = alloca %"adt$main.parser.ParserContext"*
  store i8* %message, i8** %bake.message
  store %"adt$main.parser.ParserContext"* %par, %"adt$main.parser.ParserContext"** %bake.par
  br label %22

; <label>:0:                                      ; preds = %22
  %1 = bitcast %"adt$main.ast.SrcLoc.0"* %25 to %"adtc$main.ast.SrcLoc.At"*
  %2 = getelementptr inbounds %"adtc$main.ast.SrcLoc.At", %"adtc$main.ast.SrcLoc.At"* %1, i32 0, i32 1
  %3 = load i32, i32* %2
  %4 = bitcast %"adt$main.ast.SrcLoc.0"* %25 to %"adtc$main.ast.SrcLoc.At"*
  %5 = getelementptr inbounds %"adtc$main.ast.SrcLoc.At", %"adtc$main.ast.SrcLoc.At"* %4, i32 0, i32 2
  %6 = load i32, i32* %5
  %7 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %8 = getelementptr inbounds %"adt$main.parser.ParserContext", %"adt$main.parser.ParserContext"* %7, i32 0, i32 1
  %9 = load i8*, i8** %8
  %10 = call i8* @jf_string_concat(i8* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @5, i32 0, i32 0))
  %11 = add i32 %3, 1
  %12 = call i8* @"fn$main.prelude.IntToStr"(i32 %11)
  %13 = call i8* @jf_string_concat(i8* %10, i8* %12)
  %14 = call i8* @jf_string_concat(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @6, i32 0, i32 0))
  %15 = add i32 %6, 1
  %16 = call i8* @"fn$main.prelude.IntToStr"(i32 %15)
  %17 = call i8* @jf_string_concat(i8* %14, i8* %16)
  %18 = call i8* @jf_string_concat(i8* %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @7, i32 0, i32 0))
  %19 = load i8*, i8** %bake.message
  %20 = call i8* @jf_string_concat(i8* %18, i8* %19)
  call void @"fn$main.prelude.WriteLn"(i8* %20)
  br label %21

; <label>:21:                                     ; preds = %0, %22
  call void @"fn$main.prelude.Exit"(i32 1)
  unreachable

; <label>:22:                                     ; preds = %entry
  %23 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %24 = call %"adt$main.ast.SrcLoc.0"* @"fn$main.parser.getLocation"(%"adt$main.parser.ParserContext"* %23)
  store %"adt$main.ast.SrcLoc.0"* %24, %"adt$main.ast.SrcLoc.0"** %loc
  %25 = load %"adt$main.ast.SrcLoc.0"*, %"adt$main.ast.SrcLoc.0"** %loc
  %26 = getelementptr inbounds %"adt$main.ast.SrcLoc.0", %"adt$main.ast.SrcLoc.0"* %25, i32 0, i32 0
  %27 = load i32, i32* %26
  switch i32 %27, label %21 [
    i32 0, label %0
  ]
}

define %"adt$main.ast.AstADTConsList"* @"fn$main.parser.parseADTConsList"(%"adt$main.parser.ParserContext"* %par) {
entry:
  %cons = alloca %"adt$main.ast.AstADTCons"*
  %bake.par = alloca %"adt$main.parser.ParserContext"*
  store %"adt$main.parser.ParserContext"* %par, %"adt$main.parser.ParserContext"** %bake.par
  br label %10
                                                  ; No predecessors!
  unreachable

; <label>:1:                                      ; preds = %10
  %2 = call %"adt$main.ast.AstADTConsList"* @"adtcfn$adtc$main.ast.AstADTConsList.Nil"()
  ret %"adt$main.ast.AstADTConsList"* %2

; <label>:3:                                      ; preds = %10
  %4 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %5 = call %"adt$main.ast.AstADTCons"* @"fn$main.parser.parseADTCons"(%"adt$main.parser.ParserContext"* %4)
  store %"adt$main.ast.AstADTCons"* %5, %"adt$main.ast.AstADTCons"** %cons
  %6 = load %"adt$main.ast.AstADTCons"*, %"adt$main.ast.AstADTCons"** %cons
  %7 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %8 = call %"adt$main.ast.AstADTConsList"* @"fn$main.parser.parseADTConsList"(%"adt$main.parser.ParserContext"* %7)
  %9 = call %"adt$main.ast.AstADTConsList"* @"adtcfn$adtc$main.ast.AstADTConsList.Cons"(%"adt$main.ast.AstADTCons"* %6, %"adt$main.ast.AstADTConsList"* %8)
  ret %"adt$main.ast.AstADTConsList"* %9

; <label>:10:                                     ; preds = %entry
  %11 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %12 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.Identifier"()
  %13 = call i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %11, %"adt$main.token.TokenType.1"* %12)
  br i1 %13, label %3, label %1
}

define %"adt$main.ast.AstADTCons"* @"fn$main.parser.parseADTCons"(%"adt$main.parser.ParserContext"* %par) {
entry:
  %cons = alloca %"adt$main.ast.AstADTCons"*
  %params = alloca %"adt$main.ast.AstParamList"*
  %name = alloca %"adt$main.ast.Binder"*
  %bake.par = alloca %"adt$main.parser.ParserContext"*
  store %"adt$main.parser.ParserContext"* %par, %"adt$main.parser.ParserContext"** %bake.par
  br label %19

; <label>:0:                                      ; preds = %9, %11
  %1 = call %"adt$main.ast.AstADTCons"* @"adtcfn$adtc$main.ast.AstADTCons.New"()
  store %"adt$main.ast.AstADTCons"* %1, %"adt$main.ast.AstADTCons"** %cons
  %2 = load %"adt$main.ast.AstADTCons"*, %"adt$main.ast.AstADTCons"** %cons
  %3 = load %"adt$main.ast.Binder"*, %"adt$main.ast.Binder"** %name
  %4 = getelementptr inbounds %"adt$main.ast.AstADTCons", %"adt$main.ast.AstADTCons"* %2, i32 0, i32 1
  store %"adt$main.ast.Binder"* %3, %"adt$main.ast.Binder"** %4
  %5 = load %"adt$main.ast.AstADTCons"*, %"adt$main.ast.AstADTCons"** %cons
  %6 = load %"adt$main.ast.AstParamList"*, %"adt$main.ast.AstParamList"** %params
  %7 = getelementptr inbounds %"adt$main.ast.AstADTCons", %"adt$main.ast.AstADTCons"* %5, i32 0, i32 2
  store %"adt$main.ast.AstParamList"* %6, %"adt$main.ast.AstParamList"** %7
  %8 = load %"adt$main.ast.AstADTCons"*, %"adt$main.ast.AstADTCons"** %cons
  ret %"adt$main.ast.AstADTCons"* %8

; <label>:9:                                      ; preds = %19
  %10 = call %"adt$main.ast.AstParamList"* @"adtcfn$adtc$main.ast.AstParamList.Nil"()
  store %"adt$main.ast.AstParamList"* %10, %"adt$main.ast.AstParamList"** %params
  br label %0

; <label>:11:                                     ; preds = %19
  %12 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %13 = call %"adt$main.token.Token.2"* @"fn$main.parser.take"(%"adt$main.parser.ParserContext"* %12)
  %14 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %15 = call %"adt$main.ast.AstParamList"* @"fn$main.parser.parseParamList"(%"adt$main.parser.ParserContext"* %14)
  store %"adt$main.ast.AstParamList"* %15, %"adt$main.ast.AstParamList"** %params
  %16 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %17 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.RParen"()
  %18 = call %"adt$main.token.Token.2"* @"fn$main.parser.consume"(%"adt$main.parser.ParserContext"* %16, %"adt$main.token.TokenType.1"* %17)
  br label %0

; <label>:19:                                     ; preds = %entry
  %20 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %21 = call %"adt$main.ast.Binder"* @"fn$main.parser.parseBinder"(%"adt$main.parser.ParserContext"* %20)
  store %"adt$main.ast.Binder"* %21, %"adt$main.ast.Binder"** %name
  %22 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %23 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.LParen"()
  %24 = call i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %22, %"adt$main.token.TokenType.1"* %23)
  br i1 %24, label %11, label %9
}

declare %"adt$main.ast.AstADTConsList"* @"adtcfn$adtc$main.ast.AstADTConsList.Cons"(%"adt$main.ast.AstADTCons"*, %"adt$main.ast.AstADTConsList"*)

declare %"adt$main.ast.AstADTConsList"* @"adtcfn$adtc$main.ast.AstADTConsList.Nil"()

declare %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.LParen"()

define %"adt$main.ast.AstParamList"* @"fn$main.parser.parseParamList"(%"adt$main.parser.ParserContext"* %par) {
entry:
  %param_ = alloca %"adt$main.ast.AstParam"*
  %bake.par = alloca %"adt$main.parser.ParserContext"*
  store %"adt$main.parser.ParserContext"* %par, %"adt$main.parser.ParserContext"** %bake.par
  br label %10
                                                  ; No predecessors!
  unreachable

; <label>:1:                                      ; preds = %10
  %2 = call %"adt$main.ast.AstParamList"* @"adtcfn$adtc$main.ast.AstParamList.Nil"()
  ret %"adt$main.ast.AstParamList"* %2

; <label>:3:                                      ; preds = %10
  %4 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %5 = call %"adt$main.ast.AstParam"* @"fn$main.parser.parseParam"(%"adt$main.parser.ParserContext"* %4)
  store %"adt$main.ast.AstParam"* %5, %"adt$main.ast.AstParam"** %param_
  %6 = load %"adt$main.ast.AstParam"*, %"adt$main.ast.AstParam"** %param_
  %7 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %8 = call %"adt$main.ast.AstParamList"* @"fn$main.parser.parseParamListTail"(%"adt$main.parser.ParserContext"* %7)
  %9 = call %"adt$main.ast.AstParamList"* @"adtcfn$adtc$main.ast.AstParamList.Cons"(%"adt$main.ast.AstParam"* %6, %"adt$main.ast.AstParamList"* %8)
  ret %"adt$main.ast.AstParamList"* %9

; <label>:10:                                     ; preds = %entry
  %11 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %12 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.Identifier"()
  %13 = call i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %11, %"adt$main.token.TokenType.1"* %12)
  br i1 %13, label %3, label %1
}

declare %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.RParen"()

declare %"adt$main.ast.AstParamList"* @"adtcfn$adtc$main.ast.AstParamList.Nil"()

declare %"adt$main.ast.AstADTCons"* @"adtcfn$adtc$main.ast.AstADTCons.New"()

define %"adt$main.ast.AstParam"* @"fn$main.parser.parseParam"(%"adt$main.parser.ParserContext"* %par) {
entry:
  %param = alloca %"adt$main.ast.AstParam"*
  %type = alloca %"adt$main.ast_type.AstType"*
  %name = alloca %"adt$main.ast.Binder"*
  %bake.par = alloca %"adt$main.parser.ParserContext"*
  store %"adt$main.parser.ParserContext"* %par, %"adt$main.parser.ParserContext"** %bake.par
  br label %0

; <label>:0:                                      ; preds = %entry
  %1 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %2 = call %"adt$main.ast.Binder"* @"fn$main.parser.parseBinder"(%"adt$main.parser.ParserContext"* %1)
  store %"adt$main.ast.Binder"* %2, %"adt$main.ast.Binder"** %name
  %3 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %4 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.Colon"()
  %5 = call %"adt$main.token.Token.2"* @"fn$main.parser.consume"(%"adt$main.parser.ParserContext"* %3, %"adt$main.token.TokenType.1"* %4)
  %6 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %7 = call %"adt$main.ast_type.AstType"* @"fn$main.parser.parseType"(%"adt$main.parser.ParserContext"* %6)
  store %"adt$main.ast_type.AstType"* %7, %"adt$main.ast_type.AstType"** %type
  %8 = call %"adt$main.ast.AstParam"* @"adtcfn$adtc$main.ast.AstParam.New"()
  store %"adt$main.ast.AstParam"* %8, %"adt$main.ast.AstParam"** %param
  %9 = load %"adt$main.ast.AstParam"*, %"adt$main.ast.AstParam"** %param
  %10 = load %"adt$main.ast.Binder"*, %"adt$main.ast.Binder"** %name
  %11 = getelementptr inbounds %"adt$main.ast.AstParam", %"adt$main.ast.AstParam"* %9, i32 0, i32 1
  store %"adt$main.ast.Binder"* %10, %"adt$main.ast.Binder"** %11
  %12 = load %"adt$main.ast.AstParam"*, %"adt$main.ast.AstParam"** %param
  %13 = load %"adt$main.ast_type.AstType"*, %"adt$main.ast_type.AstType"** %type
  %14 = getelementptr inbounds %"adt$main.ast.AstParam", %"adt$main.ast.AstParam"* %12, i32 0, i32 2
  store %"adt$main.ast_type.AstType"* %13, %"adt$main.ast_type.AstType"** %14
  %15 = load %"adt$main.ast.AstParam"*, %"adt$main.ast.AstParam"** %param
  ret %"adt$main.ast.AstParam"* %15
}

define %"adt$main.ast.AstParamList"* @"fn$main.parser.parseParamListTail"(%"adt$main.parser.ParserContext"* %par) {
entry:
  %param_ = alloca %"adt$main.ast.AstParam"*
  %bake.par = alloca %"adt$main.parser.ParserContext"*
  store %"adt$main.parser.ParserContext"* %par, %"adt$main.parser.ParserContext"** %bake.par
  br label %12
                                                  ; No predecessors!
  unreachable

; <label>:1:                                      ; preds = %12
  %2 = call %"adt$main.ast.AstParamList"* @"adtcfn$adtc$main.ast.AstParamList.Nil"()
  ret %"adt$main.ast.AstParamList"* %2

; <label>:3:                                      ; preds = %12
  %4 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %5 = call %"adt$main.token.Token.2"* @"fn$main.parser.take"(%"adt$main.parser.ParserContext"* %4)
  %6 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %7 = call %"adt$main.ast.AstParam"* @"fn$main.parser.parseParam"(%"adt$main.parser.ParserContext"* %6)
  store %"adt$main.ast.AstParam"* %7, %"adt$main.ast.AstParam"** %param_
  %8 = load %"adt$main.ast.AstParam"*, %"adt$main.ast.AstParam"** %param_
  %9 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %10 = call %"adt$main.ast.AstParamList"* @"fn$main.parser.parseParamListTail"(%"adt$main.parser.ParserContext"* %9)
  %11 = call %"adt$main.ast.AstParamList"* @"adtcfn$adtc$main.ast.AstParamList.Cons"(%"adt$main.ast.AstParam"* %8, %"adt$main.ast.AstParamList"* %10)
  ret %"adt$main.ast.AstParamList"* %11

; <label>:12:                                     ; preds = %entry
  %13 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %14 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.Comma"()
  %15 = call i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %13, %"adt$main.token.TokenType.1"* %14)
  br i1 %15, label %3, label %1
}

declare %"adt$main.ast.AstParamList"* @"adtcfn$adtc$main.ast.AstParamList.Cons"(%"adt$main.ast.AstParam"*, %"adt$main.ast.AstParamList"*)

declare %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.Comma"()

declare %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.Colon"()

declare %"adt$main.ast.AstParam"* @"adtcfn$adtc$main.ast.AstParam.New"()

declare %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.KADT"()

define %"adt$main.ast.AstTopLevel"* @"fn$main.parser.parseADT"(%"adt$main.parser.ParserContext"* %par) {
entry:
  %adtDecl = alloca %"adt$main.ast.AstTopLevel"*
  %fields = alloca %"adt$main.ast.AstADTFieldsList"*
  %cons = alloca %"adt$main.ast.AstADTConsList"*
  %name = alloca %"adt$main.ast.Binder"*
  %loc = alloca %"adt$main.ast.SrcLoc.0"*
  %bake.par = alloca %"adt$main.parser.ParserContext"*
  store %"adt$main.parser.ParserContext"* %par, %"adt$main.parser.ParserContext"** %bake.par
  br label %0

; <label>:0:                                      ; preds = %entry
  %1 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %2 = call %"adt$main.ast.SrcLoc.0"* @"fn$main.parser.getLocation"(%"adt$main.parser.ParserContext"* %1)
  store %"adt$main.ast.SrcLoc.0"* %2, %"adt$main.ast.SrcLoc.0"** %loc
  %3 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %4 = call %"adt$main.token.Token.2"* @"fn$main.parser.take"(%"adt$main.parser.ParserContext"* %3)
  %5 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %6 = call %"adt$main.ast.Binder"* @"fn$main.parser.parseBinder"(%"adt$main.parser.ParserContext"* %5)
  store %"adt$main.ast.Binder"* %6, %"adt$main.ast.Binder"** %name
  %7 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %8 = call %"adt$main.ast.AstADTConsList"* @"fn$main.parser.parseADTConsList"(%"adt$main.parser.ParserContext"* %7)
  store %"adt$main.ast.AstADTConsList"* %8, %"adt$main.ast.AstADTConsList"** %cons
  %9 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %10 = call %"adt$main.ast.AstADTFieldsList"* @"fn$main.parser.parseADTFieldsList"(%"adt$main.parser.ParserContext"* %9)
  store %"adt$main.ast.AstADTFieldsList"* %10, %"adt$main.ast.AstADTFieldsList"** %fields
  %11 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %12 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.KEnd"()
  %13 = call %"adt$main.token.Token.2"* @"fn$main.parser.consume"(%"adt$main.parser.ParserContext"* %11, %"adt$main.token.TokenType.1"* %12)
  %14 = load %"adt$main.ast.Binder"*, %"adt$main.ast.Binder"** %name
  %15 = load %"adt$main.ast.AstADTConsList"*, %"adt$main.ast.AstADTConsList"** %cons
  %16 = load %"adt$main.ast.AstADTFieldsList"*, %"adt$main.ast.AstADTFieldsList"** %fields
  %17 = call %"adt$main.ast.AstTopLevel"* @"adtcfn$adtc$main.ast.AstTopLevel.ADT"(%"adt$main.ast.Binder"* %14, %"adt$main.ast.AstADTConsList"* %15, %"adt$main.ast.AstADTFieldsList"* %16)
  store %"adt$main.ast.AstTopLevel"* %17, %"adt$main.ast.AstTopLevel"** %adtDecl
  %18 = load %"adt$main.ast.AstTopLevel"*, %"adt$main.ast.AstTopLevel"** %adtDecl
  %19 = load %"adt$main.ast.SrcLoc.0"*, %"adt$main.ast.SrcLoc.0"** %loc
  %20 = getelementptr inbounds %"adt$main.ast.AstTopLevel", %"adt$main.ast.AstTopLevel"* %18, i32 0, i32 1
  store %"adt$main.ast.SrcLoc.0"* %19, %"adt$main.ast.SrcLoc.0"** %20
  %21 = load %"adt$main.ast.AstTopLevel"*, %"adt$main.ast.AstTopLevel"** %adtDecl
  ret %"adt$main.ast.AstTopLevel"* %21
}

declare %"adt$main.ast.AstTopLevelList"* @"adtcfn$adtc$main.ast.AstTopLevelList.Cons"(%"adt$main.ast.AstTopLevel"*, %"adt$main.ast.AstTopLevelList"*)

declare %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.KFunction"()

define %"adt$main.ast.AstTopLevel"* @"fn$main.parser.parseFunction"(%"adt$main.parser.ParserContext"* %par) {
entry:
  %fun = alloca %"adt$main.ast.AstTopLevel"*
  %body = alloca %"adt$main.ast.AstFuncBody"*
  %retType = alloca %"adt$main.ast_type.MaybeAstType"*
  %params = alloca %"adt$main.ast.AstParamList"*
  %name = alloca %"adt$main.ast.Binder"*
  %loc = alloca %"adt$main.ast.SrcLoc.0"*
  %bake.par = alloca %"adt$main.parser.ParserContext"*
  store %"adt$main.parser.ParserContext"* %par, %"adt$main.parser.ParserContext"** %bake.par
  br label %20

; <label>:0:                                      ; preds = %12, %14
  %1 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %2 = call %"adt$main.ast.AstFuncBody"* @"fn$main.parser.parseFunctionBody"(%"adt$main.parser.ParserContext"* %1)
  store %"adt$main.ast.AstFuncBody"* %2, %"adt$main.ast.AstFuncBody"** %body
  %3 = load %"adt$main.ast.Binder"*, %"adt$main.ast.Binder"** %name
  %4 = load %"adt$main.ast.AstParamList"*, %"adt$main.ast.AstParamList"** %params
  %5 = load %"adt$main.ast_type.MaybeAstType"*, %"adt$main.ast_type.MaybeAstType"** %retType
  %6 = load %"adt$main.ast.AstFuncBody"*, %"adt$main.ast.AstFuncBody"** %body
  %7 = call %"adt$main.ast.AstTopLevel"* @"adtcfn$adtc$main.ast.AstTopLevel.Function"(%"adt$main.ast.Binder"* %3, %"adt$main.ast.AstParamList"* %4, %"adt$main.ast_type.MaybeAstType"* %5, %"adt$main.ast.AstFuncBody"* %6)
  store %"adt$main.ast.AstTopLevel"* %7, %"adt$main.ast.AstTopLevel"** %fun
  %8 = load %"adt$main.ast.AstTopLevel"*, %"adt$main.ast.AstTopLevel"** %fun
  %9 = load %"adt$main.ast.SrcLoc.0"*, %"adt$main.ast.SrcLoc.0"** %loc
  %10 = getelementptr inbounds %"adt$main.ast.AstTopLevel", %"adt$main.ast.AstTopLevel"* %8, i32 0, i32 1
  store %"adt$main.ast.SrcLoc.0"* %9, %"adt$main.ast.SrcLoc.0"** %10
  %11 = load %"adt$main.ast.AstTopLevel"*, %"adt$main.ast.AstTopLevel"** %fun
  ret %"adt$main.ast.AstTopLevel"* %11

; <label>:12:                                     ; preds = %20
  %13 = call %"adt$main.ast_type.MaybeAstType"* @"adtcfn$adtc$main.ast_type.MaybeAstType.Nothing"()
  store %"adt$main.ast_type.MaybeAstType"* %13, %"adt$main.ast_type.MaybeAstType"** %retType
  br label %0

; <label>:14:                                     ; preds = %20
  %15 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %16 = call %"adt$main.token.Token.2"* @"fn$main.parser.take"(%"adt$main.parser.ParserContext"* %15)
  %17 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %18 = call %"adt$main.ast_type.AstType"* @"fn$main.parser.parseType"(%"adt$main.parser.ParserContext"* %17)
  %19 = call %"adt$main.ast_type.MaybeAstType"* @"adtcfn$adtc$main.ast_type.MaybeAstType.Just"(%"adt$main.ast_type.AstType"* %18)
  store %"adt$main.ast_type.MaybeAstType"* %19, %"adt$main.ast_type.MaybeAstType"** %retType
  br label %0

; <label>:20:                                     ; preds = %entry
  %21 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %22 = call %"adt$main.ast.SrcLoc.0"* @"fn$main.parser.getLocation"(%"adt$main.parser.ParserContext"* %21)
  store %"adt$main.ast.SrcLoc.0"* %22, %"adt$main.ast.SrcLoc.0"** %loc
  %23 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %24 = call %"adt$main.token.Token.2"* @"fn$main.parser.take"(%"adt$main.parser.ParserContext"* %23)
  %25 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %26 = call %"adt$main.ast.Binder"* @"fn$main.parser.parseBinder"(%"adt$main.parser.ParserContext"* %25)
  store %"adt$main.ast.Binder"* %26, %"adt$main.ast.Binder"** %name
  %27 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %28 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.LParen"()
  %29 = call %"adt$main.token.Token.2"* @"fn$main.parser.consume"(%"adt$main.parser.ParserContext"* %27, %"adt$main.token.TokenType.1"* %28)
  %30 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %31 = call %"adt$main.ast.AstParamList"* @"fn$main.parser.parseParamList"(%"adt$main.parser.ParserContext"* %30)
  store %"adt$main.ast.AstParamList"* %31, %"adt$main.ast.AstParamList"** %params
  %32 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %33 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.RParen"()
  %34 = call %"adt$main.token.Token.2"* @"fn$main.parser.consume"(%"adt$main.parser.ParserContext"* %32, %"adt$main.token.TokenType.1"* %33)
  %35 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %36 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.Colon"()
  %37 = call i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %35, %"adt$main.token.TokenType.1"* %36)
  br i1 %37, label %14, label %12
}

declare %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.KGlobal"()

define %"adt$main.ast.AstTopLevel"* @"fn$main.parser.parseGlobal"(%"adt$main.parser.ParserContext"* %par) {
entry:
  %global_ = alloca %"adt$main.ast.AstTopLevel"*
  %init = alloca %"adt$main.ast_expr.AstExpr"*
  %type = alloca %"adt$main.ast_type.AstType"*
  %name = alloca %"adt$main.ast.Binder"*
  %loc = alloca %"adt$main.ast.SrcLoc.0"*
  %bake.par = alloca %"adt$main.parser.ParserContext"*
  store %"adt$main.parser.ParserContext"* %par, %"adt$main.parser.ParserContext"** %bake.par
  br label %0

; <label>:0:                                      ; preds = %entry
  %1 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %2 = call %"adt$main.ast.SrcLoc.0"* @"fn$main.parser.getLocation"(%"adt$main.parser.ParserContext"* %1)
  store %"adt$main.ast.SrcLoc.0"* %2, %"adt$main.ast.SrcLoc.0"** %loc
  %3 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %4 = call %"adt$main.token.Token.2"* @"fn$main.parser.take"(%"adt$main.parser.ParserContext"* %3)
  %5 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %6 = call %"adt$main.ast.Binder"* @"fn$main.parser.parseBinder"(%"adt$main.parser.ParserContext"* %5)
  store %"adt$main.ast.Binder"* %6, %"adt$main.ast.Binder"** %name
  %7 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %8 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.Colon"()
  %9 = call %"adt$main.token.Token.2"* @"fn$main.parser.consume"(%"adt$main.parser.ParserContext"* %7, %"adt$main.token.TokenType.1"* %8)
  %10 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %11 = call %"adt$main.ast_type.AstType"* @"fn$main.parser.parseType"(%"adt$main.parser.ParserContext"* %10)
  store %"adt$main.ast_type.AstType"* %11, %"adt$main.ast_type.AstType"** %type
  %12 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %13 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.Assign"()
  %14 = call %"adt$main.token.Token.2"* @"fn$main.parser.consume"(%"adt$main.parser.ParserContext"* %12, %"adt$main.token.TokenType.1"* %13)
  %15 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %16 = call %"adt$main.ast_expr.AstExpr"* @"fn$main.parser.parseExpr"(%"adt$main.parser.ParserContext"* %15, i32 0)
  store %"adt$main.ast_expr.AstExpr"* %16, %"adt$main.ast_expr.AstExpr"** %init
  %17 = load %"adt$main.ast.Binder"*, %"adt$main.ast.Binder"** %name
  %18 = load %"adt$main.ast_type.AstType"*, %"adt$main.ast_type.AstType"** %type
  %19 = load %"adt$main.ast_expr.AstExpr"*, %"adt$main.ast_expr.AstExpr"** %init
  %20 = call %"adt$main.ast.AstTopLevel"* @"adtcfn$adtc$main.ast.AstTopLevel.Global"(%"adt$main.ast.Binder"* %17, %"adt$main.ast_type.AstType"* %18, %"adt$main.ast_expr.AstExpr"* %19)
  store %"adt$main.ast.AstTopLevel"* %20, %"adt$main.ast.AstTopLevel"** %global_
  %21 = load %"adt$main.ast.AstTopLevel"*, %"adt$main.ast.AstTopLevel"** %global_
  %22 = load %"adt$main.ast.SrcLoc.0"*, %"adt$main.ast.SrcLoc.0"** %loc
  %23 = getelementptr inbounds %"adt$main.ast.AstTopLevel", %"adt$main.ast.AstTopLevel"* %21, i32 0, i32 1
  store %"adt$main.ast.SrcLoc.0"* %22, %"adt$main.ast.SrcLoc.0"** %23
  %24 = load %"adt$main.ast.AstTopLevel"*, %"adt$main.ast.AstTopLevel"** %global_
  ret %"adt$main.ast.AstTopLevel"* %24
}

declare %"adt$main.ast.AstTopLevelList"* @"adtcfn$adtc$main.ast.AstTopLevelList.Nil"()

declare %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.Assign"()

define %"adt$main.ast_expr.AstExpr"* @"fn$main.parser.parseExpr"(%"adt$main.parser.ParserContext"* %par, i32 %prec) {
entry:
  %bake.prec = alloca i32
  %bake.par = alloca %"adt$main.parser.ParserContext"*
  store i32 %prec, i32* %bake.prec
  store %"adt$main.parser.ParserContext"* %par, %"adt$main.parser.ParserContext"** %bake.par
  br label %7

; <label>:0:                                      ; preds = %7
  %1 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  call void @"fn$main.parser.ParserError"(%"adt$main.parser.ParserContext"* %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @3, i32 0, i32 0))
  unreachable

; <label>:2:                                      ; preds = %7
  %3 = bitcast %"adt$main.ast_expr.MaybeAstExpr"* %10 to %"adtc$main.ast_expr.MaybeAstExpr.Just"*
  %4 = getelementptr inbounds %"adtc$main.ast_expr.MaybeAstExpr.Just", %"adtc$main.ast_expr.MaybeAstExpr.Just"* %3, i32 0, i32 1
  %5 = load %"adt$main.ast_expr.AstExpr"*, %"adt$main.ast_expr.AstExpr"** %4
  ret %"adt$main.ast_expr.AstExpr"* %5

; <label>:6:                                      ; preds = %7
  unreachable

; <label>:7:                                      ; preds = %entry
  %8 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %9 = load i32, i32* %bake.prec
  %10 = call %"adt$main.ast_expr.MaybeAstExpr"* @"fn$main.parser.maybeParseExpr"(%"adt$main.parser.ParserContext"* %8, i32 %9)
  %11 = getelementptr inbounds %"adt$main.ast_expr.MaybeAstExpr", %"adt$main.ast_expr.MaybeAstExpr"* %10, i32 0, i32 0
  %12 = load i32, i32* %11
  switch i32 %12, label %6 [
    i32 0, label %0
    i32 1, label %2
  ]
}

declare %"adt$main.ast.AstTopLevel"* @"adtcfn$adtc$main.ast.AstTopLevel.Global"(%"adt$main.ast.Binder"*, %"adt$main.ast_type.AstType"*, %"adt$main.ast_expr.AstExpr"*)

declare %"adt$main.ast_type.MaybeAstType"* @"adtcfn$adtc$main.ast_type.MaybeAstType.Just"(%"adt$main.ast_type.AstType"*)

declare %"adt$main.ast_type.MaybeAstType"* @"adtcfn$adtc$main.ast_type.MaybeAstType.Nothing"()

define %"adt$main.ast.AstFuncBody"* @"fn$main.parser.parseFunctionBody"(%"adt$main.parser.ParserContext"* %par) {
entry:
  %body = alloca %"adt$main.ast.AstFuncBody"*
  %loc = alloca %"adt$main.ast.SrcLoc.0"*
  %bake.par = alloca %"adt$main.parser.ParserContext"*
  store %"adt$main.parser.ParserContext"* %par, %"adt$main.parser.ParserContext"** %bake.par
  br label %21

; <label>:0:                                      ; preds = %5, %12
  %1 = load %"adt$main.ast.AstFuncBody"*, %"adt$main.ast.AstFuncBody"** %body
  %2 = load %"adt$main.ast.SrcLoc.0"*, %"adt$main.ast.SrcLoc.0"** %loc
  %3 = getelementptr inbounds %"adt$main.ast.AstFuncBody", %"adt$main.ast.AstFuncBody"* %1, i32 0, i32 1
  store %"adt$main.ast.SrcLoc.0"* %2, %"adt$main.ast.SrcLoc.0"** %3
  %4 = load %"adt$main.ast.AstFuncBody"*, %"adt$main.ast.AstFuncBody"** %body
  ret %"adt$main.ast.AstFuncBody"* %4

; <label>:5:                                      ; preds = %21
  %6 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %7 = call %"adt$main.ast_stmt.AstStmtList"* @"fn$main.parser.parseStmtList"(%"adt$main.parser.ParserContext"* %6)
  %8 = call %"adt$main.ast.AstFuncBody"* @"adtcfn$adtc$main.ast.AstFuncBody.Block"(%"adt$main.ast_stmt.AstStmtList"* %7)
  store %"adt$main.ast.AstFuncBody"* %8, %"adt$main.ast.AstFuncBody"** %body
  %9 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %10 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.KEnd"()
  %11 = call %"adt$main.token.Token.2"* @"fn$main.parser.consume"(%"adt$main.parser.ParserContext"* %9, %"adt$main.token.TokenType.1"* %10)
  br label %0

; <label>:12:                                     ; preds = %21
  %13 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %14 = call %"adt$main.token.Token.2"* @"fn$main.parser.take"(%"adt$main.parser.ParserContext"* %13)
  %15 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %16 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.StringLiteral"()
  %17 = call %"adt$main.token.Token.2"* @"fn$main.parser.consume"(%"adt$main.parser.ParserContext"* %15, %"adt$main.token.TokenType.1"* %16)
  %18 = getelementptr inbounds %"adt$main.token.Token.2", %"adt$main.token.Token.2"* %17, i32 0, i32 3
  %19 = load i8*, i8** %18
  %20 = call %"adt$main.ast.AstFuncBody"* @"adtcfn$adtc$main.ast.AstFuncBody.FFIImport"(i8* %19)
  store %"adt$main.ast.AstFuncBody"* %20, %"adt$main.ast.AstFuncBody"** %body
  br label %0

; <label>:21:                                     ; preds = %entry
  %22 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %23 = call %"adt$main.ast.SrcLoc.0"* @"fn$main.parser.getLocation"(%"adt$main.parser.ParserContext"* %22)
  store %"adt$main.ast.SrcLoc.0"* %23, %"adt$main.ast.SrcLoc.0"** %loc
  %24 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %25 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.KImport"()
  %26 = call i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %24, %"adt$main.token.TokenType.1"* %25)
  br i1 %26, label %12, label %5
}

declare %"adt$main.ast.AstTopLevel"* @"adtcfn$adtc$main.ast.AstTopLevel.Function"(%"adt$main.ast.Binder"*, %"adt$main.ast.AstParamList"*, %"adt$main.ast_type.MaybeAstType"*, %"adt$main.ast.AstFuncBody"*)

declare %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.KImport"()

declare %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.StringLiteral"()

declare %"adt$main.ast.AstFuncBody"* @"adtcfn$adtc$main.ast.AstFuncBody.FFIImport"(i8*)

define %"adt$main.ast_stmt.AstStmtList"* @"fn$main.parser.parseStmtList"(%"adt$main.parser.ParserContext"* %par) {
entry:
  %bake.par = alloca %"adt$main.parser.ParserContext"*
  store %"adt$main.parser.ParserContext"* %par, %"adt$main.parser.ParserContext"** %bake.par
  br label %10

; <label>:0:                                      ; preds = %10
  %1 = bitcast %"adt$main.ast_stmt.MaybeAstStmt"* %12 to %"adtc$main.ast_stmt.MaybeAstStmt.Just"*
  %2 = getelementptr inbounds %"adtc$main.ast_stmt.MaybeAstStmt.Just", %"adtc$main.ast_stmt.MaybeAstStmt.Just"* %1, i32 0, i32 1
  %3 = load %"adt$main.ast_stmt.AstStmt"*, %"adt$main.ast_stmt.AstStmt"** %2
  %4 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %5 = call %"adt$main.ast_stmt.AstStmtList"* @"fn$main.parser.parseStmtList"(%"adt$main.parser.ParserContext"* %4)
  %6 = call %"adt$main.ast_stmt.AstStmtList"* @"adtcfn$adtc$main.ast_stmt.AstStmtList.Cons"(%"adt$main.ast_stmt.AstStmt"* %3, %"adt$main.ast_stmt.AstStmtList"* %5)
  ret %"adt$main.ast_stmt.AstStmtList"* %6

; <label>:7:                                      ; preds = %10
  %8 = call %"adt$main.ast_stmt.AstStmtList"* @"adtcfn$adtc$main.ast_stmt.AstStmtList.Nil"()
  ret %"adt$main.ast_stmt.AstStmtList"* %8

; <label>:9:                                      ; preds = %10
  unreachable

; <label>:10:                                     ; preds = %entry
  %11 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %12 = call %"adt$main.ast_stmt.MaybeAstStmt"* @"fn$main.parser.parseStmt"(%"adt$main.parser.ParserContext"* %11)
  %13 = getelementptr inbounds %"adt$main.ast_stmt.MaybeAstStmt", %"adt$main.ast_stmt.MaybeAstStmt"* %12, i32 0, i32 0
  %14 = load i32, i32* %13
  switch i32 %14, label %9 [
    i32 1, label %0
    i32 0, label %7
  ]
}

declare %"adt$main.ast.AstFuncBody"* @"adtcfn$adtc$main.ast.AstFuncBody.Block"(%"adt$main.ast_stmt.AstStmtList"*)

declare %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.KEnd"()

define %"adt$main.ast_stmt.MaybeAstStmt"* @"fn$main.parser.parseStmt"(%"adt$main.parser.ParserContext"* %par) {
entry:
  %rhs = alloca %"adt$main.ast_expr.AstExpr"*
  %m_expr = alloca %"adt$main.ast_expr.MaybeAstExpr"*
  %cases = alloca %"adt$main.ast_stmt.AstCaseList"*
  %expr = alloca %"adt$main.ast_expr.AstExpr"*
  %block = alloca %"adt$main.ast_stmt.AstStmtList"*
  %cond = alloca %"adt$main.ast_expr.AstExpr"*
  %m_expr1 = alloca %"adt$main.ast_expr.MaybeAstExpr"*
  %init = alloca %"adt$main.ast_expr.MaybeAstExpr"*
  %type = alloca %"adt$main.ast_type.MaybeAstType"*
  %name = alloca %"adt$main.ast.Binder"*
  %m_stmt = alloca %"adt$main.ast_stmt.MaybeAstStmt"*
  %loc = alloca %"adt$main.ast.SrcLoc.0"*
  %bake.par = alloca %"adt$main.parser.ParserContext"*
  store %"adt$main.parser.ParserContext"* %par, %"adt$main.parser.ParserContext"** %bake.par
  br label %137

; <label>:0:                                      ; preds = %121
  %1 = bitcast %"adt$main.ast_stmt.MaybeAstStmt"* %122 to %"adtc$main.ast_stmt.MaybeAstStmt.Just"*
  %2 = getelementptr inbounds %"adtc$main.ast_stmt.MaybeAstStmt.Just", %"adtc$main.ast_stmt.MaybeAstStmt.Just"* %1, i32 0, i32 1
  %3 = load %"adt$main.ast_stmt.AstStmt"*, %"adt$main.ast_stmt.AstStmt"** %2
  %4 = load %"adt$main.ast.SrcLoc.0"*, %"adt$main.ast.SrcLoc.0"** %loc
  %5 = getelementptr inbounds %"adt$main.ast_stmt.AstStmt", %"adt$main.ast_stmt.AstStmt"* %3, i32 0, i32 1
  store %"adt$main.ast.SrcLoc.0"* %4, %"adt$main.ast.SrcLoc.0"** %5
  br label %6

; <label>:6:                                      ; preds = %0, %121
  %7 = load %"adt$main.ast_stmt.MaybeAstStmt"*, %"adt$main.ast_stmt.MaybeAstStmt"** %m_stmt
  ret %"adt$main.ast_stmt.MaybeAstStmt"* %7

; <label>:8:                                      ; preds = %9, %12
  br label %27

; <label>:9:                                      ; preds = %20
  %10 = call %"adt$main.ast_stmt.AstStmt"* @"adtcfn$adtc$main.ast_stmt.AstStmt.Eval"(%"adt$main.ast_expr.AstExpr"* %23)
  %11 = call %"adt$main.ast_stmt.MaybeAstStmt"* @"adtcfn$adtc$main.ast_stmt.MaybeAstStmt.Just"(%"adt$main.ast_stmt.AstStmt"* %10)
  store %"adt$main.ast_stmt.MaybeAstStmt"* %11, %"adt$main.ast_stmt.MaybeAstStmt"** %m_stmt
  br label %8

; <label>:12:                                     ; preds = %20
  %13 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %14 = call %"adt$main.token.Token.2"* @"fn$main.parser.take"(%"adt$main.parser.ParserContext"* %13)
  %15 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %16 = call %"adt$main.ast_expr.AstExpr"* @"fn$main.parser.parseExpr"(%"adt$main.parser.ParserContext"* %15, i32 0)
  store %"adt$main.ast_expr.AstExpr"* %16, %"adt$main.ast_expr.AstExpr"** %rhs
  %17 = load %"adt$main.ast_expr.AstExpr"*, %"adt$main.ast_expr.AstExpr"** %rhs
  %18 = call %"adt$main.ast_stmt.AstStmt"* @"adtcfn$adtc$main.ast_stmt.AstStmt.Assign"(%"adt$main.ast_expr.AstExpr"* %23, %"adt$main.ast_expr.AstExpr"* %17)
  %19 = call %"adt$main.ast_stmt.MaybeAstStmt"* @"adtcfn$adtc$main.ast_stmt.MaybeAstStmt.Just"(%"adt$main.ast_stmt.AstStmt"* %18)
  store %"adt$main.ast_stmt.MaybeAstStmt"* %19, %"adt$main.ast_stmt.MaybeAstStmt"** %m_stmt
  br label %8

; <label>:20:                                     ; preds = %29
  %21 = bitcast %"adt$main.ast_expr.MaybeAstExpr"* %32 to %"adtc$main.ast_expr.MaybeAstExpr.Just"*
  %22 = getelementptr inbounds %"adtc$main.ast_expr.MaybeAstExpr.Just", %"adtc$main.ast_expr.MaybeAstExpr.Just"* %21, i32 0, i32 1
  %23 = load %"adt$main.ast_expr.AstExpr"*, %"adt$main.ast_expr.AstExpr"** %22
  %24 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %25 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.Assign"()
  %26 = call i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %24, %"adt$main.token.TokenType.1"* %25)
  br i1 %26, label %12, label %9

; <label>:27:                                     ; preds = %8, %29
  br label %28

; <label>:28:                                     ; preds = %27, %35
  br label %49

; <label>:29:                                     ; preds = %50
  %30 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %31 = call %"adt$main.ast_expr.MaybeAstExpr"* @"fn$main.parser.maybeParseExpr"(%"adt$main.parser.ParserContext"* %30, i32 0)
  store %"adt$main.ast_expr.MaybeAstExpr"* %31, %"adt$main.ast_expr.MaybeAstExpr"** %m_expr
  %32 = load %"adt$main.ast_expr.MaybeAstExpr"*, %"adt$main.ast_expr.MaybeAstExpr"** %m_expr
  %33 = getelementptr inbounds %"adt$main.ast_expr.MaybeAstExpr", %"adt$main.ast_expr.MaybeAstExpr"* %32, i32 0, i32 0
  %34 = load i32, i32* %33
  switch i32 %34, label %27 [
    i32 1, label %20
  ]

; <label>:35:                                     ; preds = %50
  %36 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %37 = call %"adt$main.token.Token.2"* @"fn$main.parser.take"(%"adt$main.parser.ParserContext"* %36)
  %38 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %39 = call %"adt$main.ast_expr.AstExpr"* @"fn$main.parser.parseExpr"(%"adt$main.parser.ParserContext"* %38, i32 0)
  store %"adt$main.ast_expr.AstExpr"* %39, %"adt$main.ast_expr.AstExpr"** %expr
  %40 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %41 = call %"adt$main.ast_stmt.AstCaseList"* @"fn$main.parser.parseMatchCaseList"(%"adt$main.parser.ParserContext"* %40)
  store %"adt$main.ast_stmt.AstCaseList"* %41, %"adt$main.ast_stmt.AstCaseList"** %cases
  %42 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %43 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.KEnd"()
  %44 = call %"adt$main.token.Token.2"* @"fn$main.parser.consume"(%"adt$main.parser.ParserContext"* %42, %"adt$main.token.TokenType.1"* %43)
  %45 = load %"adt$main.ast_expr.AstExpr"*, %"adt$main.ast_expr.AstExpr"** %expr
  %46 = load %"adt$main.ast_stmt.AstCaseList"*, %"adt$main.ast_stmt.AstCaseList"** %cases
  %47 = call %"adt$main.ast_stmt.AstStmt"* @"adtcfn$adtc$main.ast_stmt.AstStmt.Match"(%"adt$main.ast_expr.AstExpr"* %45, %"adt$main.ast_stmt.AstCaseList"* %46)
  %48 = call %"adt$main.ast_stmt.MaybeAstStmt"* @"adtcfn$adtc$main.ast_stmt.MaybeAstStmt.Just"(%"adt$main.ast_stmt.AstStmt"* %47)
  store %"adt$main.ast_stmt.MaybeAstStmt"* %48, %"adt$main.ast_stmt.MaybeAstStmt"** %m_stmt
  br label %28

; <label>:49:                                     ; preds = %28, %54
  br label %71

; <label>:50:                                     ; preds = %72
  %51 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %52 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.KMatch"()
  %53 = call i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %51, %"adt$main.token.TokenType.1"* %52)
  br i1 %53, label %35, label %29

; <label>:54:                                     ; preds = %72
  %55 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %56 = call %"adt$main.token.Token.2"* @"fn$main.parser.take"(%"adt$main.parser.ParserContext"* %55)
  %57 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %58 = call %"adt$main.ast_expr.AstExpr"* @"fn$main.parser.parseExpr"(%"adt$main.parser.ParserContext"* %57, i32 0)
  store %"adt$main.ast_expr.AstExpr"* %58, %"adt$main.ast_expr.AstExpr"** %cond
  %59 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %60 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.KDo"()
  %61 = call %"adt$main.token.Token.2"* @"fn$main.parser.consume"(%"adt$main.parser.ParserContext"* %59, %"adt$main.token.TokenType.1"* %60)
  %62 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %63 = call %"adt$main.ast_stmt.AstStmtList"* @"fn$main.parser.parseStmtList"(%"adt$main.parser.ParserContext"* %62)
  store %"adt$main.ast_stmt.AstStmtList"* %63, %"adt$main.ast_stmt.AstStmtList"** %block
  %64 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %65 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.KEnd"()
  %66 = call %"adt$main.token.Token.2"* @"fn$main.parser.consume"(%"adt$main.parser.ParserContext"* %64, %"adt$main.token.TokenType.1"* %65)
  %67 = load %"adt$main.ast_expr.AstExpr"*, %"adt$main.ast_expr.AstExpr"** %cond
  %68 = load %"adt$main.ast_stmt.AstStmtList"*, %"adt$main.ast_stmt.AstStmtList"** %block
  %69 = call %"adt$main.ast_stmt.AstStmt"* @"adtcfn$adtc$main.ast_stmt.AstStmt.While"(%"adt$main.ast_expr.AstExpr"* %67, %"adt$main.ast_stmt.AstStmtList"* %68)
  %70 = call %"adt$main.ast_stmt.MaybeAstStmt"* @"adtcfn$adtc$main.ast_stmt.MaybeAstStmt.Just"(%"adt$main.ast_stmt.AstStmt"* %69)
  store %"adt$main.ast_stmt.MaybeAstStmt"* %70, %"adt$main.ast_stmt.MaybeAstStmt"** %m_stmt
  br label %49

; <label>:71:                                     ; preds = %49, %76
  br label %82

; <label>:72:                                     ; preds = %83
  %73 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %74 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.KWhile"()
  %75 = call i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %73, %"adt$main.token.TokenType.1"* %74)
  br i1 %75, label %54, label %50

; <label>:76:                                     ; preds = %83
  %77 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %78 = call %"adt$main.token.Token.2"* @"fn$main.parser.take"(%"adt$main.parser.ParserContext"* %77)
  %79 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %80 = call %"adt$main.ast_stmt.AstStmt"* @"fn$main.parser.parseIf"(%"adt$main.parser.ParserContext"* %79)
  %81 = call %"adt$main.ast_stmt.MaybeAstStmt"* @"adtcfn$adtc$main.ast_stmt.MaybeAstStmt.Just"(%"adt$main.ast_stmt.AstStmt"* %80)
  store %"adt$main.ast_stmt.MaybeAstStmt"* %81, %"adt$main.ast_stmt.MaybeAstStmt"** %m_stmt
  br label %71

; <label>:82:                                     ; preds = %71, %87
  br label %121

; <label>:83:                                     ; preds = %125
  %84 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %85 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.KIf"()
  %86 = call i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %84, %"adt$main.token.TokenType.1"* %85)
  br i1 %86, label %76, label %72

; <label>:87:                                     ; preds = %125
  %88 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %89 = call %"adt$main.token.Token.2"* @"fn$main.parser.take"(%"adt$main.parser.ParserContext"* %88)
  %90 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %91 = call %"adt$main.ast_expr.MaybeAstExpr"* @"fn$main.parser.maybeParseExpr"(%"adt$main.parser.ParserContext"* %90, i32 0)
  store %"adt$main.ast_expr.MaybeAstExpr"* %91, %"adt$main.ast_expr.MaybeAstExpr"** %m_expr1
  %92 = load %"adt$main.ast_expr.MaybeAstExpr"*, %"adt$main.ast_expr.MaybeAstExpr"** %m_expr1
  %93 = call %"adt$main.ast_stmt.AstStmt"* @"adtcfn$adtc$main.ast_stmt.AstStmt.Ret"(%"adt$main.ast_expr.MaybeAstExpr"* %92)
  %94 = call %"adt$main.ast_stmt.MaybeAstStmt"* @"adtcfn$adtc$main.ast_stmt.MaybeAstStmt.Just"(%"adt$main.ast_stmt.AstStmt"* %93)
  store %"adt$main.ast_stmt.MaybeAstStmt"* %94, %"adt$main.ast_stmt.MaybeAstStmt"** %m_stmt
  br label %82

; <label>:95:                                     ; preds = %101, %103
  %96 = load %"adt$main.ast.Binder"*, %"adt$main.ast.Binder"** %name
  %97 = load %"adt$main.ast_type.MaybeAstType"*, %"adt$main.ast_type.MaybeAstType"** %type
  %98 = load %"adt$main.ast_expr.MaybeAstExpr"*, %"adt$main.ast_expr.MaybeAstExpr"** %init
  %99 = call %"adt$main.ast_stmt.AstStmt"* @"adtcfn$adtc$main.ast_stmt.AstStmt.Var"(%"adt$main.ast.Binder"* %96, %"adt$main.ast_type.MaybeAstType"* %97, %"adt$main.ast_expr.MaybeAstExpr"* %98)
  %100 = call %"adt$main.ast_stmt.MaybeAstStmt"* @"adtcfn$adtc$main.ast_stmt.MaybeAstStmt.Just"(%"adt$main.ast_stmt.AstStmt"* %99)
  store %"adt$main.ast_stmt.MaybeAstStmt"* %100, %"adt$main.ast_stmt.MaybeAstStmt"** %m_stmt
  br label %121

; <label>:101:                                    ; preds = %109
  %102 = call %"adt$main.ast_expr.MaybeAstExpr"* @"adtcfn$adtc$main.ast_expr.MaybeAstExpr.Nothing"()
  store %"adt$main.ast_expr.MaybeAstExpr"* %102, %"adt$main.ast_expr.MaybeAstExpr"** %init
  br label %95

; <label>:103:                                    ; preds = %109
  %104 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %105 = call %"adt$main.token.Token.2"* @"fn$main.parser.take"(%"adt$main.parser.ParserContext"* %104)
  %106 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %107 = call %"adt$main.ast_expr.AstExpr"* @"fn$main.parser.parseExpr"(%"adt$main.parser.ParserContext"* %106, i32 0)
  %108 = call %"adt$main.ast_expr.MaybeAstExpr"* @"adtcfn$adtc$main.ast_expr.MaybeAstExpr.Just"(%"adt$main.ast_expr.AstExpr"* %107)
  store %"adt$main.ast_expr.MaybeAstExpr"* %108, %"adt$main.ast_expr.MaybeAstExpr"** %init
  br label %95

; <label>:109:                                    ; preds = %113, %115
  %110 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %111 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.Assign"()
  %112 = call i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %110, %"adt$main.token.TokenType.1"* %111)
  br i1 %112, label %103, label %101

; <label>:113:                                    ; preds = %129
  %114 = call %"adt$main.ast_type.MaybeAstType"* @"adtcfn$adtc$main.ast_type.MaybeAstType.Nothing"()
  store %"adt$main.ast_type.MaybeAstType"* %114, %"adt$main.ast_type.MaybeAstType"** %type
  br label %109

; <label>:115:                                    ; preds = %129
  %116 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %117 = call %"adt$main.token.Token.2"* @"fn$main.parser.take"(%"adt$main.parser.ParserContext"* %116)
  %118 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %119 = call %"adt$main.ast_type.AstType"* @"fn$main.parser.parseType"(%"adt$main.parser.ParserContext"* %118)
  %120 = call %"adt$main.ast_type.MaybeAstType"* @"adtcfn$adtc$main.ast_type.MaybeAstType.Just"(%"adt$main.ast_type.AstType"* %119)
  store %"adt$main.ast_type.MaybeAstType"* %120, %"adt$main.ast_type.MaybeAstType"** %type
  br label %109

; <label>:121:                                    ; preds = %82, %95
  %122 = load %"adt$main.ast_stmt.MaybeAstStmt"*, %"adt$main.ast_stmt.MaybeAstStmt"** %m_stmt
  %123 = getelementptr inbounds %"adt$main.ast_stmt.MaybeAstStmt", %"adt$main.ast_stmt.MaybeAstStmt"* %122, i32 0, i32 0
  %124 = load i32, i32* %123
  switch i32 %124, label %6 [
    i32 1, label %0
  ]

; <label>:125:                                    ; preds = %137
  %126 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %127 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.KReturn"()
  %128 = call i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %126, %"adt$main.token.TokenType.1"* %127)
  br i1 %128, label %87, label %83

; <label>:129:                                    ; preds = %137
  %130 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %131 = call %"adt$main.token.Token.2"* @"fn$main.parser.take"(%"adt$main.parser.ParserContext"* %130)
  %132 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %133 = call %"adt$main.ast.Binder"* @"fn$main.parser.parseBinder"(%"adt$main.parser.ParserContext"* %132)
  store %"adt$main.ast.Binder"* %133, %"adt$main.ast.Binder"** %name
  %134 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %135 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.Colon"()
  %136 = call i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %134, %"adt$main.token.TokenType.1"* %135)
  br i1 %136, label %115, label %113

; <label>:137:                                    ; preds = %entry
  %138 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %139 = call %"adt$main.ast.SrcLoc.0"* @"fn$main.parser.getLocation"(%"adt$main.parser.ParserContext"* %138)
  store %"adt$main.ast.SrcLoc.0"* %139, %"adt$main.ast.SrcLoc.0"** %loc
  %140 = call %"adt$main.ast_stmt.MaybeAstStmt"* @"adtcfn$adtc$main.ast_stmt.MaybeAstStmt.Nothing"()
  store %"adt$main.ast_stmt.MaybeAstStmt"* %140, %"adt$main.ast_stmt.MaybeAstStmt"** %m_stmt
  %141 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %142 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.KVar"()
  %143 = call i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %141, %"adt$main.token.TokenType.1"* %142)
  br i1 %143, label %129, label %125
}

declare %"adt$main.ast_stmt.AstStmtList"* @"adtcfn$adtc$main.ast_stmt.AstStmtList.Nil"()

declare %"adt$main.ast_stmt.AstStmtList"* @"adtcfn$adtc$main.ast_stmt.AstStmtList.Cons"(%"adt$main.ast_stmt.AstStmt"*, %"adt$main.ast_stmt.AstStmtList"*)

declare %"adt$main.ast_stmt.MaybeAstStmt"* @"adtcfn$adtc$main.ast_stmt.MaybeAstStmt.Nothing"()

declare %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.KVar"()

declare %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.KReturn"()

declare %"adt$main.ast_expr.MaybeAstExpr"* @"adtcfn$adtc$main.ast_expr.MaybeAstExpr.Just"(%"adt$main.ast_expr.AstExpr"*)

declare %"adt$main.ast_expr.MaybeAstExpr"* @"adtcfn$adtc$main.ast_expr.MaybeAstExpr.Nothing"()

declare %"adt$main.ast_stmt.AstStmt"* @"adtcfn$adtc$main.ast_stmt.AstStmt.Var"(%"adt$main.ast.Binder"*, %"adt$main.ast_type.MaybeAstType"*, %"adt$main.ast_expr.MaybeAstExpr"*)

declare %"adt$main.ast_stmt.MaybeAstStmt"* @"adtcfn$adtc$main.ast_stmt.MaybeAstStmt.Just"(%"adt$main.ast_stmt.AstStmt"*)

declare %"adt$main.ast_stmt.AstStmt"* @"adtcfn$adtc$main.ast_stmt.AstStmt.Ret"(%"adt$main.ast_expr.MaybeAstExpr"*)

declare %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.KIf"()

define %"adt$main.ast_stmt.AstStmt"* @"fn$main.parser.parseIf"(%"adt$main.parser.ParserContext"* %par) {
entry:
  %else_ = alloca %"adt$main.ast_stmt.MaybeAstStmt"*
  %then_ = alloca %"adt$main.ast_stmt.AstStmt"*
  %cond = alloca %"adt$main.ast_expr.AstExpr"*
  %bake.par = alloca %"adt$main.parser.ParserContext"*
  store %"adt$main.parser.ParserContext"* %par, %"adt$main.parser.ParserContext"** %bake.par
  br label %0

; <label>:0:                                      ; preds = %entry
  %1 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %2 = call %"adt$main.ast_expr.AstExpr"* @"fn$main.parser.parseExpr"(%"adt$main.parser.ParserContext"* %1, i32 0)
  store %"adt$main.ast_expr.AstExpr"* %2, %"adt$main.ast_expr.AstExpr"** %cond
  %3 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %4 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.KThen"()
  %5 = call %"adt$main.token.Token.2"* @"fn$main.parser.consume"(%"adt$main.parser.ParserContext"* %3, %"adt$main.token.TokenType.1"* %4)
  %6 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %7 = call %"adt$main.ast_stmt.AstStmtList"* @"fn$main.parser.parseStmtList"(%"adt$main.parser.ParserContext"* %6)
  %8 = call %"adt$main.ast_stmt.AstStmt"* @"adtcfn$adtc$main.ast_stmt.AstStmt.Block"(%"adt$main.ast_stmt.AstStmtList"* %7)
  store %"adt$main.ast_stmt.AstStmt"* %8, %"adt$main.ast_stmt.AstStmt"** %then_
  %9 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %10 = call %"adt$main.ast_stmt.MaybeAstStmt"* @"fn$main.parser.parseElse"(%"adt$main.parser.ParserContext"* %9)
  store %"adt$main.ast_stmt.MaybeAstStmt"* %10, %"adt$main.ast_stmt.MaybeAstStmt"** %else_
  %11 = load %"adt$main.ast_expr.AstExpr"*, %"adt$main.ast_expr.AstExpr"** %cond
  %12 = load %"adt$main.ast_stmt.AstStmt"*, %"adt$main.ast_stmt.AstStmt"** %then_
  %13 = load %"adt$main.ast_stmt.MaybeAstStmt"*, %"adt$main.ast_stmt.MaybeAstStmt"** %else_
  %14 = call %"adt$main.ast_stmt.AstStmt"* @"adtcfn$adtc$main.ast_stmt.AstStmt.If"(%"adt$main.ast_expr.AstExpr"* %11, %"adt$main.ast_stmt.AstStmt"* %12, %"adt$main.ast_stmt.MaybeAstStmt"* %13)
  ret %"adt$main.ast_stmt.AstStmt"* %14
}

declare %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.KWhile"()

declare %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.KDo"()

declare %"adt$main.ast_stmt.AstStmt"* @"adtcfn$adtc$main.ast_stmt.AstStmt.While"(%"adt$main.ast_expr.AstExpr"*, %"adt$main.ast_stmt.AstStmtList"*)

declare %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.KMatch"()

define %"adt$main.ast_stmt.AstCaseList"* @"fn$main.parser.parseMatchCaseList"(%"adt$main.parser.ParserContext"* %par) {
entry:
  %case_ = alloca %"adt$main.ast_stmt.AstCase"*
  %bake.par = alloca %"adt$main.parser.ParserContext"*
  store %"adt$main.parser.ParserContext"* %par, %"adt$main.parser.ParserContext"** %bake.par
  br label %10
                                                  ; No predecessors!
  unreachable

; <label>:1:                                      ; preds = %10
  %2 = call %"adt$main.ast_stmt.AstCaseList"* @"adtcfn$adtc$main.ast_stmt.AstCaseList.Nil"()
  ret %"adt$main.ast_stmt.AstCaseList"* %2

; <label>:3:                                      ; preds = %10
  %4 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %5 = call %"adt$main.ast_stmt.AstCase"* @"fn$main.parser.parseMatchCase"(%"adt$main.parser.ParserContext"* %4)
  store %"adt$main.ast_stmt.AstCase"* %5, %"adt$main.ast_stmt.AstCase"** %case_
  %6 = load %"adt$main.ast_stmt.AstCase"*, %"adt$main.ast_stmt.AstCase"** %case_
  %7 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %8 = call %"adt$main.ast_stmt.AstCaseList"* @"fn$main.parser.parseMatchCaseList"(%"adt$main.parser.ParserContext"* %7)
  %9 = call %"adt$main.ast_stmt.AstCaseList"* @"adtcfn$adtc$main.ast_stmt.AstCaseList.Cons"(%"adt$main.ast_stmt.AstCase"* %6, %"adt$main.ast_stmt.AstCaseList"* %8)
  ret %"adt$main.ast_stmt.AstCaseList"* %9

; <label>:10:                                     ; preds = %entry
  %11 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %12 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.KCase"()
  %13 = call i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %11, %"adt$main.token.TokenType.1"* %12)
  br i1 %13, label %3, label %1
}

declare %"adt$main.ast_stmt.AstStmt"* @"adtcfn$adtc$main.ast_stmt.AstStmt.Match"(%"adt$main.ast_expr.AstExpr"*, %"adt$main.ast_stmt.AstCaseList"*)

declare %"adt$main.ast_stmt.AstStmt"* @"adtcfn$adtc$main.ast_stmt.AstStmt.Assign"(%"adt$main.ast_expr.AstExpr"*, %"adt$main.ast_expr.AstExpr"*)

declare %"adt$main.ast_stmt.AstStmt"* @"adtcfn$adtc$main.ast_stmt.AstStmt.Eval"(%"adt$main.ast_expr.AstExpr"*)

declare %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.KCase"()

define %"adt$main.ast_stmt.AstCase"* @"fn$main.parser.parseMatchCase"(%"adt$main.parser.ParserContext"* %par) {
entry:
  %case_ = alloca %"adt$main.ast_stmt.AstCase"*
  %bake.par = alloca %"adt$main.parser.ParserContext"*
  store %"adt$main.parser.ParserContext"* %par, %"adt$main.parser.ParserContext"** %bake.par
  br label %0

; <label>:0:                                      ; preds = %entry
  %1 = call %"adt$main.ast_stmt.AstCase"* @"adtcfn$adtc$main.ast_stmt.AstCase.New"()
  store %"adt$main.ast_stmt.AstCase"* %1, %"adt$main.ast_stmt.AstCase"** %case_
  %2 = load %"adt$main.ast_stmt.AstCase"*, %"adt$main.ast_stmt.AstCase"** %case_
  %3 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %4 = call %"adt$main.ast.SrcLoc.0"* @"fn$main.parser.getLocation"(%"adt$main.parser.ParserContext"* %3)
  %5 = getelementptr inbounds %"adt$main.ast_stmt.AstCase", %"adt$main.ast_stmt.AstCase"* %2, i32 0, i32 1
  store %"adt$main.ast.SrcLoc.0"* %4, %"adt$main.ast.SrcLoc.0"** %5
  %6 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %7 = call %"adt$main.token.Token.2"* @"fn$main.parser.take"(%"adt$main.parser.ParserContext"* %6)
  %8 = load %"adt$main.ast_stmt.AstCase"*, %"adt$main.ast_stmt.AstCase"** %case_
  %9 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %10 = call %"adt$main.ast_stmt.AstPattern"* @"fn$main.parser.parsePattern"(%"adt$main.parser.ParserContext"* %9)
  %11 = getelementptr inbounds %"adt$main.ast_stmt.AstCase", %"adt$main.ast_stmt.AstCase"* %8, i32 0, i32 2
  store %"adt$main.ast_stmt.AstPattern"* %10, %"adt$main.ast_stmt.AstPattern"** %11
  %12 = load %"adt$main.ast_stmt.AstCase"*, %"adt$main.ast_stmt.AstCase"** %case_
  %13 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %14 = call %"adt$main.ast_stmt.AstStmtList"* @"fn$main.parser.parseStmtList"(%"adt$main.parser.ParserContext"* %13)
  %15 = getelementptr inbounds %"adt$main.ast_stmt.AstCase", %"adt$main.ast_stmt.AstCase"* %12, i32 0, i32 3
  store %"adt$main.ast_stmt.AstStmtList"* %14, %"adt$main.ast_stmt.AstStmtList"** %15
  %16 = load %"adt$main.ast_stmt.AstCase"*, %"adt$main.ast_stmt.AstCase"** %case_
  ret %"adt$main.ast_stmt.AstCase"* %16
}

declare %"adt$main.ast_stmt.AstCaseList"* @"adtcfn$adtc$main.ast_stmt.AstCaseList.Cons"(%"adt$main.ast_stmt.AstCase"*, %"adt$main.ast_stmt.AstCaseList"*)

declare %"adt$main.ast_stmt.AstCaseList"* @"adtcfn$adtc$main.ast_stmt.AstCaseList.Nil"()

declare %"adt$main.ast_stmt.AstCase"* @"adtcfn$adtc$main.ast_stmt.AstCase.New"()

define %"adt$main.ast_stmt.AstPattern"* @"fn$main.parser.parsePattern"(%"adt$main.parser.ParserContext"* %par) {
entry:
  %bake.par = alloca %"adt$main.parser.ParserContext"*
  store %"adt$main.parser.ParserContext"* %par, %"adt$main.parser.ParserContext"** %bake.par
  br label %7

; <label>:0:                                      ; preds = %7
  %1 = bitcast %"adt$main.ast_stmt.MaybeAstPattern"* %9 to %"adtc$main.ast_stmt.MaybeAstPattern.Just"*
  %2 = getelementptr inbounds %"adtc$main.ast_stmt.MaybeAstPattern.Just", %"adtc$main.ast_stmt.MaybeAstPattern.Just"* %1, i32 0, i32 1
  %3 = load %"adt$main.ast_stmt.AstPattern"*, %"adt$main.ast_stmt.AstPattern"** %2
  ret %"adt$main.ast_stmt.AstPattern"* %3

; <label>:4:                                      ; preds = %7
  %5 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  call void @"fn$main.parser.ParserError"(%"adt$main.parser.ParserContext"* %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @1, i32 0, i32 0))
  unreachable

; <label>:6:                                      ; preds = %7
  unreachable

; <label>:7:                                      ; preds = %entry
  %8 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %9 = call %"adt$main.ast_stmt.MaybeAstPattern"* @"fn$main.parser.maybeParsePattern"(%"adt$main.parser.ParserContext"* %8)
  %10 = getelementptr inbounds %"adt$main.ast_stmt.MaybeAstPattern", %"adt$main.ast_stmt.MaybeAstPattern"* %9, i32 0, i32 0
  %11 = load i32, i32* %10
  switch i32 %11, label %6 [
    i32 1, label %0
    i32 0, label %4
  ]
}

define %"adt$main.ast_stmt.MaybeAstPattern"* @"fn$main.parser.maybeParsePattern"(%"adt$main.parser.ParserContext"* %par) {
entry:
  %params = alloca %"adt$main.ast_stmt.AstPatternList"*
  %binder = alloca %"adt$main.ast.Binder"*
  %pat = alloca %"adt$main.ast_stmt.AstPattern"*
  %loc = alloca %"adt$main.ast.SrcLoc.0"*
  %bake.par = alloca %"adt$main.parser.ParserContext"*
  store %"adt$main.parser.ParserContext"* %par, %"adt$main.parser.ParserContext"** %bake.par
  br label %29

; <label>:0:                                      ; preds = %1, %4
  br label %15

; <label>:1:                                      ; preds = %23
  %2 = load %"adt$main.ast.Binder"*, %"adt$main.ast.Binder"** %binder
  %3 = call %"adt$main.ast_stmt.AstPattern"* @"adtcfn$adtc$main.ast_stmt.AstPattern.Id"(%"adt$main.ast.Binder"* %2)
  store %"adt$main.ast_stmt.AstPattern"* %3, %"adt$main.ast_stmt.AstPattern"** %pat
  br label %0

; <label>:4:                                      ; preds = %23
  %5 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %6 = call %"adt$main.token.Token.2"* @"fn$main.parser.take"(%"adt$main.parser.ParserContext"* %5)
  %7 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %8 = call %"adt$main.ast_stmt.AstPatternList"* @"fn$main.parser.parsePatternList"(%"adt$main.parser.ParserContext"* %7)
  store %"adt$main.ast_stmt.AstPatternList"* %8, %"adt$main.ast_stmt.AstPatternList"** %params
  %9 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %10 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.RParen"()
  %11 = call %"adt$main.token.Token.2"* @"fn$main.parser.consume"(%"adt$main.parser.ParserContext"* %9, %"adt$main.token.TokenType.1"* %10)
  %12 = load %"adt$main.ast.Binder"*, %"adt$main.ast.Binder"** %binder
  %13 = load %"adt$main.ast_stmt.AstPatternList"*, %"adt$main.ast_stmt.AstPatternList"** %params
  %14 = call %"adt$main.ast_stmt.AstPattern"* @"adtcfn$adtc$main.ast_stmt.AstPattern.Cons"(%"adt$main.ast.Binder"* %12, %"adt$main.ast_stmt.AstPatternList"* %13)
  store %"adt$main.ast_stmt.AstPattern"* %14, %"adt$main.ast_stmt.AstPattern"** %pat
  br label %0

; <label>:15:                                     ; preds = %0
  %16 = load %"adt$main.ast_stmt.AstPattern"*, %"adt$main.ast_stmt.AstPattern"** %pat
  %17 = load %"adt$main.ast.SrcLoc.0"*, %"adt$main.ast.SrcLoc.0"** %loc
  %18 = getelementptr inbounds %"adt$main.ast_stmt.AstPattern", %"adt$main.ast_stmt.AstPattern"* %16, i32 0, i32 1
  store %"adt$main.ast.SrcLoc.0"* %17, %"adt$main.ast.SrcLoc.0"** %18
  %19 = load %"adt$main.ast_stmt.AstPattern"*, %"adt$main.ast_stmt.AstPattern"** %pat
  %20 = call %"adt$main.ast_stmt.MaybeAstPattern"* @"adtcfn$adtc$main.ast_stmt.MaybeAstPattern.Just"(%"adt$main.ast_stmt.AstPattern"* %19)
  ret %"adt$main.ast_stmt.MaybeAstPattern"* %20

; <label>:21:                                     ; preds = %29
  %22 = call %"adt$main.ast_stmt.MaybeAstPattern"* @"adtcfn$adtc$main.ast_stmt.MaybeAstPattern.Nothing"()
  ret %"adt$main.ast_stmt.MaybeAstPattern"* %22

; <label>:23:                                     ; preds = %29
  %24 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %25 = call %"adt$main.ast.Binder"* @"fn$main.parser.parseBinder"(%"adt$main.parser.ParserContext"* %24)
  store %"adt$main.ast.Binder"* %25, %"adt$main.ast.Binder"** %binder
  %26 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %27 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.LParen"()
  %28 = call i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %26, %"adt$main.token.TokenType.1"* %27)
  br i1 %28, label %4, label %1

; <label>:29:                                     ; preds = %entry
  %30 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %31 = call %"adt$main.ast.SrcLoc.0"* @"fn$main.parser.getLocation"(%"adt$main.parser.ParserContext"* %30)
  store %"adt$main.ast.SrcLoc.0"* %31, %"adt$main.ast.SrcLoc.0"** %loc
  %32 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %33 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.Identifier"()
  %34 = call i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %32, %"adt$main.token.TokenType.1"* %33)
  br i1 %34, label %23, label %21
}

declare %"adt$main.ast_stmt.MaybeAstPattern"* @"adtcfn$adtc$main.ast_stmt.MaybeAstPattern.Nothing"()

declare %"adt$main.ast_stmt.MaybeAstPattern"* @"adtcfn$adtc$main.ast_stmt.MaybeAstPattern.Just"(%"adt$main.ast_stmt.AstPattern"*)

define %"adt$main.ast_stmt.AstPatternList"* @"fn$main.parser.parsePatternList"(%"adt$main.parser.ParserContext"* %par) {
entry:
  %m_pat = alloca %"adt$main.ast_stmt.MaybeAstPattern"*
  %bake.par = alloca %"adt$main.parser.ParserContext"*
  store %"adt$main.parser.ParserContext"* %par, %"adt$main.parser.ParserContext"** %bake.par
  br label %10

; <label>:0:                                      ; preds = %10
  %1 = bitcast %"adt$main.ast_stmt.MaybeAstPattern"* %13 to %"adtc$main.ast_stmt.MaybeAstPattern.Just"*
  %2 = getelementptr inbounds %"adtc$main.ast_stmt.MaybeAstPattern.Just", %"adtc$main.ast_stmt.MaybeAstPattern.Just"* %1, i32 0, i32 1
  %3 = load %"adt$main.ast_stmt.AstPattern"*, %"adt$main.ast_stmt.AstPattern"** %2
  %4 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %5 = call %"adt$main.ast_stmt.AstPatternList"* @"fn$main.parser.parsePatternListTail"(%"adt$main.parser.ParserContext"* %4)
  %6 = call %"adt$main.ast_stmt.AstPatternList"* @"adtcfn$adtc$main.ast_stmt.AstPatternList.Cons"(%"adt$main.ast_stmt.AstPattern"* %3, %"adt$main.ast_stmt.AstPatternList"* %5)
  ret %"adt$main.ast_stmt.AstPatternList"* %6

; <label>:7:                                      ; preds = %10
  %8 = call %"adt$main.ast_stmt.AstPatternList"* @"adtcfn$adtc$main.ast_stmt.AstPatternList.Nil"()
  ret %"adt$main.ast_stmt.AstPatternList"* %8

; <label>:9:                                      ; preds = %10
  unreachable

; <label>:10:                                     ; preds = %entry
  %11 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %12 = call %"adt$main.ast_stmt.MaybeAstPattern"* @"fn$main.parser.maybeParsePattern"(%"adt$main.parser.ParserContext"* %11)
  store %"adt$main.ast_stmt.MaybeAstPattern"* %12, %"adt$main.ast_stmt.MaybeAstPattern"** %m_pat
  %13 = load %"adt$main.ast_stmt.MaybeAstPattern"*, %"adt$main.ast_stmt.MaybeAstPattern"** %m_pat
  %14 = getelementptr inbounds %"adt$main.ast_stmt.MaybeAstPattern", %"adt$main.ast_stmt.MaybeAstPattern"* %13, i32 0, i32 0
  %15 = load i32, i32* %14
  switch i32 %15, label %9 [
    i32 1, label %0
    i32 0, label %7
  ]
}

declare %"adt$main.ast_stmt.AstPattern"* @"adtcfn$adtc$main.ast_stmt.AstPattern.Cons"(%"adt$main.ast.Binder"*, %"adt$main.ast_stmt.AstPatternList"*)

declare %"adt$main.ast_stmt.AstPattern"* @"adtcfn$adtc$main.ast_stmt.AstPattern.Id"(%"adt$main.ast.Binder"*)

declare %"adt$main.ast_stmt.AstPatternList"* @"adtcfn$adtc$main.ast_stmt.AstPatternList.Nil"()

define %"adt$main.ast_stmt.AstPatternList"* @"fn$main.parser.parsePatternListTail"(%"adt$main.parser.ParserContext"* %par) {
entry:
  %pat = alloca %"adt$main.ast_stmt.AstPattern"*
  %bake.par = alloca %"adt$main.parser.ParserContext"*
  store %"adt$main.parser.ParserContext"* %par, %"adt$main.parser.ParserContext"** %bake.par
  br label %12
                                                  ; No predecessors!
  unreachable

; <label>:1:                                      ; preds = %12
  %2 = call %"adt$main.ast_stmt.AstPatternList"* @"adtcfn$adtc$main.ast_stmt.AstPatternList.Nil"()
  ret %"adt$main.ast_stmt.AstPatternList"* %2

; <label>:3:                                      ; preds = %12
  %4 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %5 = call %"adt$main.token.Token.2"* @"fn$main.parser.take"(%"adt$main.parser.ParserContext"* %4)
  %6 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %7 = call %"adt$main.ast_stmt.AstPattern"* @"fn$main.parser.parsePattern"(%"adt$main.parser.ParserContext"* %6)
  store %"adt$main.ast_stmt.AstPattern"* %7, %"adt$main.ast_stmt.AstPattern"** %pat
  %8 = load %"adt$main.ast_stmt.AstPattern"*, %"adt$main.ast_stmt.AstPattern"** %pat
  %9 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %10 = call %"adt$main.ast_stmt.AstPatternList"* @"fn$main.parser.parsePatternListTail"(%"adt$main.parser.ParserContext"* %9)
  %11 = call %"adt$main.ast_stmt.AstPatternList"* @"adtcfn$adtc$main.ast_stmt.AstPatternList.Cons"(%"adt$main.ast_stmt.AstPattern"* %8, %"adt$main.ast_stmt.AstPatternList"* %10)
  ret %"adt$main.ast_stmt.AstPatternList"* %11

; <label>:12:                                     ; preds = %entry
  %13 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %14 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.Comma"()
  %15 = call i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %13, %"adt$main.token.TokenType.1"* %14)
  br i1 %15, label %3, label %1
}

declare %"adt$main.ast_stmt.AstPatternList"* @"adtcfn$adtc$main.ast_stmt.AstPatternList.Cons"(%"adt$main.ast_stmt.AstPattern"*, %"adt$main.ast_stmt.AstPatternList"*)

define %"adt$main.ast_stmt.MaybeAstStmt"* @"fn$main.parser.parseElse"(%"adt$main.parser.ParserContext"* %par) {
entry:
  %stmt = alloca %"adt$main.ast_stmt.AstStmt"*
  %block = alloca %"adt$main.ast_stmt.AstStmtList"*
  %loc = alloca %"adt$main.ast.SrcLoc.0"*
  %bake.par = alloca %"adt$main.parser.ParserContext"*
  store %"adt$main.parser.ParserContext"* %par, %"adt$main.parser.ParserContext"** %bake.par
  br label %38
                                                  ; No predecessors!
  br label %13

; <label>:1:                                      ; preds = %14
  %2 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  call void @"fn$main.parser.ParserError"(%"adt$main.parser.ParserContext"* %2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @2, i32 0, i32 0))
  unreachable

; <label>:3:                                      ; preds = %14
  %4 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %5 = call %"adt$main.token.Token.2"* @"fn$main.parser.take"(%"adt$main.parser.ParserContext"* %4)
  %6 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %7 = call %"adt$main.ast_stmt.AstStmt"* @"fn$main.parser.parseIf"(%"adt$main.parser.ParserContext"* %6)
  store %"adt$main.ast_stmt.AstStmt"* %7, %"adt$main.ast_stmt.AstStmt"** %stmt
  %8 = load %"adt$main.ast_stmt.AstStmt"*, %"adt$main.ast_stmt.AstStmt"** %stmt
  %9 = load %"adt$main.ast.SrcLoc.0"*, %"adt$main.ast.SrcLoc.0"** %loc
  %10 = getelementptr inbounds %"adt$main.ast_stmt.AstStmt", %"adt$main.ast_stmt.AstStmt"* %8, i32 0, i32 1
  store %"adt$main.ast.SrcLoc.0"* %9, %"adt$main.ast.SrcLoc.0"** %10
  %11 = load %"adt$main.ast_stmt.AstStmt"*, %"adt$main.ast_stmt.AstStmt"** %stmt
  %12 = call %"adt$main.ast_stmt.MaybeAstStmt"* @"adtcfn$adtc$main.ast_stmt.MaybeAstStmt.Just"(%"adt$main.ast_stmt.AstStmt"* %11)
  ret %"adt$main.ast_stmt.MaybeAstStmt"* %12

; <label>:13:                                     ; preds = %0
  br label %29

; <label>:14:                                     ; preds = %30
  %15 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %16 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.KElIf"()
  %17 = call i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %15, %"adt$main.token.TokenType.1"* %16)
  br i1 %17, label %3, label %1

; <label>:18:                                     ; preds = %30
  %19 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %20 = call %"adt$main.token.Token.2"* @"fn$main.parser.take"(%"adt$main.parser.ParserContext"* %19)
  %21 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %22 = call %"adt$main.ast_stmt.AstStmtList"* @"fn$main.parser.parseStmtList"(%"adt$main.parser.ParserContext"* %21)
  store %"adt$main.ast_stmt.AstStmtList"* %22, %"adt$main.ast_stmt.AstStmtList"** %block
  %23 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %24 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.KEnd"()
  %25 = call %"adt$main.token.Token.2"* @"fn$main.parser.consume"(%"adt$main.parser.ParserContext"* %23, %"adt$main.token.TokenType.1"* %24)
  %26 = load %"adt$main.ast_stmt.AstStmtList"*, %"adt$main.ast_stmt.AstStmtList"** %block
  %27 = call %"adt$main.ast_stmt.AstStmt"* @"adtcfn$adtc$main.ast_stmt.AstStmt.Block"(%"adt$main.ast_stmt.AstStmtList"* %26)
  %28 = call %"adt$main.ast_stmt.MaybeAstStmt"* @"adtcfn$adtc$main.ast_stmt.MaybeAstStmt.Just"(%"adt$main.ast_stmt.AstStmt"* %27)
  ret %"adt$main.ast_stmt.MaybeAstStmt"* %28

; <label>:29:                                     ; preds = %13
  unreachable

; <label>:30:                                     ; preds = %38
  %31 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %32 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.KElse"()
  %33 = call i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %31, %"adt$main.token.TokenType.1"* %32)
  br i1 %33, label %18, label %14

; <label>:34:                                     ; preds = %38
  %35 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %36 = call %"adt$main.token.Token.2"* @"fn$main.parser.take"(%"adt$main.parser.ParserContext"* %35)
  %37 = call %"adt$main.ast_stmt.MaybeAstStmt"* @"adtcfn$adtc$main.ast_stmt.MaybeAstStmt.Nothing"()
  ret %"adt$main.ast_stmt.MaybeAstStmt"* %37

; <label>:38:                                     ; preds = %entry
  %39 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %40 = call %"adt$main.ast.SrcLoc.0"* @"fn$main.parser.getLocation"(%"adt$main.parser.ParserContext"* %39)
  store %"adt$main.ast.SrcLoc.0"* %40, %"adt$main.ast.SrcLoc.0"** %loc
  %41 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %42 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.KEnd"()
  %43 = call i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %41, %"adt$main.token.TokenType.1"* %42)
  br i1 %43, label %34, label %30
}

declare %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.KElse"()

declare %"adt$main.ast_stmt.AstStmt"* @"adtcfn$adtc$main.ast_stmt.AstStmt.Block"(%"adt$main.ast_stmt.AstStmtList"*)

declare %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.KElIf"()

declare %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.KThen"()

declare %"adt$main.ast_stmt.AstStmt"* @"adtcfn$adtc$main.ast_stmt.AstStmt.If"(%"adt$main.ast_expr.AstExpr"*, %"adt$main.ast_stmt.AstStmt"*, %"adt$main.ast_stmt.MaybeAstStmt"*)

define %"adt$main.ast_expr.AstExprList"* @"fn$main.parser.parseExprListCommaSeparated"(%"adt$main.parser.ParserContext"* %par) {
entry:
  %bake.par = alloca %"adt$main.parser.ParserContext"*
  store %"adt$main.parser.ParserContext"* %par, %"adt$main.parser.ParserContext"** %bake.par
  br label %10

; <label>:0:                                      ; preds = %10
  %1 = call %"adt$main.ast_expr.AstExprList"* @"adtcfn$adtc$main.ast_expr.AstExprList.Nil"()
  ret %"adt$main.ast_expr.AstExprList"* %1

; <label>:2:                                      ; preds = %10
  %3 = bitcast %"adt$main.ast_expr.MaybeAstExpr"* %12 to %"adtc$main.ast_expr.MaybeAstExpr.Just"*
  %4 = getelementptr inbounds %"adtc$main.ast_expr.MaybeAstExpr.Just", %"adtc$main.ast_expr.MaybeAstExpr.Just"* %3, i32 0, i32 1
  %5 = load %"adt$main.ast_expr.AstExpr"*, %"adt$main.ast_expr.AstExpr"** %4
  %6 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %7 = call %"adt$main.ast_expr.AstExprList"* @"fn$main.parser.parseExprListCommaSeparatedTail"(%"adt$main.parser.ParserContext"* %6)
  %8 = call %"adt$main.ast_expr.AstExprList"* @"adtcfn$adtc$main.ast_expr.AstExprList.Cons"(%"adt$main.ast_expr.AstExpr"* %5, %"adt$main.ast_expr.AstExprList"* %7)
  ret %"adt$main.ast_expr.AstExprList"* %8

; <label>:9:                                      ; preds = %10
  unreachable

; <label>:10:                                     ; preds = %entry
  %11 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %12 = call %"adt$main.ast_expr.MaybeAstExpr"* @"fn$main.parser.maybeParseExpr"(%"adt$main.parser.ParserContext"* %11, i32 0)
  %13 = getelementptr inbounds %"adt$main.ast_expr.MaybeAstExpr", %"adt$main.ast_expr.MaybeAstExpr"* %12, i32 0, i32 0
  %14 = load i32, i32* %13
  switch i32 %14, label %9 [
    i32 0, label %0
    i32 1, label %2
  ]
}

define %"adt$main.ast_expr.AstExprList"* @"fn$main.parser.parseExprListCommaSeparatedTail"(%"adt$main.parser.ParserContext"* %par) {
entry:
  %expr = alloca %"adt$main.ast_expr.AstExpr"*
  %bake.par = alloca %"adt$main.parser.ParserContext"*
  store %"adt$main.parser.ParserContext"* %par, %"adt$main.parser.ParserContext"** %bake.par
  br label %12
                                                  ; No predecessors!
  unreachable

; <label>:1:                                      ; preds = %12
  %2 = call %"adt$main.ast_expr.AstExprList"* @"adtcfn$adtc$main.ast_expr.AstExprList.Nil"()
  ret %"adt$main.ast_expr.AstExprList"* %2

; <label>:3:                                      ; preds = %12
  %4 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %5 = call %"adt$main.token.Token.2"* @"fn$main.parser.take"(%"adt$main.parser.ParserContext"* %4)
  %6 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %7 = call %"adt$main.ast_expr.AstExpr"* @"fn$main.parser.parseExpr"(%"adt$main.parser.ParserContext"* %6, i32 0)
  store %"adt$main.ast_expr.AstExpr"* %7, %"adt$main.ast_expr.AstExpr"** %expr
  %8 = load %"adt$main.ast_expr.AstExpr"*, %"adt$main.ast_expr.AstExpr"** %expr
  %9 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %10 = call %"adt$main.ast_expr.AstExprList"* @"fn$main.parser.parseExprListCommaSeparatedTail"(%"adt$main.parser.ParserContext"* %9)
  %11 = call %"adt$main.ast_expr.AstExprList"* @"adtcfn$adtc$main.ast_expr.AstExprList.Cons"(%"adt$main.ast_expr.AstExpr"* %8, %"adt$main.ast_expr.AstExprList"* %10)
  ret %"adt$main.ast_expr.AstExprList"* %11

; <label>:12:                                     ; preds = %entry
  %13 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %14 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.Comma"()
  %15 = call i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %13, %"adt$main.token.TokenType.1"* %14)
  br i1 %15, label %3, label %1
}

declare %"adt$main.ast_expr.AstExprList"* @"adtcfn$adtc$main.ast_expr.AstExprList.Cons"(%"adt$main.ast_expr.AstExpr"*, %"adt$main.ast_expr.AstExprList"*)

declare %"adt$main.ast_expr.AstExprList"* @"adtcfn$adtc$main.ast_expr.AstExprList.Nil"()

define %"adt$main.ast_expr.MaybeAstExpr"* @"fn$main.parser.maybeParsePrimExpr"(%"adt$main.parser.ParserContext"* %par) {
entry:
  %type = alloca %"adt$main.ast_type.AstType"*
  %ast = alloca %"adt$main.ast_expr.AstExpr"*
  %loc = alloca %"adt$main.ast.SrcLoc.0"*
  %bake.par = alloca %"adt$main.parser.ParserContext"*
  store %"adt$main.parser.ParserContext"* %par, %"adt$main.parser.ParserContext"** %bake.par
  br label %61

; <label>:0:                                      ; preds = %3
  br label %11

; <label>:1:                                      ; preds = %12
  %2 = call %"adt$main.ast_expr.MaybeAstExpr"* @"adtcfn$adtc$main.ast_expr.MaybeAstExpr.Nothing"()
  ret %"adt$main.ast_expr.MaybeAstExpr"* %2

; <label>:3:                                      ; preds = %12
  %4 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %5 = call %"adt$main.token.Token.2"* @"fn$main.parser.take"(%"adt$main.parser.ParserContext"* %4)
  %6 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %7 = call %"adt$main.ast_expr.AstExpr"* @"fn$main.parser.parseExpr"(%"adt$main.parser.ParserContext"* %6, i32 0)
  store %"adt$main.ast_expr.AstExpr"* %7, %"adt$main.ast_expr.AstExpr"** %ast
  %8 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %9 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.RParen"()
  %10 = call %"adt$main.token.Token.2"* @"fn$main.parser.consume"(%"adt$main.parser.ParserContext"* %8, %"adt$main.token.TokenType.1"* %9)
  br label %0

; <label>:11:                                     ; preds = %0, %16
  br label %22

; <label>:12:                                     ; preds = %23
  %13 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %14 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.LParen"()
  %15 = call i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %13, %"adt$main.token.TokenType.1"* %14)
  br i1 %15, label %3, label %1

; <label>:16:                                     ; preds = %23
  %17 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %18 = call %"adt$main.token.Token.2"* @"fn$main.parser.take"(%"adt$main.parser.ParserContext"* %17)
  %19 = getelementptr inbounds %"adt$main.token.Token.2", %"adt$main.token.Token.2"* %18, i32 0, i32 3
  %20 = load i8*, i8** %19
  %21 = call %"adt$main.ast_expr.AstExpr"* @"adtcfn$adtc$main.ast_expr.AstExpr.NumberLit"(i8* %20)
  store %"adt$main.ast_expr.AstExpr"* %21, %"adt$main.ast_expr.AstExpr"** %ast
  br label %11

; <label>:22:                                     ; preds = %11, %27
  br label %33

; <label>:23:                                     ; preds = %34
  %24 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %25 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.NumberLiteral"()
  %26 = call i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %24, %"adt$main.token.TokenType.1"* %25)
  br i1 %26, label %16, label %12

; <label>:27:                                     ; preds = %34
  %28 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %29 = call %"adt$main.token.Token.2"* @"fn$main.parser.take"(%"adt$main.parser.ParserContext"* %28)
  %30 = getelementptr inbounds %"adt$main.token.Token.2", %"adt$main.token.Token.2"* %29, i32 0, i32 3
  %31 = load i8*, i8** %30
  %32 = call %"adt$main.ast_expr.AstExpr"* @"adtcfn$adtc$main.ast_expr.AstExpr.StringLit"(i8* %31)
  store %"adt$main.ast_expr.AstExpr"* %32, %"adt$main.ast_expr.AstExpr"** %ast
  br label %22

; <label>:33:                                     ; preds = %22, %38
  br label %45

; <label>:34:                                     ; preds = %51
  %35 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %36 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.StringLiteral"()
  %37 = call i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %35, %"adt$main.token.TokenType.1"* %36)
  br i1 %37, label %27, label %23

; <label>:38:                                     ; preds = %51
  %39 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %40 = call %"adt$main.token.Token.2"* @"fn$main.parser.take"(%"adt$main.parser.ParserContext"* %39)
  %41 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %42 = call %"adt$main.ast_type.AstType"* @"fn$main.parser.parseType"(%"adt$main.parser.ParserContext"* %41)
  store %"adt$main.ast_type.AstType"* %42, %"adt$main.ast_type.AstType"** %type
  %43 = load %"adt$main.ast_type.AstType"*, %"adt$main.ast_type.AstType"** %type
  %44 = call %"adt$main.ast_expr.AstExpr"* @"adtcfn$adtc$main.ast_expr.AstExpr.New"(%"adt$main.ast_type.AstType"* %43)
  store %"adt$main.ast_expr.AstExpr"* %44, %"adt$main.ast_expr.AstExpr"** %ast
  br label %33

; <label>:45:                                     ; preds = %33, %55
  %46 = load %"adt$main.ast_expr.AstExpr"*, %"adt$main.ast_expr.AstExpr"** %ast
  %47 = load %"adt$main.ast.SrcLoc.0"*, %"adt$main.ast.SrcLoc.0"** %loc
  %48 = getelementptr inbounds %"adt$main.ast_expr.AstExpr", %"adt$main.ast_expr.AstExpr"* %46, i32 0, i32 1
  store %"adt$main.ast.SrcLoc.0"* %47, %"adt$main.ast.SrcLoc.0"** %48
  %49 = load %"adt$main.ast_expr.AstExpr"*, %"adt$main.ast_expr.AstExpr"** %ast
  %50 = call %"adt$main.ast_expr.MaybeAstExpr"* @"adtcfn$adtc$main.ast_expr.MaybeAstExpr.Just"(%"adt$main.ast_expr.AstExpr"* %49)
  ret %"adt$main.ast_expr.MaybeAstExpr"* %50

; <label>:51:                                     ; preds = %61
  %52 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %53 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.KNew"()
  %54 = call i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %52, %"adt$main.token.TokenType.1"* %53)
  br i1 %54, label %38, label %34

; <label>:55:                                     ; preds = %61
  %56 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %57 = call %"adt$main.token.Token.2"* @"fn$main.parser.take"(%"adt$main.parser.ParserContext"* %56)
  %58 = getelementptr inbounds %"adt$main.token.Token.2", %"adt$main.token.Token.2"* %57, i32 0, i32 3
  %59 = load i8*, i8** %58
  %60 = call %"adt$main.ast_expr.AstExpr"* @"adtcfn$adtc$main.ast_expr.AstExpr.Id"(i8* %59)
  store %"adt$main.ast_expr.AstExpr"* %60, %"adt$main.ast_expr.AstExpr"** %ast
  br label %45

; <label>:61:                                     ; preds = %entry
  %62 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %63 = call %"adt$main.ast.SrcLoc.0"* @"fn$main.parser.getLocation"(%"adt$main.parser.ParserContext"* %62)
  store %"adt$main.ast.SrcLoc.0"* %63, %"adt$main.ast.SrcLoc.0"** %loc
  %64 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %65 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.Identifier"()
  %66 = call i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %64, %"adt$main.token.TokenType.1"* %65)
  br i1 %66, label %55, label %51
}

declare %"adt$main.ast_expr.AstExpr"* @"adtcfn$adtc$main.ast_expr.AstExpr.Id"(i8*)

declare %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.KNew"()

declare %"adt$main.ast_expr.AstExpr"* @"adtcfn$adtc$main.ast_expr.AstExpr.New"(%"adt$main.ast_type.AstType"*)

declare %"adt$main.ast_expr.AstExpr"* @"adtcfn$adtc$main.ast_expr.AstExpr.StringLit"(i8*)

declare %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.NumberLiteral"()

declare %"adt$main.ast_expr.AstExpr"* @"adtcfn$adtc$main.ast_expr.AstExpr.NumberLit"(i8*)

define %"adt$main.ast_expr.AstExpr"* @"fn$main.parser.parseBinOp"(%"adt$main.parser.ParserContext"* %par, %"adt$main.ast_expr.AstExpr"* %lhs, %"adt$main.ast_expr.BinOp"* %op, i32 %prec) {
entry:
  %rhs = alloca %"adt$main.ast_expr.AstExpr"*
  %bake.prec = alloca i32
  %bake.op = alloca %"adt$main.ast_expr.BinOp"*
  %bake.lhs = alloca %"adt$main.ast_expr.AstExpr"*
  %bake.par = alloca %"adt$main.parser.ParserContext"*
  store i32 %prec, i32* %bake.prec
  store %"adt$main.ast_expr.BinOp"* %op, %"adt$main.ast_expr.BinOp"** %bake.op
  store %"adt$main.ast_expr.AstExpr"* %lhs, %"adt$main.ast_expr.AstExpr"** %bake.lhs
  store %"adt$main.parser.ParserContext"* %par, %"adt$main.parser.ParserContext"** %bake.par
  br label %0

; <label>:0:                                      ; preds = %entry
  %1 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %2 = call %"adt$main.token.Token.2"* @"fn$main.parser.take"(%"adt$main.parser.ParserContext"* %1)
  %3 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %4 = load i32, i32* %bake.prec
  %5 = call %"adt$main.ast_expr.AstExpr"* @"fn$main.parser.parseExpr"(%"adt$main.parser.ParserContext"* %3, i32 %4)
  store %"adt$main.ast_expr.AstExpr"* %5, %"adt$main.ast_expr.AstExpr"** %rhs
  %6 = load %"adt$main.ast_expr.AstExpr"*, %"adt$main.ast_expr.AstExpr"** %bake.lhs
  %7 = load %"adt$main.ast_expr.BinOp"*, %"adt$main.ast_expr.BinOp"** %bake.op
  %8 = load %"adt$main.ast_expr.AstExpr"*, %"adt$main.ast_expr.AstExpr"** %rhs
  %9 = call %"adt$main.ast_expr.AstExpr"* @"adtcfn$adtc$main.ast_expr.AstExpr.BinOp"(%"adt$main.ast_expr.AstExpr"* %6, %"adt$main.ast_expr.BinOp"* %7, %"adt$main.ast_expr.AstExpr"* %8)
  ret %"adt$main.ast_expr.AstExpr"* %9
}

declare %"adt$main.ast_expr.AstExpr"* @"adtcfn$adtc$main.ast_expr.AstExpr.BinOp"(%"adt$main.ast_expr.AstExpr"*, %"adt$main.ast_expr.BinOp"*, %"adt$main.ast_expr.AstExpr"*)

declare %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.Dot"()

declare %"adt$main.ast_expr.AstExpr"* @"adtcfn$adtc$main.ast_expr.AstExpr.Dot"(%"adt$main.ast_expr.AstExpr"*, i8*)

declare %"adt$main.ast_expr.AstExpr"* @"adtcfn$adtc$main.ast_expr.AstExpr.Call"(%"adt$main.ast_expr.AstExpr"*, %"adt$main.ast_expr.AstExprList"*)

declare %"adt$main.ast_expr.AstExpr"* @"adtcfn$adtc$main.ast_expr.AstExpr.Index"(%"adt$main.ast_expr.AstExpr"*, %"adt$main.ast_expr.AstExpr"*)

declare %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.KOr"()

declare %"adt$main.ast_expr.BinOp"* @"adtcfn$adtc$main.ast_expr.BinOp.Or"()

declare %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.KAnd"()

declare %"adt$main.ast_expr.BinOp"* @"adtcfn$adtc$main.ast_expr.BinOp.And"()

declare %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.CmpEQ"()

declare %"adt$main.ast_expr.BinOp"* @"adtcfn$adtc$main.ast_expr.BinOp.CmpEQ"()

declare %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.CmpNE"()

declare %"adt$main.ast_expr.BinOp"* @"adtcfn$adtc$main.ast_expr.BinOp.CmpNE"()

declare %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.CmpGT"()

declare %"adt$main.ast_expr.BinOp"* @"adtcfn$adtc$main.ast_expr.BinOp.CmpGT"()

declare %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.CmpGE"()

declare %"adt$main.ast_expr.BinOp"* @"adtcfn$adtc$main.ast_expr.BinOp.CmpGE"()

declare %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.CmpLT"()

declare %"adt$main.ast_expr.BinOp"* @"adtcfn$adtc$main.ast_expr.BinOp.CmpLT"()

declare %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.CmpLE"()

declare %"adt$main.ast_expr.BinOp"* @"adtcfn$adtc$main.ast_expr.BinOp.CmpLE"()

declare %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.Plus"()

declare %"adt$main.ast_expr.BinOp"* @"adtcfn$adtc$main.ast_expr.BinOp.Plus"()

declare %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.Minus"()

declare %"adt$main.ast_expr.BinOp"* @"adtcfn$adtc$main.ast_expr.BinOp.Minus"()

declare %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.Divide"()

declare %"adt$main.ast_expr.BinOp"* @"adtcfn$adtc$main.ast_expr.BinOp.Divide"()

declare %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.Multiply"()

declare %"adt$main.ast_expr.BinOp"* @"adtcfn$adtc$main.ast_expr.BinOp.Multiply"()

define %"adt$main.ast.AstADTFieldsList"* @"fn$main.parser.parseADTFieldsList"(%"adt$main.parser.ParserContext"* %par) {
entry:
  %field_ = alloca %"adt$main.ast.AstField"*
  %bake.par = alloca %"adt$main.parser.ParserContext"*
  store %"adt$main.parser.ParserContext"* %par, %"adt$main.parser.ParserContext"** %bake.par
  br label %10
                                                  ; No predecessors!
  unreachable

; <label>:1:                                      ; preds = %10
  %2 = call %"adt$main.ast.AstADTFieldsList"* @"adtcfn$adtc$main.ast.AstADTFieldsList.Nil"()
  ret %"adt$main.ast.AstADTFieldsList"* %2

; <label>:3:                                      ; preds = %10
  %4 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %5 = call %"adt$main.ast.AstField"* @"fn$main.parser.parseField"(%"adt$main.parser.ParserContext"* %4)
  store %"adt$main.ast.AstField"* %5, %"adt$main.ast.AstField"** %field_
  %6 = load %"adt$main.ast.AstField"*, %"adt$main.ast.AstField"** %field_
  %7 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %8 = call %"adt$main.ast.AstADTFieldsList"* @"fn$main.parser.parseADTFieldsList"(%"adt$main.parser.ParserContext"* %7)
  %9 = call %"adt$main.ast.AstADTFieldsList"* @"adtcfn$adtc$main.ast.AstADTFieldsList.Cons"(%"adt$main.ast.AstField"* %6, %"adt$main.ast.AstADTFieldsList"* %8)
  ret %"adt$main.ast.AstADTFieldsList"* %9

; <label>:10:                                     ; preds = %entry
  %11 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %12 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.KField"()
  %13 = call i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %11, %"adt$main.token.TokenType.1"* %12)
  br i1 %13, label %3, label %1
}

declare %"adt$main.ast.AstTopLevel"* @"adtcfn$adtc$main.ast.AstTopLevel.ADT"(%"adt$main.ast.Binder"*, %"adt$main.ast.AstADTConsList"*, %"adt$main.ast.AstADTFieldsList"*)

declare %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.KField"()

define %"adt$main.ast.AstField"* @"fn$main.parser.parseField"(%"adt$main.parser.ParserContext"* %par) {
entry:
  %field_ = alloca %"adt$main.ast.AstField"*
  %bake.par = alloca %"adt$main.parser.ParserContext"*
  store %"adt$main.parser.ParserContext"* %par, %"adt$main.parser.ParserContext"** %bake.par
  br label %0

; <label>:0:                                      ; preds = %entry
  %1 = call %"adt$main.ast.AstField"* @"adtcfn$adtc$main.ast.AstField.New"()
  store %"adt$main.ast.AstField"* %1, %"adt$main.ast.AstField"** %field_
  %2 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %3 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.KField"()
  %4 = call %"adt$main.token.Token.2"* @"fn$main.parser.consume"(%"adt$main.parser.ParserContext"* %2, %"adt$main.token.TokenType.1"* %3)
  %5 = load %"adt$main.ast.AstField"*, %"adt$main.ast.AstField"** %field_
  %6 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %7 = call %"adt$main.ast.Binder"* @"fn$main.parser.parseBinder"(%"adt$main.parser.ParserContext"* %6)
  %8 = getelementptr inbounds %"adt$main.ast.AstField", %"adt$main.ast.AstField"* %5, i32 0, i32 1
  store %"adt$main.ast.Binder"* %7, %"adt$main.ast.Binder"** %8
  %9 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %10 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.Colon"()
  %11 = call %"adt$main.token.Token.2"* @"fn$main.parser.consume"(%"adt$main.parser.ParserContext"* %9, %"adt$main.token.TokenType.1"* %10)
  %12 = load %"adt$main.ast.AstField"*, %"adt$main.ast.AstField"** %field_
  %13 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %14 = call %"adt$main.ast_type.AstType"* @"fn$main.parser.parseType"(%"adt$main.parser.ParserContext"* %13)
  %15 = getelementptr inbounds %"adt$main.ast.AstField", %"adt$main.ast.AstField"* %12, i32 0, i32 2
  store %"adt$main.ast_type.AstType"* %14, %"adt$main.ast_type.AstType"** %15
  %16 = load %"adt$main.ast.AstField"*, %"adt$main.ast.AstField"** %field_
  ret %"adt$main.ast.AstField"* %16
}

declare %"adt$main.ast.AstADTFieldsList"* @"adtcfn$adtc$main.ast.AstADTFieldsList.Cons"(%"adt$main.ast.AstField"*, %"adt$main.ast.AstADTFieldsList"*)

declare %"adt$main.ast.AstADTFieldsList"* @"adtcfn$adtc$main.ast.AstADTFieldsList.Nil"()

declare %"adt$main.ast.AstField"* @"adtcfn$adtc$main.ast.AstField.New"()

declare %"adt$main.ast.Binder"* @"adtcfn$adtc$main.ast.Binder.NameAt"(i8*, %"adt$main.ast.SrcLoc.0"*)

declare %"adt$main.ast.AstImport"* @"adtcfn$adtc$main.ast.AstImport.New"()

define %"adt$main.ast.QualID"* @"fn$main.parser.parseQualID"(%"adt$main.parser.ParserContext"* %par) {
entry:
  %tok = alloca %"adt$main.token.Token.2"*
  %bake.par = alloca %"adt$main.parser.ParserContext"*
  store %"adt$main.parser.ParserContext"* %par, %"adt$main.parser.ParserContext"** %bake.par
  br label %0

; <label>:0:                                      ; preds = %entry
  %1 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %2 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.Identifier"()
  %3 = call %"adt$main.token.Token.2"* @"fn$main.parser.consume"(%"adt$main.parser.ParserContext"* %1, %"adt$main.token.TokenType.1"* %2)
  store %"adt$main.token.Token.2"* %3, %"adt$main.token.Token.2"** %tok
  %4 = load %"adt$main.token.Token.2"*, %"adt$main.token.Token.2"** %tok
  %5 = getelementptr inbounds %"adt$main.token.Token.2", %"adt$main.token.Token.2"* %4, i32 0, i32 3
  %6 = load i8*, i8** %5
  %7 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %8 = call %"adt$main.ast.QualID"* @"fn$main.parser.parseQualIDRhs"(%"adt$main.parser.ParserContext"* %7)
  %9 = call %"adt$main.ast.QualID"* @"adtcfn$adtc$main.ast.QualID.Piece"(i8* %6, %"adt$main.ast.QualID"* %8)
  ret %"adt$main.ast.QualID"* %9
}

declare %"adt$main.ast.AstImportList"* @"adtcfn$adtc$main.ast.AstImportList.Cons"(%"adt$main.ast.AstImport"*, %"adt$main.ast.AstImportList"*)

declare %"adt$main.ast.AstImportList"* @"adtcfn$adtc$main.ast.AstImportList.Nil"()

define %"adt$main.ast.QualID"* @"fn$main.parser.parseQualIDRhs"(%"adt$main.parser.ParserContext"* %par) {
entry:
  %bake.par = alloca %"adt$main.parser.ParserContext"*
  store %"adt$main.parser.ParserContext"* %par, %"adt$main.parser.ParserContext"** %bake.par
  br label %8
                                                  ; No predecessors!
  unreachable

; <label>:1:                                      ; preds = %8
  %2 = call %"adt$main.ast.QualID"* @"adtcfn$adtc$main.ast.QualID.End"()
  ret %"adt$main.ast.QualID"* %2

; <label>:3:                                      ; preds = %8
  %4 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %5 = call %"adt$main.token.Token.2"* @"fn$main.parser.take"(%"adt$main.parser.ParserContext"* %4)
  %6 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %7 = call %"adt$main.ast.QualID"* @"fn$main.parser.parseQualID"(%"adt$main.parser.ParserContext"* %6)
  ret %"adt$main.ast.QualID"* %7

; <label>:8:                                      ; preds = %entry
  %9 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %10 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.Dot"()
  %11 = call i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %9, %"adt$main.token.TokenType.1"* %10)
  br i1 %11, label %3, label %1
}

declare %"adt$main.ast.QualID"* @"adtcfn$adtc$main.ast.QualID.End"()

declare %"adt$main.ast.QualID"* @"adtcfn$adtc$main.ast.QualID.Piece"(i8*, %"adt$main.ast.QualID"*)

define %"adt$main.token.Token.2"* @"fn$main.parser.getNextToken"(%"adt$main.parser.ParserContext"* %par) {
entry:
  %bake.par = alloca %"adt$main.parser.ParserContext"*
  store %"adt$main.parser.ParserContext"* %par, %"adt$main.parser.ParserContext"** %bake.par
  br label %0

; <label>:0:                                      ; preds = %entry
  %1 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %2 = getelementptr inbounds %"adt$main.parser.ParserContext", %"adt$main.parser.ParserContext"* %1, i32 0, i32 2
  %3 = load %"adt$main.token.TokenStream.3"*, %"adt$main.token.TokenStream.3"** %2
  %4 = getelementptr inbounds %"adt$main.token.TokenStream.3", %"adt$main.token.TokenStream.3"* %3, i32 0, i32 1
  %5 = load %"adt$main.token.Token.2"**, %"adt$main.token.Token.2"*** %4
  %6 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %7 = getelementptr inbounds %"adt$main.parser.ParserContext", %"adt$main.parser.ParserContext"* %6, i32 0, i32 3
  %8 = load i32, i32* %7
  %9 = getelementptr inbounds %"adt$main.token.Token.2"*, %"adt$main.token.Token.2"** %5, i32 %8
  %10 = load %"adt$main.token.Token.2"*, %"adt$main.token.Token.2"** %9
  ret %"adt$main.token.Token.2"* %10
}

define %"adt$main.token.TokenType.1"* @"fn$main.parser.peek"(%"adt$main.parser.ParserContext"* %par) {
entry:
  %bake.par = alloca %"adt$main.parser.ParserContext"*
  store %"adt$main.parser.ParserContext"* %par, %"adt$main.parser.ParserContext"** %bake.par
  br label %0

; <label>:0:                                      ; preds = %entry
  %1 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %2 = call %"adt$main.token.Token.2"* @"fn$main.parser.getNextToken"(%"adt$main.parser.ParserContext"* %1)
  %3 = getelementptr inbounds %"adt$main.token.Token.2", %"adt$main.token.Token.2"* %2, i32 0, i32 1
  %4 = load %"adt$main.token.TokenType.1"*, %"adt$main.token.TokenType.1"** %3
  ret %"adt$main.token.TokenType.1"* %4
}

declare i32 @"fn$main.token.TokenTypeToNum"(%"adt$main.token.TokenType.1"*)

define %"adt$main.ast.AstFile"* @"fn$main.parser.ParserRun"(%"adt$main.parser.ParserContext"* %par) {
entry:
  %file = alloca %"adt$main.ast.AstFile"*
  %bake.par = alloca %"adt$main.parser.ParserContext"*
  store %"adt$main.parser.ParserContext"* %par, %"adt$main.parser.ParserContext"** %bake.par
  br label %5

; <label>:0:                                      ; preds = %2
  %1 = load %"adt$main.ast.AstFile"*, %"adt$main.ast.AstFile"** %file
  ret %"adt$main.ast.AstFile"* %1

; <label>:2:                                      ; preds = %5
  br label %0

; <label>:3:                                      ; preds = %5
  %4 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  call void @"fn$main.parser.ParserError"(%"adt$main.parser.ParserContext"* %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @4, i32 0, i32 0))
  unreachable

; <label>:5:                                      ; preds = %entry
  %6 = call %"adt$main.ast.AstFile"* @"adtcfn$adtc$main.ast.AstFile.New"()
  store %"adt$main.ast.AstFile"* %6, %"adt$main.ast.AstFile"** %file
  %7 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %8 = load %"adt$main.ast.AstFile"*, %"adt$main.ast.AstFile"** %file
  call void @"fn$main.parser.ParserParseFile"(%"adt$main.parser.ParserContext"* %7, %"adt$main.ast.AstFile"* %8)
  %9 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %10 = call %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.EOF"()
  %11 = call i1 @"fn$main.parser.isNextToken"(%"adt$main.parser.ParserContext"* %9, %"adt$main.token.TokenType.1"* %10)
  %12 = icmp eq i1 %11, false
  br i1 %12, label %3, label %2
}

declare %"adt$main.ast.AstFile"* @"adtcfn$adtc$main.ast.AstFile.New"()

declare %"adt$main.token.TokenType.1"* @"adtcfn$adtc$main.token.TokenType.EOF"()

declare void @"fn$main.prelude.Exit"(i32)

declare i8* @jf_string_concat(i8*, i8*)

declare i8* @"fn$main.prelude.IntToStr"(i32)

declare void @"fn$main.prelude.WriteLn"(i8*)

define void @"fn$main.parser.ParserFeed"(%"adt$main.parser.ParserContext"* %par, i8* %filename, %"adt$main.token.TokenStream.3"* %tokens) {
entry:
  %bake.tokens = alloca %"adt$main.token.TokenStream.3"*
  %bake.filename = alloca i8*
  %bake.par = alloca %"adt$main.parser.ParserContext"*
  store %"adt$main.token.TokenStream.3"* %tokens, %"adt$main.token.TokenStream.3"** %bake.tokens
  store i8* %filename, i8** %bake.filename
  store %"adt$main.parser.ParserContext"* %par, %"adt$main.parser.ParserContext"** %bake.par
  br label %0

; <label>:0:                                      ; preds = %entry
  %1 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %2 = load i8*, i8** %bake.filename
  %3 = getelementptr inbounds %"adt$main.parser.ParserContext", %"adt$main.parser.ParserContext"* %1, i32 0, i32 1
  store i8* %2, i8** %3
  %4 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %5 = load %"adt$main.token.TokenStream.3"*, %"adt$main.token.TokenStream.3"** %bake.tokens
  %6 = getelementptr inbounds %"adt$main.parser.ParserContext", %"adt$main.parser.ParserContext"* %4, i32 0, i32 2
  store %"adt$main.token.TokenStream.3"* %5, %"adt$main.token.TokenStream.3"** %6
  %7 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %bake.par
  %8 = getelementptr inbounds %"adt$main.parser.ParserContext", %"adt$main.parser.ParserContext"* %7, i32 0, i32 3
  store i32 0, i32* %8
  ret void
}

define %"adt$main.parser.ParserContext"* @"fn$main.parser.ParserCreate"() {
entry:
  %par = alloca %"adt$main.parser.ParserContext"*
  br label %0

; <label>:0:                                      ; preds = %entry
  %1 = call %"adt$main.parser.ParserContext"* @"adtcfn$adtc$main.parser.ParserContext.New"()
  store %"adt$main.parser.ParserContext"* %1, %"adt$main.parser.ParserContext"** %par
  %2 = load %"adt$main.parser.ParserContext"*, %"adt$main.parser.ParserContext"** %par
  ret %"adt$main.parser.ParserContext"* %2
}

define %"adt$main.parser.ParserContext"* @"adtcfn$adtc$main.parser.ParserContext.New"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.parser.ParserContext.New"* getelementptr (%"adtc$main.parser.ParserContext.New", %"adtc$main.parser.ParserContext.New"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.parser.ParserContext.New"*
  %2 = getelementptr inbounds %"adtc$main.parser.ParserContext.New", %"adtc$main.parser.ParserContext.New"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.parser.ParserContext.New"* %1 to %"adt$main.parser.ParserContext"*
  ret %"adt$main.parser.ParserContext"* %3
}

declare i8* @"fn$main.token.TokenTypeGetName"(%"adt$main.token.TokenType.1"*)

declare i8* @jf_allocate(i32)
