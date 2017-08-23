; ModuleID = 'main.ir_compiler'
source_filename = "main.ir_compiler"

%"adt$main.ir_compiler.IRCompiler" = type { i32, %"adt$main.compiler.CompilerContext.22"*, %"adt$main.ir.IRSourceFile.23"* }
%"adt$main.compiler.CompilerContext.22" = type { i32, i8*, %"adt$main.ir.IRCompilationUnitList.21"* }
%"adt$main.ir.IRCompilationUnitList.21" = type { i32 }
%"adt$main.ir.IRSourceFile.23" = type { i32, %"adt$main.ir.SourceFileRef.30"*, %"adt$main.ir.IRCompilationUnit.26"*, %"adt$main.ir.IRImportList.31"*, %"adt$main.ir.IRSymbolList.32"* }
%"adt$main.ir.SourceFileRef.30" = type { i32, i8*, i8*, i8*, i8* }
%"adt$main.ir.IRCompilationUnit.26" = type { i32, i8*, %"adt$main.ir.IRSourceFileList.28"* }
%"adt$main.ir.IRSourceFileList.28" = type { i32 }
%"adt$main.ir.IRImportList.31" = type { i32 }
%"adt$main.ir.IRSymbolList.32" = type { i32 }
%"adt$main.ir.IRImport" = type { i32, %"adt$main.ast.SrcLoc.24"*, %"adt$main.ast.QualID.25"*, i8*, %"adt$main.ir.IRCompilationUnit.26"* }
%"adt$main.ast.SrcLoc.24" = type { i32 }
%"adt$main.ast.QualID.25" = type opaque
%"adtc$main.ir.IRCompilationUnitList.Cons.27" = type { i32, %"adt$main.ir.IRCompilationUnit.26"*, %"adt$main.ir.IRCompilationUnitList.21"* }
%"adtc$main.ast.SrcLoc.At.29" = type { i32, i32, i32 }
%"adtc$main.ir.IRImportList.Cons" = type { i32, %"adt$main.ir.IRImport"*, %"adt$main.ir.IRImportList.31"* }
%"adtc$main.ir.IRSymbolList.Cons.33" = type { i32, %"adt$main.ir.IRSymbol.34"*, %"adt$main.ir.IRSymbolList.32"* }
%"adt$main.ir.IRSymbol.34" = type { i32, %"adt$main.ir.IRSourceFile.23"*, %"adt$main.ast.SrcLoc.24"*, i8* }
%"adtc$main.ir.IRSourceFileList.Cons.35" = type { i32, %"adt$main.ir.IRSourceFile.23"*, %"adt$main.ir.IRSourceFileList.28"* }
%"adt$main.ir.IRExprNode.36" = type opaque
%"adt$main.ir.IRType.37" = type { i32 }
%"adtc$main.ir.IRType.ArraySized.45" = type { i32, %"adt$main.ir.IRType.37"*, %"adt$main.ir.IRExprNode.36"* }
%"adtc$main.ir.IRType.ArrayUnsized.44" = type { i32, %"adt$main.ir.IRType.37"* }
%"adtc$main.ir.IRSymbol.ADT.40" = type { i32, %"adt$main.ir.IRSourceFile.23"*, %"adt$main.ast.SrcLoc.24"*, i8*, %"adt$main.ir.IRADTDecl.41"* }
%"adt$main.ir.IRADTDecl.41" = type { i32, %"adt$main.ir.IRADTConsList.42"*, %"adt$main.ir.IRADTFieldList.43"*, %"adt$main.ir.IRSymbol.34"*, %"adt$main.ir.IRType.37"*, %"adt$main.ir.IRType.37"* }
%"adt$main.ir.IRADTConsList.42" = type { i32 }
%"adt$main.ir.IRADTFieldList.43" = type { i32 }
%"adtc$main.ir.IRType.Ref.38" = type { i32, %"adt$main.ir.IRTypeReference.39"* }
%"adt$main.ir.IRTypeReference.39" = type { i32, i8*, %"adt$main.ast.SrcLoc.24"*, %"adt$main.ir.IRSourceFile.23"*, %"adt$main.ir.IRType.37"* }
%"adt$main.ir.IRTypeNode.46" = type { i32, i1, %"adt$main.ast.SrcLoc.24"*, %"adt$main.ir.IRType.37"* }
%"adtc$main.ir.IRADTFieldList.Cons.47" = type { i32, %"adt$main.ir.IRADTField.48"*, %"adt$main.ir.IRADTFieldList.43"* }
%"adt$main.ir.IRADTField.48" = type { i32, %"adt$main.ir.IRADTDecl.41"*, i8*, %"adt$main.ast.SrcLoc.24"*, %"adt$main.ir.IRTypeNode.46"*, i32 }
%"adt$main.ir.IRParamList.49" = type { i32 }
%"adtc$main.ir.IRParamList.Cons.50" = type { i32, %"adt$main.ir.IRParam.51"*, %"adt$main.ir.IRParamList.49"* }
%"adt$main.ir.IRParam.51" = type { i32, i8*, %"adt$main.ast.SrcLoc.24"*, %"adt$main.ir.IRTypeNode.46"* }
%"adtc$main.ir.IRADTConsList.Cons.52" = type { i32, %"adt$main.ir.IRADTCons.53"*, %"adt$main.ir.IRADTConsList.42"* }
%"adt$main.ir.IRADTCons.53" = type { i32, %"adt$main.ir.IRADTDecl.41"*, i32, i8*, %"adt$main.ast.SrcLoc.24"*, %"adt$main.ir.IRParamList.49"*, %"adt$main.ir.IRType.37"* }
%"adt$main.ir.IRTypeList" = type opaque
%"adt$main.ir.IRFunctionDecl.54" = type { i32, %"adt$main.ir.IRSymbol.34"*, %"adt$main.ir.IRParamList.49"*, %"adt$main.ir.IRTypeNode.46"*, %"adt$main.ir.IRType.37"*, %"adt$main.ir.IRFunctionBody.55"* }
%"adt$main.ir.IRFunctionBody.55" = type opaque
%"adtc$main.ir.IRSymbol.Function.58" = type { i32, %"adt$main.ir.IRSourceFile.23"*, %"adt$main.ast.SrcLoc.24"*, i8*, %"adt$main.ir.IRFunctionDecl.54"* }
%"adtc$main.ir.IRSymbol.Global.56" = type { i32, %"adt$main.ir.IRSourceFile.23"*, %"adt$main.ast.SrcLoc.24"*, i8*, %"adt$main.ir.IRGlobalDecl.57"* }
%"adt$main.ir.IRGlobalDecl.57" = type { i32, %"adt$main.ir.IRSymbol.34"*, %"adt$main.ir.IRTypeNode.46"*, %"adt$main.ir.IRExprNode.36"* }
%"adtc$main.ir_compiler.IRCompiler.New" = type { i32, %"adt$main.compiler.CompilerContext.22"*, %"adt$main.ir.IRSourceFile.23"* }

@0 = private global [23 x i8] c"Can't resolve import '\00"
@1 = private global [2 x i8] c"'\00"
@2 = private global [7 x i8] c"(line \00"
@3 = private global [7 x i8] c", col \00"
@4 = private global [22 x i8] c"): IRCompiler Error: \00"
@5 = private global [24 x i8] c"Unresolved identifier '\00"
@6 = private global [2 x i8] c"'\00"
@7 = private global [13 x i8] c"Identifier '\00"
@8 = private global [15 x i8] c"' is ambiguous\00"
@9 = private global [30 x i8] c"Name doesn't represent a type\00"
@10 = private global [21 x i8] c"type not implemented\00"
@11 = private global [31 x i8] c"+++ Running IR Compilation on \00"
@12 = private global [5 x i8] c" +++\00"
@13 = private global [13 x i8] c"--- Leaving \00"
@14 = private global [5 x i8] c" ---\00"

define void @"fn$main.ir_compiler.IRResolveImport"(%"adt$main.ir_compiler.IRCompiler"* %compiler, %"adt$main.ir.IRImport"* %import_) {
entry:
  %units = alloca %"adt$main.ir.IRCompilationUnitList.21"*
  %bake.import_ = alloca %"adt$main.ir.IRImport"*
  %bake.compiler = alloca %"adt$main.ir_compiler.IRCompiler"*
  store %"adt$main.ir.IRImport"* %import_, %"adt$main.ir.IRImport"** %bake.import_
  store %"adt$main.ir_compiler.IRCompiler"* %compiler, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  br label %36

; <label>:0:                                      ; preds = %1
  br label %29

; <label>:1:                                      ; preds = %5
  br label %0

; <label>:2:                                      ; preds = %5
  %3 = load %"adt$main.ir.IRImport"*, %"adt$main.ir.IRImport"** %bake.import_
  %4 = getelementptr inbounds %"adt$main.ir.IRImport", %"adt$main.ir.IRImport"* %3, i32 0, i32 4
  store %"adt$main.ir.IRCompilationUnit.26"* %8, %"adt$main.ir.IRCompilationUnit.26"** %4
  ret void

; <label>:5:                                      ; preds = %31
  %6 = bitcast %"adt$main.ir.IRCompilationUnitList.21"* %32 to %"adtc$main.ir.IRCompilationUnitList.Cons.27"*
  %7 = getelementptr inbounds %"adtc$main.ir.IRCompilationUnitList.Cons.27", %"adtc$main.ir.IRCompilationUnitList.Cons.27"* %6, i32 0, i32 1
  %8 = load %"adt$main.ir.IRCompilationUnit.26"*, %"adt$main.ir.IRCompilationUnit.26"** %7
  %9 = bitcast %"adt$main.ir.IRCompilationUnitList.21"* %32 to %"adtc$main.ir.IRCompilationUnitList.Cons.27"*
  %10 = getelementptr inbounds %"adtc$main.ir.IRCompilationUnitList.Cons.27", %"adtc$main.ir.IRCompilationUnitList.Cons.27"* %9, i32 0, i32 2
  %11 = load %"adt$main.ir.IRCompilationUnitList.21"*, %"adt$main.ir.IRCompilationUnitList.21"** %10
  store %"adt$main.ir.IRCompilationUnitList.21"* %11, %"adt$main.ir.IRCompilationUnitList.21"** %units
  %12 = getelementptr inbounds %"adt$main.ir.IRCompilationUnit.26", %"adt$main.ir.IRCompilationUnit.26"* %8, i32 0, i32 1
  %13 = load i8*, i8** %12
  %14 = load %"adt$main.ir.IRImport"*, %"adt$main.ir.IRImport"** %bake.import_
  %15 = getelementptr inbounds %"adt$main.ir.IRImport", %"adt$main.ir.IRImport"* %14, i32 0, i32 3
  %16 = load i8*, i8** %15
  %17 = call i32 @jf_string_compare(i8* %13, i8* %16)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %2, label %1

; <label>:19:                                     ; preds = %31
  %20 = load %"adt$main.ir_compiler.IRCompiler"*, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  %21 = load %"adt$main.ir.IRImport"*, %"adt$main.ir.IRImport"** %bake.import_
  %22 = getelementptr inbounds %"adt$main.ir.IRImport", %"adt$main.ir.IRImport"* %21, i32 0, i32 1
  %23 = load %"adt$main.ast.SrcLoc.24"*, %"adt$main.ast.SrcLoc.24"** %22
  %24 = load %"adt$main.ir.IRImport"*, %"adt$main.ir.IRImport"** %bake.import_
  %25 = getelementptr inbounds %"adt$main.ir.IRImport", %"adt$main.ir.IRImport"* %24, i32 0, i32 3
  %26 = load i8*, i8** %25
  %27 = call i8* @jf_string_concat(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @0, i32 0, i32 0), i8* %26)
  %28 = call i8* @jf_string_concat(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1, i32 0, i32 0))
  call void @"fn$main.ir_compiler.IRCompilerError"(%"adt$main.ir_compiler.IRCompiler"* %20, %"adt$main.ast.SrcLoc.24"* %23, i8* %28)
  unreachable

; <label>:29:                                     ; preds = %0, %31
  br label %35
                                                  ; No predecessors!
  unreachable

; <label>:31:                                     ; preds = %35
  %32 = load %"adt$main.ir.IRCompilationUnitList.21"*, %"adt$main.ir.IRCompilationUnitList.21"** %units
  %33 = getelementptr inbounds %"adt$main.ir.IRCompilationUnitList.21", %"adt$main.ir.IRCompilationUnitList.21"* %32, i32 0, i32 0
  %34 = load i32, i32* %33
  switch i32 %34, label %29 [
    i32 1, label %5
    i32 0, label %19
  ]

; <label>:35:                                     ; preds = %29, %36
  br label %31

; <label>:36:                                     ; preds = %entry
  %37 = load %"adt$main.ir_compiler.IRCompiler"*, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  %38 = getelementptr inbounds %"adt$main.ir_compiler.IRCompiler", %"adt$main.ir_compiler.IRCompiler"* %37, i32 0, i32 1
  %39 = load %"adt$main.compiler.CompilerContext.22"*, %"adt$main.compiler.CompilerContext.22"** %38
  %40 = getelementptr inbounds %"adt$main.compiler.CompilerContext.22", %"adt$main.compiler.CompilerContext.22"* %39, i32 0, i32 2
  %41 = load %"adt$main.ir.IRCompilationUnitList.21"*, %"adt$main.ir.IRCompilationUnitList.21"** %40
  store %"adt$main.ir.IRCompilationUnitList.21"* %41, %"adt$main.ir.IRCompilationUnitList.21"** %units
  br label %35
}

declare i8* @jf_string_concat(i8*, i8*)

define void @"fn$main.ir_compiler.IRCompilerError"(%"adt$main.ir_compiler.IRCompiler"* %compiler, %"adt$main.ast.SrcLoc.24"* %loc, i8* %message) {
entry:
  %bake.message = alloca i8*
  %bake.loc = alloca %"adt$main.ast.SrcLoc.24"*
  %bake.compiler = alloca %"adt$main.ir_compiler.IRCompiler"*
  store i8* %message, i8** %bake.message
  store %"adt$main.ast.SrcLoc.24"* %loc, %"adt$main.ast.SrcLoc.24"** %bake.loc
  store %"adt$main.ir_compiler.IRCompiler"* %compiler, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  br label %26

; <label>:0:                                      ; preds = %26
  %1 = bitcast %"adt$main.ast.SrcLoc.24"* %27 to %"adtc$main.ast.SrcLoc.At.29"*
  %2 = getelementptr inbounds %"adtc$main.ast.SrcLoc.At.29", %"adtc$main.ast.SrcLoc.At.29"* %1, i32 0, i32 1
  %3 = load i32, i32* %2
  %4 = bitcast %"adt$main.ast.SrcLoc.24"* %27 to %"adtc$main.ast.SrcLoc.At.29"*
  %5 = getelementptr inbounds %"adtc$main.ast.SrcLoc.At.29", %"adtc$main.ast.SrcLoc.At.29"* %4, i32 0, i32 2
  %6 = load i32, i32* %5
  %7 = load %"adt$main.ir_compiler.IRCompiler"*, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  %8 = getelementptr inbounds %"adt$main.ir_compiler.IRCompiler", %"adt$main.ir_compiler.IRCompiler"* %7, i32 0, i32 2
  %9 = load %"adt$main.ir.IRSourceFile.23"*, %"adt$main.ir.IRSourceFile.23"** %8
  %10 = getelementptr inbounds %"adt$main.ir.IRSourceFile.23", %"adt$main.ir.IRSourceFile.23"* %9, i32 0, i32 1
  %11 = load %"adt$main.ir.SourceFileRef.30"*, %"adt$main.ir.SourceFileRef.30"** %10
  %12 = getelementptr inbounds %"adt$main.ir.SourceFileRef.30", %"adt$main.ir.SourceFileRef.30"* %11, i32 0, i32 4
  %13 = load i8*, i8** %12
  %14 = call i8* @jf_string_concat(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @2, i32 0, i32 0))
  %15 = add i32 %3, 1
  %16 = call i8* @"fn$main.prelude.IntToStr"(i32 %15)
  %17 = call i8* @jf_string_concat(i8* %14, i8* %16)
  %18 = call i8* @jf_string_concat(i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @3, i32 0, i32 0))
  %19 = add i32 %6, 1
  %20 = call i8* @"fn$main.prelude.IntToStr"(i32 %19)
  %21 = call i8* @jf_string_concat(i8* %18, i8* %20)
  %22 = call i8* @jf_string_concat(i8* %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i32 0, i32 0))
  %23 = load i8*, i8** %bake.message
  %24 = call i8* @jf_string_concat(i8* %22, i8* %23)
  call void @"fn$main.prelude.WriteLn"(i8* %24)
  br label %25

; <label>:25:                                     ; preds = %0, %26
  call void @"fn$main.prelude.Exit"(i32 1)
  unreachable

; <label>:26:                                     ; preds = %entry
  %27 = load %"adt$main.ast.SrcLoc.24"*, %"adt$main.ast.SrcLoc.24"** %bake.loc
  %28 = getelementptr inbounds %"adt$main.ast.SrcLoc.24", %"adt$main.ast.SrcLoc.24"* %27, i32 0, i32 0
  %29 = load i32, i32* %28
  switch i32 %29, label %25 [
    i32 0, label %0
  ]
}

declare i32 @jf_string_compare(i8*, i8*)

declare void @"fn$main.prelude.Exit"(i32)

declare i8* @"fn$main.prelude.IntToStr"(i32)

declare void @"fn$main.prelude.WriteLn"(i8*)

define void @"fn$main.ir_compiler.IRResolveImports"(%"adt$main.ir_compiler.IRCompiler"* %compiler, %"adt$main.ir.IRImportList.31"* %imports) {
entry:
  %bake.imports = alloca %"adt$main.ir.IRImportList.31"*
  %bake.compiler = alloca %"adt$main.ir_compiler.IRCompiler"*
  store %"adt$main.ir.IRImportList.31"* %imports, %"adt$main.ir.IRImportList.31"** %bake.imports
  store %"adt$main.ir_compiler.IRCompiler"* %compiler, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  br label %16

; <label>:0:                                      ; preds = %11
  %1 = bitcast %"adt$main.ir.IRImportList.31"* %12 to %"adtc$main.ir.IRImportList.Cons"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRImportList.Cons", %"adtc$main.ir.IRImportList.Cons"* %1, i32 0, i32 1
  %3 = load %"adt$main.ir.IRImport"*, %"adt$main.ir.IRImport"** %2
  %4 = bitcast %"adt$main.ir.IRImportList.31"* %12 to %"adtc$main.ir.IRImportList.Cons"*
  %5 = getelementptr inbounds %"adtc$main.ir.IRImportList.Cons", %"adtc$main.ir.IRImportList.Cons"* %4, i32 0, i32 2
  %6 = load %"adt$main.ir.IRImportList.31"*, %"adt$main.ir.IRImportList.31"** %5
  %7 = load %"adt$main.ir_compiler.IRCompiler"*, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  call void @"fn$main.ir_compiler.IRResolveImport"(%"adt$main.ir_compiler.IRCompiler"* %7, %"adt$main.ir.IRImport"* %3)
  store %"adt$main.ir.IRImportList.31"* %6, %"adt$main.ir.IRImportList.31"** %bake.imports
  br label %9

; <label>:8:                                      ; preds = %11
  ret void

; <label>:9:                                      ; preds = %0, %11
  br label %15
                                                  ; No predecessors!
  unreachable

; <label>:11:                                     ; preds = %15
  %12 = load %"adt$main.ir.IRImportList.31"*, %"adt$main.ir.IRImportList.31"** %bake.imports
  %13 = getelementptr inbounds %"adt$main.ir.IRImportList.31", %"adt$main.ir.IRImportList.31"* %12, i32 0, i32 0
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

define %"adt$main.ir.IRSymbolList.32"* @"fn$main.ir_compiler.IRFindSymbolsInFile"(%"adt$main.ir_compiler.IRCompiler"* %compiler, %"adt$main.ir.IRSourceFile.23"* %file, i8* %id) {
entry:
  %symbols = alloca %"adt$main.ir.IRSymbolList.32"*
  %found = alloca %"adt$main.ir.IRSymbolList.32"*
  %bake.id = alloca i8*
  %bake.file = alloca %"adt$main.ir.IRSourceFile.23"*
  %bake.compiler = alloca %"adt$main.ir_compiler.IRCompiler"*
  store i8* %id, i8** %bake.id
  store %"adt$main.ir.IRSourceFile.23"* %file, %"adt$main.ir.IRSourceFile.23"** %bake.file
  store %"adt$main.ir_compiler.IRCompiler"* %compiler, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  br label %26

; <label>:0:                                      ; preds = %1, %2
  store %"adt$main.ir.IRSymbolList.32"* %11, %"adt$main.ir.IRSymbolList.32"** %symbols
  br label %19

; <label>:1:                                      ; preds = %5
  br label %0

; <label>:2:                                      ; preds = %5
  %3 = load %"adt$main.ir.IRSymbolList.32"*, %"adt$main.ir.IRSymbolList.32"** %found
  %4 = call %"adt$main.ir.IRSymbolList.32"* @"adtcfn$adtc$main.ir.IRSymbolList.Cons"(%"adt$main.ir.IRSymbol.34"* %8, %"adt$main.ir.IRSymbolList.32"* %3)
  store %"adt$main.ir.IRSymbolList.32"* %4, %"adt$main.ir.IRSymbolList.32"** %found
  br label %0

; <label>:5:                                      ; preds = %21
  %6 = bitcast %"adt$main.ir.IRSymbolList.32"* %22 to %"adtc$main.ir.IRSymbolList.Cons.33"*
  %7 = getelementptr inbounds %"adtc$main.ir.IRSymbolList.Cons.33", %"adtc$main.ir.IRSymbolList.Cons.33"* %6, i32 0, i32 1
  %8 = load %"adt$main.ir.IRSymbol.34"*, %"adt$main.ir.IRSymbol.34"** %7
  %9 = bitcast %"adt$main.ir.IRSymbolList.32"* %22 to %"adtc$main.ir.IRSymbolList.Cons.33"*
  %10 = getelementptr inbounds %"adtc$main.ir.IRSymbolList.Cons.33", %"adtc$main.ir.IRSymbolList.Cons.33"* %9, i32 0, i32 2
  %11 = load %"adt$main.ir.IRSymbolList.32"*, %"adt$main.ir.IRSymbolList.32"** %10
  %12 = getelementptr inbounds %"adt$main.ir.IRSymbol.34", %"adt$main.ir.IRSymbol.34"* %8, i32 0, i32 3
  %13 = load i8*, i8** %12
  %14 = load i8*, i8** %bake.id
  %15 = call i32 @jf_string_compare(i8* %13, i8* %14)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %2, label %1

; <label>:17:                                     ; preds = %21
  %18 = load %"adt$main.ir.IRSymbolList.32"*, %"adt$main.ir.IRSymbolList.32"** %found
  ret %"adt$main.ir.IRSymbolList.32"* %18

; <label>:19:                                     ; preds = %0, %21
  br label %25
                                                  ; No predecessors!
  unreachable

; <label>:21:                                     ; preds = %25
  %22 = load %"adt$main.ir.IRSymbolList.32"*, %"adt$main.ir.IRSymbolList.32"** %symbols
  %23 = getelementptr inbounds %"adt$main.ir.IRSymbolList.32", %"adt$main.ir.IRSymbolList.32"* %22, i32 0, i32 0
  %24 = load i32, i32* %23
  switch i32 %24, label %19 [
    i32 1, label %5
    i32 0, label %17
  ]

; <label>:25:                                     ; preds = %19, %26
  br label %21

; <label>:26:                                     ; preds = %entry
  %27 = call %"adt$main.ir.IRSymbolList.32"* @"adtcfn$adtc$main.ir.IRSymbolList.Nil"()
  store %"adt$main.ir.IRSymbolList.32"* %27, %"adt$main.ir.IRSymbolList.32"** %found
  %28 = load %"adt$main.ir.IRSourceFile.23"*, %"adt$main.ir.IRSourceFile.23"** %bake.file
  %29 = getelementptr inbounds %"adt$main.ir.IRSourceFile.23", %"adt$main.ir.IRSourceFile.23"* %28, i32 0, i32 4
  %30 = load %"adt$main.ir.IRSymbolList.32"*, %"adt$main.ir.IRSymbolList.32"** %29
  store %"adt$main.ir.IRSymbolList.32"* %30, %"adt$main.ir.IRSymbolList.32"** %symbols
  br label %25
}

declare %"adt$main.ir.IRSymbolList.32"* @"adtcfn$adtc$main.ir.IRSymbolList.Nil"()

declare %"adt$main.ir.IRSymbolList.32"* @"adtcfn$adtc$main.ir.IRSymbolList.Cons"(%"adt$main.ir.IRSymbol.34"*, %"adt$main.ir.IRSymbolList.32"*)

define %"adt$main.ir.IRSymbolList.32"* @"fn$main.ir_compiler.IRFindSymbolsInUnit"(%"adt$main.ir_compiler.IRCompiler"* %compiler, %"adt$main.ir.IRCompilationUnit.26"* %unit_, i8* %id) {
entry:
  %files = alloca %"adt$main.ir.IRSourceFileList.28"*
  %found = alloca %"adt$main.ir.IRSymbolList.32"*
  %bake.id = alloca i8*
  %bake.unit_ = alloca %"adt$main.ir.IRCompilationUnit.26"*
  %bake.compiler = alloca %"adt$main.ir_compiler.IRCompiler"*
  store i8* %id, i8** %bake.id
  store %"adt$main.ir.IRCompilationUnit.26"* %unit_, %"adt$main.ir.IRCompilationUnit.26"** %bake.unit_
  store %"adt$main.ir_compiler.IRCompiler"* %compiler, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  br label %21

; <label>:0:                                      ; preds = %16
  %1 = bitcast %"adt$main.ir.IRSourceFileList.28"* %17 to %"adtc$main.ir.IRSourceFileList.Cons.35"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRSourceFileList.Cons.35", %"adtc$main.ir.IRSourceFileList.Cons.35"* %1, i32 0, i32 1
  %3 = load %"adt$main.ir.IRSourceFile.23"*, %"adt$main.ir.IRSourceFile.23"** %2
  %4 = bitcast %"adt$main.ir.IRSourceFileList.28"* %17 to %"adtc$main.ir.IRSourceFileList.Cons.35"*
  %5 = getelementptr inbounds %"adtc$main.ir.IRSourceFileList.Cons.35", %"adtc$main.ir.IRSourceFileList.Cons.35"* %4, i32 0, i32 2
  %6 = load %"adt$main.ir.IRSourceFileList.28"*, %"adt$main.ir.IRSourceFileList.28"** %5
  store %"adt$main.ir.IRSourceFileList.28"* %6, %"adt$main.ir.IRSourceFileList.28"** %files
  %7 = load %"adt$main.ir.IRSymbolList.32"*, %"adt$main.ir.IRSymbolList.32"** %found
  %8 = load %"adt$main.ir_compiler.IRCompiler"*, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  %9 = load i8*, i8** %bake.id
  %10 = call %"adt$main.ir.IRSymbolList.32"* @"fn$main.ir_compiler.IRFindSymbolsInFile"(%"adt$main.ir_compiler.IRCompiler"* %8, %"adt$main.ir.IRSourceFile.23"* %3, i8* %9)
  %11 = call %"adt$main.ir.IRSymbolList.32"* @"fn$main.ir_compiler.ConcatSymbols"(%"adt$main.ir.IRSymbolList.32"* %7, %"adt$main.ir.IRSymbolList.32"* %10)
  store %"adt$main.ir.IRSymbolList.32"* %11, %"adt$main.ir.IRSymbolList.32"** %found
  br label %14

; <label>:12:                                     ; preds = %16
  %13 = load %"adt$main.ir.IRSymbolList.32"*, %"adt$main.ir.IRSymbolList.32"** %found
  ret %"adt$main.ir.IRSymbolList.32"* %13

; <label>:14:                                     ; preds = %0, %16
  br label %20
                                                  ; No predecessors!
  unreachable

; <label>:16:                                     ; preds = %20
  %17 = load %"adt$main.ir.IRSourceFileList.28"*, %"adt$main.ir.IRSourceFileList.28"** %files
  %18 = getelementptr inbounds %"adt$main.ir.IRSourceFileList.28", %"adt$main.ir.IRSourceFileList.28"* %17, i32 0, i32 0
  %19 = load i32, i32* %18
  switch i32 %19, label %14 [
    i32 1, label %0
    i32 0, label %12
  ]

; <label>:20:                                     ; preds = %14, %21
  br label %16

; <label>:21:                                     ; preds = %entry
  %22 = call %"adt$main.ir.IRSymbolList.32"* @"adtcfn$adtc$main.ir.IRSymbolList.Nil"()
  store %"adt$main.ir.IRSymbolList.32"* %22, %"adt$main.ir.IRSymbolList.32"** %found
  %23 = load %"adt$main.ir.IRCompilationUnit.26"*, %"adt$main.ir.IRCompilationUnit.26"** %bake.unit_
  %24 = getelementptr inbounds %"adt$main.ir.IRCompilationUnit.26", %"adt$main.ir.IRCompilationUnit.26"* %23, i32 0, i32 2
  %25 = load %"adt$main.ir.IRSourceFileList.28"*, %"adt$main.ir.IRSourceFileList.28"** %24
  store %"adt$main.ir.IRSourceFileList.28"* %25, %"adt$main.ir.IRSourceFileList.28"** %files
  br label %20
}

define %"adt$main.ir.IRSymbolList.32"* @"fn$main.ir_compiler.ConcatSymbols"(%"adt$main.ir.IRSymbolList.32"* %l, %"adt$main.ir.IRSymbolList.32"* %r) {
entry:
  %bake.r = alloca %"adt$main.ir.IRSymbolList.32"*
  %bake.l = alloca %"adt$main.ir.IRSymbolList.32"*
  store %"adt$main.ir.IRSymbolList.32"* %r, %"adt$main.ir.IRSymbolList.32"** %bake.r
  store %"adt$main.ir.IRSymbolList.32"* %l, %"adt$main.ir.IRSymbolList.32"** %bake.l
  br label %13

; <label>:0:                                      ; preds = %13
  %1 = bitcast %"adt$main.ir.IRSymbolList.32"* %14 to %"adtc$main.ir.IRSymbolList.Cons.33"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRSymbolList.Cons.33", %"adtc$main.ir.IRSymbolList.Cons.33"* %1, i32 0, i32 1
  %3 = load %"adt$main.ir.IRSymbol.34"*, %"adt$main.ir.IRSymbol.34"** %2
  %4 = bitcast %"adt$main.ir.IRSymbolList.32"* %14 to %"adtc$main.ir.IRSymbolList.Cons.33"*
  %5 = getelementptr inbounds %"adtc$main.ir.IRSymbolList.Cons.33", %"adtc$main.ir.IRSymbolList.Cons.33"* %4, i32 0, i32 2
  %6 = load %"adt$main.ir.IRSymbolList.32"*, %"adt$main.ir.IRSymbolList.32"** %5
  %7 = load %"adt$main.ir.IRSymbolList.32"*, %"adt$main.ir.IRSymbolList.32"** %bake.r
  %8 = call %"adt$main.ir.IRSymbolList.32"* @"fn$main.ir_compiler.ConcatSymbols"(%"adt$main.ir.IRSymbolList.32"* %6, %"adt$main.ir.IRSymbolList.32"* %7)
  %9 = call %"adt$main.ir.IRSymbolList.32"* @"adtcfn$adtc$main.ir.IRSymbolList.Cons"(%"adt$main.ir.IRSymbol.34"* %3, %"adt$main.ir.IRSymbolList.32"* %8)
  ret %"adt$main.ir.IRSymbolList.32"* %9

; <label>:10:                                     ; preds = %13
  %11 = load %"adt$main.ir.IRSymbolList.32"*, %"adt$main.ir.IRSymbolList.32"** %bake.r
  ret %"adt$main.ir.IRSymbolList.32"* %11

; <label>:12:                                     ; preds = %13
  unreachable

; <label>:13:                                     ; preds = %entry
  %14 = load %"adt$main.ir.IRSymbolList.32"*, %"adt$main.ir.IRSymbolList.32"** %bake.l
  %15 = getelementptr inbounds %"adt$main.ir.IRSymbolList.32", %"adt$main.ir.IRSymbolList.32"* %14, i32 0, i32 0
  %16 = load i32, i32* %15
  switch i32 %16, label %12 [
    i32 1, label %0
    i32 0, label %10
  ]
}

define %"adt$main.ir.IRSymbolList.32"* @"fn$main.ir_compiler.IRFindGlobalSymbol"(%"adt$main.ir_compiler.IRCompiler"* %compiler, i8* %id) {
entry:
  %newSymbols = alloca %"adt$main.ir.IRSymbolList.32"*
  %imports = alloca %"adt$main.ir.IRImportList.31"*
  %allSymbols = alloca %"adt$main.ir.IRSymbolList.32"*
  %unitSymbols = alloca %"adt$main.ir.IRSymbolList.32"*
  %unit_ = alloca %"adt$main.ir.IRCompilationUnit.26"*
  %ownSymbols = alloca %"adt$main.ir.IRSymbolList.32"*
  %bake.id = alloca i8*
  %bake.compiler = alloca %"adt$main.ir_compiler.IRCompiler"*
  store i8* %id, i8** %bake.id
  store %"adt$main.ir_compiler.IRCompiler"* %compiler, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  br label %49

; <label>:0:                                      ; preds = %19
  %1 = bitcast %"adt$main.ir.IRImportList.31"* %20 to %"adtc$main.ir.IRImportList.Cons"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRImportList.Cons", %"adtc$main.ir.IRImportList.Cons"* %1, i32 0, i32 1
  %3 = load %"adt$main.ir.IRImport"*, %"adt$main.ir.IRImport"** %2
  %4 = bitcast %"adt$main.ir.IRImportList.31"* %20 to %"adtc$main.ir.IRImportList.Cons"*
  %5 = getelementptr inbounds %"adtc$main.ir.IRImportList.Cons", %"adtc$main.ir.IRImportList.Cons"* %4, i32 0, i32 2
  %6 = load %"adt$main.ir.IRImportList.31"*, %"adt$main.ir.IRImportList.31"** %5
  %7 = load %"adt$main.ir_compiler.IRCompiler"*, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  %8 = getelementptr inbounds %"adt$main.ir.IRImport", %"adt$main.ir.IRImport"* %3, i32 0, i32 4
  %9 = load %"adt$main.ir.IRCompilationUnit.26"*, %"adt$main.ir.IRCompilationUnit.26"** %8
  %10 = load i8*, i8** %bake.id
  %11 = call %"adt$main.ir.IRSymbolList.32"* @"fn$main.ir_compiler.IRFindSymbolsInUnit"(%"adt$main.ir_compiler.IRCompiler"* %7, %"adt$main.ir.IRCompilationUnit.26"* %9, i8* %10)
  store %"adt$main.ir.IRSymbolList.32"* %11, %"adt$main.ir.IRSymbolList.32"** %newSymbols
  %12 = load %"adt$main.ir.IRSymbolList.32"*, %"adt$main.ir.IRSymbolList.32"** %allSymbols
  %13 = load %"adt$main.ir.IRSymbolList.32"*, %"adt$main.ir.IRSymbolList.32"** %newSymbols
  %14 = call %"adt$main.ir.IRSymbolList.32"* @"fn$main.ir_compiler.ConcatSymbols"(%"adt$main.ir.IRSymbolList.32"* %12, %"adt$main.ir.IRSymbolList.32"* %13)
  store %"adt$main.ir.IRSymbolList.32"* %14, %"adt$main.ir.IRSymbolList.32"** %allSymbols
  store %"adt$main.ir.IRImportList.31"* %6, %"adt$main.ir.IRImportList.31"** %imports
  br label %17

; <label>:15:                                     ; preds = %19
  %16 = load %"adt$main.ir.IRSymbolList.32"*, %"adt$main.ir.IRSymbolList.32"** %allSymbols
  ret %"adt$main.ir.IRSymbolList.32"* %16

; <label>:17:                                     ; preds = %0, %19
  br label %23
                                                  ; No predecessors!
  unreachable

; <label>:19:                                     ; preds = %23
  %20 = load %"adt$main.ir.IRImportList.31"*, %"adt$main.ir.IRImportList.31"** %imports
  %21 = getelementptr inbounds %"adt$main.ir.IRImportList.31", %"adt$main.ir.IRImportList.31"* %20, i32 0, i32 0
  %22 = load i32, i32* %21
  switch i32 %22, label %17 [
    i32 1, label %0
    i32 0, label %15
  ]

; <label>:23:                                     ; preds = %17, %24
  br label %19

; <label>:24:                                     ; preds = %31
  %25 = call %"adt$main.ir.IRSymbolList.32"* @"adtcfn$adtc$main.ir.IRSymbolList.Nil"()
  store %"adt$main.ir.IRSymbolList.32"* %25, %"adt$main.ir.IRSymbolList.32"** %allSymbols
  %26 = load %"adt$main.ir_compiler.IRCompiler"*, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  %27 = getelementptr inbounds %"adt$main.ir_compiler.IRCompiler", %"adt$main.ir_compiler.IRCompiler"* %26, i32 0, i32 2
  %28 = load %"adt$main.ir.IRSourceFile.23"*, %"adt$main.ir.IRSourceFile.23"** %27
  %29 = getelementptr inbounds %"adt$main.ir.IRSourceFile.23", %"adt$main.ir.IRSourceFile.23"* %28, i32 0, i32 3
  %30 = load %"adt$main.ir.IRImportList.31"*, %"adt$main.ir.IRImportList.31"** %29
  store %"adt$main.ir.IRImportList.31"* %30, %"adt$main.ir.IRImportList.31"** %imports
  br label %23

; <label>:31:                                     ; preds = %34
  br label %24

; <label>:32:                                     ; preds = %34
  %33 = load %"adt$main.ir.IRSymbolList.32"*, %"adt$main.ir.IRSymbolList.32"** %unitSymbols
  ret %"adt$main.ir.IRSymbolList.32"* %33

; <label>:34:                                     ; preds = %46
  %35 = load %"adt$main.ir_compiler.IRCompiler"*, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  %36 = getelementptr inbounds %"adt$main.ir_compiler.IRCompiler", %"adt$main.ir_compiler.IRCompiler"* %35, i32 0, i32 2
  %37 = load %"adt$main.ir.IRSourceFile.23"*, %"adt$main.ir.IRSourceFile.23"** %36
  %38 = getelementptr inbounds %"adt$main.ir.IRSourceFile.23", %"adt$main.ir.IRSourceFile.23"* %37, i32 0, i32 2
  %39 = load %"adt$main.ir.IRCompilationUnit.26"*, %"adt$main.ir.IRCompilationUnit.26"** %38
  store %"adt$main.ir.IRCompilationUnit.26"* %39, %"adt$main.ir.IRCompilationUnit.26"** %unit_
  %40 = load %"adt$main.ir_compiler.IRCompiler"*, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  %41 = load %"adt$main.ir.IRCompilationUnit.26"*, %"adt$main.ir.IRCompilationUnit.26"** %unit_
  %42 = load i8*, i8** %bake.id
  %43 = call %"adt$main.ir.IRSymbolList.32"* @"fn$main.ir_compiler.IRFindSymbolsInUnit"(%"adt$main.ir_compiler.IRCompiler"* %40, %"adt$main.ir.IRCompilationUnit.26"* %41, i8* %42)
  store %"adt$main.ir.IRSymbolList.32"* %43, %"adt$main.ir.IRSymbolList.32"** %unitSymbols
  %44 = load %"adt$main.ir.IRSymbolList.32"*, %"adt$main.ir.IRSymbolList.32"** %ownSymbols
  %45 = call i1 @"fn$main.ir_compiler.HasAnySymbol"(%"adt$main.ir.IRSymbolList.32"* %44)
  br i1 %45, label %32, label %31

; <label>:46:                                     ; preds = %49
  br label %34

; <label>:47:                                     ; preds = %49
  %48 = load %"adt$main.ir.IRSymbolList.32"*, %"adt$main.ir.IRSymbolList.32"** %ownSymbols
  ret %"adt$main.ir.IRSymbolList.32"* %48

; <label>:49:                                     ; preds = %entry
  %50 = load %"adt$main.ir_compiler.IRCompiler"*, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  %51 = load %"adt$main.ir_compiler.IRCompiler"*, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  %52 = getelementptr inbounds %"adt$main.ir_compiler.IRCompiler", %"adt$main.ir_compiler.IRCompiler"* %51, i32 0, i32 2
  %53 = load %"adt$main.ir.IRSourceFile.23"*, %"adt$main.ir.IRSourceFile.23"** %52
  %54 = load i8*, i8** %bake.id
  %55 = call %"adt$main.ir.IRSymbolList.32"* @"fn$main.ir_compiler.IRFindSymbolsInFile"(%"adt$main.ir_compiler.IRCompiler"* %50, %"adt$main.ir.IRSourceFile.23"* %53, i8* %54)
  store %"adt$main.ir.IRSymbolList.32"* %55, %"adt$main.ir.IRSymbolList.32"** %ownSymbols
  %56 = load %"adt$main.ir.IRSymbolList.32"*, %"adt$main.ir.IRSymbolList.32"** %ownSymbols
  %57 = call i1 @"fn$main.ir_compiler.HasAnySymbol"(%"adt$main.ir.IRSymbolList.32"* %56)
  br i1 %57, label %47, label %46
}

define i1 @"fn$main.ir_compiler.HasAnySymbol"(%"adt$main.ir.IRSymbolList.32"* %symbols) {
entry:
  %bake.symbols = alloca %"adt$main.ir.IRSymbolList.32"*
  store %"adt$main.ir.IRSymbolList.32"* %symbols, %"adt$main.ir.IRSymbolList.32"** %bake.symbols
  br label %3

; <label>:0:                                      ; preds = %3
  ret i1 true

; <label>:1:                                      ; preds = %3
  ret i1 false

; <label>:2:                                      ; preds = %3
  unreachable

; <label>:3:                                      ; preds = %entry
  %4 = load %"adt$main.ir.IRSymbolList.32"*, %"adt$main.ir.IRSymbolList.32"** %bake.symbols
  %5 = getelementptr inbounds %"adt$main.ir.IRSymbolList.32", %"adt$main.ir.IRSymbolList.32"* %4, i32 0, i32 0
  %6 = load i32, i32* %5
  switch i32 %6, label %2 [
    i32 1, label %0
    i32 0, label %1
  ]
}

define %"adt$main.ir.IRSymbol.34"* @"fn$main.ir_compiler.IRResolveGlobalSymbol"(%"adt$main.ir_compiler.IRCompiler"* %compiler, %"adt$main.ast.SrcLoc.24"* %loc, i8* %id) {
entry:
  %symbols = alloca %"adt$main.ir.IRSymbolList.32"*
  %bake.id = alloca i8*
  %bake.loc = alloca %"adt$main.ast.SrcLoc.24"*
  %bake.compiler = alloca %"adt$main.ir_compiler.IRCompiler"*
  store i8* %id, i8** %bake.id
  store %"adt$main.ast.SrcLoc.24"* %loc, %"adt$main.ast.SrcLoc.24"** %bake.loc
  store %"adt$main.ir_compiler.IRCompiler"* %compiler, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  br label %23

; <label>:0:                                      ; preds = %7
  %1 = load %"adt$main.ir_compiler.IRCompiler"*, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  %2 = load %"adt$main.ast.SrcLoc.24"*, %"adt$main.ast.SrcLoc.24"** %bake.loc
  %3 = load i8*, i8** %bake.id
  %4 = call i8* @jf_string_concat(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0), i8* %3)
  %5 = call i8* @jf_string_concat(i8* %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @8, i32 0, i32 0))
  call void @"fn$main.ir_compiler.IRCompilerError"(%"adt$main.ir_compiler.IRCompiler"* %1, %"adt$main.ast.SrcLoc.24"* %2, i8* %5)
  unreachable

; <label>:6:                                      ; preds = %7
  ret %"adt$main.ir.IRSymbol.34"* %10

; <label>:7:                                      ; preds = %23
  %8 = bitcast %"adt$main.ir.IRSymbolList.32"* %27 to %"adtc$main.ir.IRSymbolList.Cons.33"*
  %9 = getelementptr inbounds %"adtc$main.ir.IRSymbolList.Cons.33", %"adtc$main.ir.IRSymbolList.Cons.33"* %8, i32 0, i32 1
  %10 = load %"adt$main.ir.IRSymbol.34"*, %"adt$main.ir.IRSymbol.34"** %9
  %11 = bitcast %"adt$main.ir.IRSymbolList.32"* %27 to %"adtc$main.ir.IRSymbolList.Cons.33"*
  %12 = getelementptr inbounds %"adtc$main.ir.IRSymbolList.Cons.33", %"adtc$main.ir.IRSymbolList.Cons.33"* %11, i32 0, i32 2
  %13 = load %"adt$main.ir.IRSymbolList.32"*, %"adt$main.ir.IRSymbolList.32"** %12
  %14 = getelementptr inbounds %"adt$main.ir.IRSymbolList.32", %"adt$main.ir.IRSymbolList.32"* %13, i32 0, i32 0
  %15 = load i32, i32* %14
  switch i32 %15, label %6 [
    i32 1, label %0
  ]

; <label>:16:                                     ; preds = %23
  %17 = load %"adt$main.ir_compiler.IRCompiler"*, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  %18 = load %"adt$main.ast.SrcLoc.24"*, %"adt$main.ast.SrcLoc.24"** %bake.loc
  %19 = load i8*, i8** %bake.id
  %20 = call i8* @jf_string_concat(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @5, i32 0, i32 0), i8* %19)
  %21 = call i8* @jf_string_concat(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @6, i32 0, i32 0))
  call void @"fn$main.ir_compiler.IRCompilerError"(%"adt$main.ir_compiler.IRCompiler"* %17, %"adt$main.ast.SrcLoc.24"* %18, i8* %21)
  unreachable

; <label>:22:                                     ; preds = %23
  unreachable

; <label>:23:                                     ; preds = %entry
  %24 = load %"adt$main.ir_compiler.IRCompiler"*, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  %25 = load i8*, i8** %bake.id
  %26 = call %"adt$main.ir.IRSymbolList.32"* @"fn$main.ir_compiler.IRFindGlobalSymbol"(%"adt$main.ir_compiler.IRCompiler"* %24, i8* %25)
  store %"adt$main.ir.IRSymbolList.32"* %26, %"adt$main.ir.IRSymbolList.32"** %symbols
  %27 = load %"adt$main.ir.IRSymbolList.32"*, %"adt$main.ir.IRSymbolList.32"** %symbols
  %28 = getelementptr inbounds %"adt$main.ir.IRSymbolList.32", %"adt$main.ir.IRSymbolList.32"* %27, i32 0, i32 0
  %29 = load i32, i32* %28
  switch i32 %29, label %22 [
    i32 1, label %7
    i32 0, label %16
  ]
}

define void @"fn$main.ir_compiler.IRCompileExprNode"(%"adt$main.ir_compiler.IRCompiler"* %compiler, %"adt$main.ir.IRExprNode.36"* %expr) {
entry:
  %bake.expr = alloca %"adt$main.ir.IRExprNode.36"*
  %bake.compiler = alloca %"adt$main.ir_compiler.IRCompiler"*
  store %"adt$main.ir.IRExprNode.36"* %expr, %"adt$main.ir.IRExprNode.36"** %bake.expr
  store %"adt$main.ir_compiler.IRCompiler"* %compiler, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  br label %0

; <label>:0:                                      ; preds = %entry
  ret void
}

define %"adt$main.ir.IRType.37"* @"fn$main.ir_compiler.IRCompileType"(%"adt$main.ir_compiler.IRCompiler"* %compiler, %"adt$main.ast.SrcLoc.24"* %loc, %"adt$main.ir.IRType.37"* %type) {
entry:
  %symbol = alloca %"adt$main.ir.IRSymbol.34"*
  %bake.type = alloca %"adt$main.ir.IRType.37"*
  %bake.loc = alloca %"adt$main.ast.SrcLoc.24"*
  %bake.compiler = alloca %"adt$main.ir_compiler.IRCompiler"*
  store %"adt$main.ir.IRType.37"* %type, %"adt$main.ir.IRType.37"** %bake.type
  store %"adt$main.ast.SrcLoc.24"* %loc, %"adt$main.ast.SrcLoc.24"** %bake.loc
  store %"adt$main.ir_compiler.IRCompiler"* %compiler, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  br label %50

; <label>:0:                                      ; preds = %50
  %1 = load %"adt$main.ir_compiler.IRCompiler"*, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  %2 = load %"adt$main.ast.SrcLoc.24"*, %"adt$main.ast.SrcLoc.24"** %bake.loc
  call void @"fn$main.ir_compiler.IRCompilerError"(%"adt$main.ir_compiler.IRCompiler"* %1, %"adt$main.ast.SrcLoc.24"* %2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @10, i32 0, i32 0))
  unreachable

; <label>:3:                                      ; preds = %50
  %4 = bitcast %"adt$main.ir.IRType.37"* %51 to %"adtc$main.ir.IRType.ArraySized.45"*
  %5 = getelementptr inbounds %"adtc$main.ir.IRType.ArraySized.45", %"adtc$main.ir.IRType.ArraySized.45"* %4, i32 0, i32 1
  %6 = load %"adt$main.ir.IRType.37"*, %"adt$main.ir.IRType.37"** %5
  %7 = bitcast %"adt$main.ir.IRType.37"* %51 to %"adtc$main.ir.IRType.ArraySized.45"*
  %8 = getelementptr inbounds %"adtc$main.ir.IRType.ArraySized.45", %"adtc$main.ir.IRType.ArraySized.45"* %7, i32 0, i32 2
  %9 = load %"adt$main.ir.IRExprNode.36"*, %"adt$main.ir.IRExprNode.36"** %8
  %10 = load %"adt$main.ir_compiler.IRCompiler"*, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  call void @"fn$main.ir_compiler.IRCompileExprNode"(%"adt$main.ir_compiler.IRCompiler"* %10, %"adt$main.ir.IRExprNode.36"* %9)
  %11 = load %"adt$main.ir_compiler.IRCompiler"*, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  %12 = load %"adt$main.ast.SrcLoc.24"*, %"adt$main.ast.SrcLoc.24"** %bake.loc
  %13 = call %"adt$main.ir.IRType.37"* @"fn$main.ir_compiler.IRCompileType"(%"adt$main.ir_compiler.IRCompiler"* %11, %"adt$main.ast.SrcLoc.24"* %12, %"adt$main.ir.IRType.37"* %6)
  %14 = call %"adt$main.ir.IRType.37"* @"adtcfn$adtc$main.ir.IRType.ArraySized"(%"adt$main.ir.IRType.37"* %13, %"adt$main.ir.IRExprNode.36"* %9)
  ret %"adt$main.ir.IRType.37"* %14

; <label>:15:                                     ; preds = %50
  %16 = bitcast %"adt$main.ir.IRType.37"* %51 to %"adtc$main.ir.IRType.ArrayUnsized.44"*
  %17 = getelementptr inbounds %"adtc$main.ir.IRType.ArrayUnsized.44", %"adtc$main.ir.IRType.ArrayUnsized.44"* %16, i32 0, i32 1
  %18 = load %"adt$main.ir.IRType.37"*, %"adt$main.ir.IRType.37"** %17
  %19 = load %"adt$main.ir_compiler.IRCompiler"*, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  %20 = load %"adt$main.ast.SrcLoc.24"*, %"adt$main.ast.SrcLoc.24"** %bake.loc
  %21 = call %"adt$main.ir.IRType.37"* @"fn$main.ir_compiler.IRCompileType"(%"adt$main.ir_compiler.IRCompiler"* %19, %"adt$main.ast.SrcLoc.24"* %20, %"adt$main.ir.IRType.37"* %18)
  %22 = call %"adt$main.ir.IRType.37"* @"adtcfn$adtc$main.ir.IRType.ArrayUnsized"(%"adt$main.ir.IRType.37"* %21)
  ret %"adt$main.ir.IRType.37"* %22

; <label>:23:                                     ; preds = %34
  %24 = load %"adt$main.ir_compiler.IRCompiler"*, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  %25 = getelementptr inbounds %"adt$main.ir.IRTypeReference.39", %"adt$main.ir.IRTypeReference.39"* %37, i32 0, i32 2
  %26 = load %"adt$main.ast.SrcLoc.24"*, %"adt$main.ast.SrcLoc.24"** %25
  call void @"fn$main.ir_compiler.IRCompilerError"(%"adt$main.ir_compiler.IRCompiler"* %24, %"adt$main.ast.SrcLoc.24"* %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @9, i32 0, i32 0))
  unreachable

; <label>:27:                                     ; preds = %34
  %28 = bitcast %"adt$main.ir.IRSymbol.34"* %44 to %"adtc$main.ir.IRSymbol.ADT.40"*
  %29 = getelementptr inbounds %"adtc$main.ir.IRSymbol.ADT.40", %"adtc$main.ir.IRSymbol.ADT.40"* %28, i32 0, i32 4
  %30 = load %"adt$main.ir.IRADTDecl.41"*, %"adt$main.ir.IRADTDecl.41"** %29
  %31 = getelementptr inbounds %"adt$main.ir.IRADTDecl.41", %"adt$main.ir.IRADTDecl.41"* %30, i32 0, i32 4
  %32 = load %"adt$main.ir.IRType.37"*, %"adt$main.ir.IRType.37"** %31
  ret %"adt$main.ir.IRType.37"* %32
                                                  ; No predecessors!
  br label %49

; <label>:34:                                     ; preds = %50
  %35 = bitcast %"adt$main.ir.IRType.37"* %51 to %"adtc$main.ir.IRType.Ref.38"*
  %36 = getelementptr inbounds %"adtc$main.ir.IRType.Ref.38", %"adtc$main.ir.IRType.Ref.38"* %35, i32 0, i32 1
  %37 = load %"adt$main.ir.IRTypeReference.39"*, %"adt$main.ir.IRTypeReference.39"** %36
  %38 = load %"adt$main.ir_compiler.IRCompiler"*, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  %39 = getelementptr inbounds %"adt$main.ir.IRTypeReference.39", %"adt$main.ir.IRTypeReference.39"* %37, i32 0, i32 2
  %40 = load %"adt$main.ast.SrcLoc.24"*, %"adt$main.ast.SrcLoc.24"** %39
  %41 = getelementptr inbounds %"adt$main.ir.IRTypeReference.39", %"adt$main.ir.IRTypeReference.39"* %37, i32 0, i32 1
  %42 = load i8*, i8** %41
  %43 = call %"adt$main.ir.IRSymbol.34"* @"fn$main.ir_compiler.IRResolveGlobalSymbol"(%"adt$main.ir_compiler.IRCompiler"* %38, %"adt$main.ast.SrcLoc.24"* %40, i8* %42)
  store %"adt$main.ir.IRSymbol.34"* %43, %"adt$main.ir.IRSymbol.34"** %symbol
  %44 = load %"adt$main.ir.IRSymbol.34"*, %"adt$main.ir.IRSymbol.34"** %symbol
  %45 = getelementptr inbounds %"adt$main.ir.IRSymbol.34", %"adt$main.ir.IRSymbol.34"* %44, i32 0, i32 0
  %46 = load i32, i32* %45
  switch i32 %46, label %23 [
    i32 2, label %27
  ]

; <label>:47:                                     ; preds = %50
  %48 = load %"adt$main.ir.IRType.37"*, %"adt$main.ir.IRType.37"** %bake.type
  ret %"adt$main.ir.IRType.37"* %48

; <label>:49:                                     ; preds = %33
  unreachable

; <label>:50:                                     ; preds = %entry
  %51 = load %"adt$main.ir.IRType.37"*, %"adt$main.ir.IRType.37"** %bake.type
  %52 = getelementptr inbounds %"adt$main.ir.IRType.37", %"adt$main.ir.IRType.37"* %51, i32 0, i32 0
  %53 = load i32, i32* %52
  switch i32 %53, label %0 [
    i32 5, label %3
    i32 4, label %15
    i32 0, label %34
    i32 1, label %47
  ]
}

declare %"adt$main.ir.IRType.37"* @"adtcfn$adtc$main.ir.IRType.ArrayUnsized"(%"adt$main.ir.IRType.37"*)

declare %"adt$main.ir.IRType.37"* @"adtcfn$adtc$main.ir.IRType.ArraySized"(%"adt$main.ir.IRType.37"*, %"adt$main.ir.IRExprNode.36"*)

define void @"fn$main.ir_compiler.IRCompileTypeNode"(%"adt$main.ir_compiler.IRCompiler"* %compiler, %"adt$main.ir.IRTypeNode.46"* %type) {
entry:
  %bake.type = alloca %"adt$main.ir.IRTypeNode.46"*
  %bake.compiler = alloca %"adt$main.ir_compiler.IRCompiler"*
  store %"adt$main.ir.IRTypeNode.46"* %type, %"adt$main.ir.IRTypeNode.46"** %bake.type
  store %"adt$main.ir_compiler.IRCompiler"* %compiler, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  br label %15

; <label>:0:                                      ; preds = %13
  %1 = load %"adt$main.ir.IRTypeNode.46"*, %"adt$main.ir.IRTypeNode.46"** %bake.type
  %2 = getelementptr inbounds %"adt$main.ir.IRTypeNode.46", %"adt$main.ir.IRTypeNode.46"* %1, i32 0, i32 1
  store i1 true, i1* %2
  %3 = load %"adt$main.ir.IRTypeNode.46"*, %"adt$main.ir.IRTypeNode.46"** %bake.type
  %4 = load %"adt$main.ir_compiler.IRCompiler"*, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  %5 = load %"adt$main.ir.IRTypeNode.46"*, %"adt$main.ir.IRTypeNode.46"** %bake.type
  %6 = getelementptr inbounds %"adt$main.ir.IRTypeNode.46", %"adt$main.ir.IRTypeNode.46"* %5, i32 0, i32 2
  %7 = load %"adt$main.ast.SrcLoc.24"*, %"adt$main.ast.SrcLoc.24"** %6
  %8 = load %"adt$main.ir.IRTypeNode.46"*, %"adt$main.ir.IRTypeNode.46"** %bake.type
  %9 = getelementptr inbounds %"adt$main.ir.IRTypeNode.46", %"adt$main.ir.IRTypeNode.46"* %8, i32 0, i32 3
  %10 = load %"adt$main.ir.IRType.37"*, %"adt$main.ir.IRType.37"** %9
  %11 = call %"adt$main.ir.IRType.37"* @"fn$main.ir_compiler.IRCompileType"(%"adt$main.ir_compiler.IRCompiler"* %4, %"adt$main.ast.SrcLoc.24"* %7, %"adt$main.ir.IRType.37"* %10)
  %12 = getelementptr inbounds %"adt$main.ir.IRTypeNode.46", %"adt$main.ir.IRTypeNode.46"* %3, i32 0, i32 3
  store %"adt$main.ir.IRType.37"* %11, %"adt$main.ir.IRType.37"** %12
  ret void

; <label>:13:                                     ; preds = %15
  br label %0

; <label>:14:                                     ; preds = %15
  ret void

; <label>:15:                                     ; preds = %entry
  %16 = load %"adt$main.ir.IRTypeNode.46"*, %"adt$main.ir.IRTypeNode.46"** %bake.type
  %17 = getelementptr inbounds %"adt$main.ir.IRTypeNode.46", %"adt$main.ir.IRTypeNode.46"* %16, i32 0, i32 1
  %18 = load i1, i1* %17
  br i1 %18, label %14, label %13
}

define void @"fn$main.ir_compiler.IRCompileADTFields"(%"adt$main.ir_compiler.IRCompiler"* %compiler, %"adt$main.ir.IRADTFieldList.43"* %fields) {
entry:
  %bake.fields = alloca %"adt$main.ir.IRADTFieldList.43"*
  %bake.compiler = alloca %"adt$main.ir_compiler.IRCompiler"*
  store %"adt$main.ir.IRADTFieldList.43"* %fields, %"adt$main.ir.IRADTFieldList.43"** %bake.fields
  store %"adt$main.ir_compiler.IRCompiler"* %compiler, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  br label %18

; <label>:0:                                      ; preds = %13
  %1 = bitcast %"adt$main.ir.IRADTFieldList.43"* %14 to %"adtc$main.ir.IRADTFieldList.Cons.47"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRADTFieldList.Cons.47", %"adtc$main.ir.IRADTFieldList.Cons.47"* %1, i32 0, i32 1
  %3 = load %"adt$main.ir.IRADTField.48"*, %"adt$main.ir.IRADTField.48"** %2
  %4 = bitcast %"adt$main.ir.IRADTFieldList.43"* %14 to %"adtc$main.ir.IRADTFieldList.Cons.47"*
  %5 = getelementptr inbounds %"adtc$main.ir.IRADTFieldList.Cons.47", %"adtc$main.ir.IRADTFieldList.Cons.47"* %4, i32 0, i32 2
  %6 = load %"adt$main.ir.IRADTFieldList.43"*, %"adt$main.ir.IRADTFieldList.43"** %5
  store %"adt$main.ir.IRADTFieldList.43"* %6, %"adt$main.ir.IRADTFieldList.43"** %bake.fields
  %7 = load %"adt$main.ir_compiler.IRCompiler"*, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  %8 = getelementptr inbounds %"adt$main.ir.IRADTField.48", %"adt$main.ir.IRADTField.48"* %3, i32 0, i32 4
  %9 = load %"adt$main.ir.IRTypeNode.46"*, %"adt$main.ir.IRTypeNode.46"** %8
  call void @"fn$main.ir_compiler.IRCompileTypeNode"(%"adt$main.ir_compiler.IRCompiler"* %7, %"adt$main.ir.IRTypeNode.46"* %9)
  br label %11

; <label>:10:                                     ; preds = %13
  ret void

; <label>:11:                                     ; preds = %0, %13
  br label %17
                                                  ; No predecessors!
  unreachable

; <label>:13:                                     ; preds = %17
  %14 = load %"adt$main.ir.IRADTFieldList.43"*, %"adt$main.ir.IRADTFieldList.43"** %bake.fields
  %15 = getelementptr inbounds %"adt$main.ir.IRADTFieldList.43", %"adt$main.ir.IRADTFieldList.43"* %14, i32 0, i32 0
  %16 = load i32, i32* %15
  switch i32 %16, label %11 [
    i32 1, label %0
    i32 0, label %10
  ]

; <label>:17:                                     ; preds = %11, %18
  br label %13

; <label>:18:                                     ; preds = %entry
  br label %17
}

define void @"fn$main.ir_compiler.IRCompileParamList"(%"adt$main.ir_compiler.IRCompiler"* %compiler, %"adt$main.ir.IRParamList.49"* %params) {
entry:
  %bake.params = alloca %"adt$main.ir.IRParamList.49"*
  %bake.compiler = alloca %"adt$main.ir_compiler.IRCompiler"*
  store %"adt$main.ir.IRParamList.49"* %params, %"adt$main.ir.IRParamList.49"** %bake.params
  store %"adt$main.ir_compiler.IRCompiler"* %compiler, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  br label %18

; <label>:0:                                      ; preds = %13
  %1 = bitcast %"adt$main.ir.IRParamList.49"* %14 to %"adtc$main.ir.IRParamList.Cons.50"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRParamList.Cons.50", %"adtc$main.ir.IRParamList.Cons.50"* %1, i32 0, i32 1
  %3 = load %"adt$main.ir.IRParam.51"*, %"adt$main.ir.IRParam.51"** %2
  %4 = bitcast %"adt$main.ir.IRParamList.49"* %14 to %"adtc$main.ir.IRParamList.Cons.50"*
  %5 = getelementptr inbounds %"adtc$main.ir.IRParamList.Cons.50", %"adtc$main.ir.IRParamList.Cons.50"* %4, i32 0, i32 2
  %6 = load %"adt$main.ir.IRParamList.49"*, %"adt$main.ir.IRParamList.49"** %5
  store %"adt$main.ir.IRParamList.49"* %6, %"adt$main.ir.IRParamList.49"** %bake.params
  %7 = load %"adt$main.ir_compiler.IRCompiler"*, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  %8 = getelementptr inbounds %"adt$main.ir.IRParam.51", %"adt$main.ir.IRParam.51"* %3, i32 0, i32 3
  %9 = load %"adt$main.ir.IRTypeNode.46"*, %"adt$main.ir.IRTypeNode.46"** %8
  call void @"fn$main.ir_compiler.IRCompileTypeNode"(%"adt$main.ir_compiler.IRCompiler"* %7, %"adt$main.ir.IRTypeNode.46"* %9)
  br label %11

; <label>:10:                                     ; preds = %13
  ret void

; <label>:11:                                     ; preds = %0, %13
  br label %17
                                                  ; No predecessors!
  unreachable

; <label>:13:                                     ; preds = %17
  %14 = load %"adt$main.ir.IRParamList.49"*, %"adt$main.ir.IRParamList.49"** %bake.params
  %15 = getelementptr inbounds %"adt$main.ir.IRParamList.49", %"adt$main.ir.IRParamList.49"* %14, i32 0, i32 0
  %16 = load i32, i32* %15
  switch i32 %16, label %11 [
    i32 1, label %0
    i32 0, label %10
  ]

; <label>:17:                                     ; preds = %11, %18
  br label %13

; <label>:18:                                     ; preds = %entry
  br label %17
}

define void @"fn$main.ir_compiler.IRCompileADTConstructors"(%"adt$main.ir_compiler.IRCompiler"* %compiler, %"adt$main.ir.IRADTConsList.42"* %cons) {
entry:
  %bake.cons = alloca %"adt$main.ir.IRADTConsList.42"*
  %bake.compiler = alloca %"adt$main.ir_compiler.IRCompiler"*
  store %"adt$main.ir.IRADTConsList.42"* %cons, %"adt$main.ir.IRADTConsList.42"** %bake.cons
  store %"adt$main.ir_compiler.IRCompiler"* %compiler, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  br label %28

; <label>:0:                                      ; preds = %23
  %1 = bitcast %"adt$main.ir.IRADTConsList.42"* %24 to %"adtc$main.ir.IRADTConsList.Cons.52"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRADTConsList.Cons.52", %"adtc$main.ir.IRADTConsList.Cons.52"* %1, i32 0, i32 1
  %3 = load %"adt$main.ir.IRADTCons.53"*, %"adt$main.ir.IRADTCons.53"** %2
  %4 = bitcast %"adt$main.ir.IRADTConsList.42"* %24 to %"adtc$main.ir.IRADTConsList.Cons.52"*
  %5 = getelementptr inbounds %"adtc$main.ir.IRADTConsList.Cons.52", %"adtc$main.ir.IRADTConsList.Cons.52"* %4, i32 0, i32 2
  %6 = load %"adt$main.ir.IRADTConsList.42"*, %"adt$main.ir.IRADTConsList.42"** %5
  store %"adt$main.ir.IRADTConsList.42"* %6, %"adt$main.ir.IRADTConsList.42"** %bake.cons
  %7 = load %"adt$main.ir_compiler.IRCompiler"*, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  %8 = getelementptr inbounds %"adt$main.ir.IRADTCons.53", %"adt$main.ir.IRADTCons.53"* %3, i32 0, i32 5
  %9 = load %"adt$main.ir.IRParamList.49"*, %"adt$main.ir.IRParamList.49"** %8
  call void @"fn$main.ir_compiler.IRCompileParamList"(%"adt$main.ir_compiler.IRCompiler"* %7, %"adt$main.ir.IRParamList.49"* %9)
  %10 = getelementptr inbounds %"adt$main.ir.IRADTCons.53", %"adt$main.ir.IRADTCons.53"* %3, i32 0, i32 1
  %11 = load %"adt$main.ir.IRADTDecl.41"*, %"adt$main.ir.IRADTDecl.41"** %10
  %12 = getelementptr inbounds %"adt$main.ir.IRADTDecl.41", %"adt$main.ir.IRADTDecl.41"* %11, i32 0, i32 4
  %13 = load %"adt$main.ir.IRType.37"*, %"adt$main.ir.IRType.37"** %12
  %14 = load %"adt$main.ir_compiler.IRCompiler"*, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  %15 = getelementptr inbounds %"adt$main.ir.IRADTCons.53", %"adt$main.ir.IRADTCons.53"* %3, i32 0, i32 5
  %16 = load %"adt$main.ir.IRParamList.49"*, %"adt$main.ir.IRParamList.49"** %15
  %17 = call %"adt$main.ir.IRTypeList"* @"fn$main.ir_compiler.IRCompileParamListToTypeList"(%"adt$main.ir_compiler.IRCompiler"* %14, %"adt$main.ir.IRParamList.49"* %16)
  %18 = call %"adt$main.ir.IRType.37"* @"adtcfn$adtc$main.ir.IRType.Function"(%"adt$main.ir.IRType.37"* %13, %"adt$main.ir.IRTypeList"* %17)
  %19 = getelementptr inbounds %"adt$main.ir.IRADTCons.53", %"adt$main.ir.IRADTCons.53"* %3, i32 0, i32 6
  store %"adt$main.ir.IRType.37"* %18, %"adt$main.ir.IRType.37"** %19
  br label %21

; <label>:20:                                     ; preds = %23
  ret void

; <label>:21:                                     ; preds = %0, %23
  br label %27
                                                  ; No predecessors!
  unreachable

; <label>:23:                                     ; preds = %27
  %24 = load %"adt$main.ir.IRADTConsList.42"*, %"adt$main.ir.IRADTConsList.42"** %bake.cons
  %25 = getelementptr inbounds %"adt$main.ir.IRADTConsList.42", %"adt$main.ir.IRADTConsList.42"* %24, i32 0, i32 0
  %26 = load i32, i32* %25
  switch i32 %26, label %21 [
    i32 1, label %0
    i32 0, label %20
  ]

; <label>:27:                                     ; preds = %21, %28
  br label %23

; <label>:28:                                     ; preds = %entry
  br label %27
}

define %"adt$main.ir.IRTypeList"* @"fn$main.ir_compiler.IRCompileParamListToTypeList"(%"adt$main.ir_compiler.IRCompiler"* %compiler, %"adt$main.ir.IRParamList.49"* %params) {
entry:
  %bake.params = alloca %"adt$main.ir.IRParamList.49"*
  %bake.compiler = alloca %"adt$main.ir_compiler.IRCompiler"*
  store %"adt$main.ir.IRParamList.49"* %params, %"adt$main.ir.IRParamList.49"** %bake.params
  store %"adt$main.ir_compiler.IRCompiler"* %compiler, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  br label %17

; <label>:0:                                      ; preds = %17
  %1 = bitcast %"adt$main.ir.IRParamList.49"* %18 to %"adtc$main.ir.IRParamList.Cons.50"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRParamList.Cons.50", %"adtc$main.ir.IRParamList.Cons.50"* %1, i32 0, i32 1
  %3 = load %"adt$main.ir.IRParam.51"*, %"adt$main.ir.IRParam.51"** %2
  %4 = bitcast %"adt$main.ir.IRParamList.49"* %18 to %"adtc$main.ir.IRParamList.Cons.50"*
  %5 = getelementptr inbounds %"adtc$main.ir.IRParamList.Cons.50", %"adtc$main.ir.IRParamList.Cons.50"* %4, i32 0, i32 2
  %6 = load %"adt$main.ir.IRParamList.49"*, %"adt$main.ir.IRParamList.49"** %5
  %7 = getelementptr inbounds %"adt$main.ir.IRParam.51", %"adt$main.ir.IRParam.51"* %3, i32 0, i32 3
  %8 = load %"adt$main.ir.IRTypeNode.46"*, %"adt$main.ir.IRTypeNode.46"** %7
  %9 = getelementptr inbounds %"adt$main.ir.IRTypeNode.46", %"adt$main.ir.IRTypeNode.46"* %8, i32 0, i32 3
  %10 = load %"adt$main.ir.IRType.37"*, %"adt$main.ir.IRType.37"** %9
  %11 = load %"adt$main.ir_compiler.IRCompiler"*, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  %12 = call %"adt$main.ir.IRTypeList"* @"fn$main.ir_compiler.IRCompileParamListToTypeList"(%"adt$main.ir_compiler.IRCompiler"* %11, %"adt$main.ir.IRParamList.49"* %6)
  %13 = call %"adt$main.ir.IRTypeList"* @"adtcfn$adtc$main.ir.IRTypeList.Cons"(%"adt$main.ir.IRType.37"* %10, %"adt$main.ir.IRTypeList"* %12)
  ret %"adt$main.ir.IRTypeList"* %13

; <label>:14:                                     ; preds = %17
  %15 = call %"adt$main.ir.IRTypeList"* @"adtcfn$adtc$main.ir.IRTypeList.Nil"()
  ret %"adt$main.ir.IRTypeList"* %15

; <label>:16:                                     ; preds = %17
  unreachable

; <label>:17:                                     ; preds = %entry
  %18 = load %"adt$main.ir.IRParamList.49"*, %"adt$main.ir.IRParamList.49"** %bake.params
  %19 = getelementptr inbounds %"adt$main.ir.IRParamList.49", %"adt$main.ir.IRParamList.49"* %18, i32 0, i32 0
  %20 = load i32, i32* %19
  switch i32 %20, label %16 [
    i32 1, label %0
    i32 0, label %14
  ]
}

declare %"adt$main.ir.IRType.37"* @"adtcfn$adtc$main.ir.IRType.Function"(%"adt$main.ir.IRType.37"*, %"adt$main.ir.IRTypeList"*)

declare %"adt$main.ir.IRTypeList"* @"adtcfn$adtc$main.ir.IRTypeList.Nil"()

declare %"adt$main.ir.IRTypeList"* @"adtcfn$adtc$main.ir.IRTypeList.Cons"(%"adt$main.ir.IRType.37"*, %"adt$main.ir.IRTypeList"*)

define void @"fn$main.ir_compiler.IRCompileFunction"(%"adt$main.ir_compiler.IRCompiler"* %compiler, %"adt$main.ir.IRFunctionDecl.54"* %fun) {
entry:
  %bake.fun = alloca %"adt$main.ir.IRFunctionDecl.54"*
  %bake.compiler = alloca %"adt$main.ir_compiler.IRCompiler"*
  store %"adt$main.ir.IRFunctionDecl.54"* %fun, %"adt$main.ir.IRFunctionDecl.54"** %bake.fun
  store %"adt$main.ir_compiler.IRCompiler"* %compiler, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  br label %0

; <label>:0:                                      ; preds = %entry
  %1 = load %"adt$main.ir_compiler.IRCompiler"*, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  %2 = load %"adt$main.ir.IRFunctionDecl.54"*, %"adt$main.ir.IRFunctionDecl.54"** %bake.fun
  %3 = getelementptr inbounds %"adt$main.ir.IRFunctionDecl.54", %"adt$main.ir.IRFunctionDecl.54"* %2, i32 0, i32 2
  %4 = load %"adt$main.ir.IRParamList.49"*, %"adt$main.ir.IRParamList.49"** %3
  call void @"fn$main.ir_compiler.IRCompileParamList"(%"adt$main.ir_compiler.IRCompiler"* %1, %"adt$main.ir.IRParamList.49"* %4)
  %5 = load %"adt$main.ir_compiler.IRCompiler"*, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  %6 = load %"adt$main.ir.IRFunctionDecl.54"*, %"adt$main.ir.IRFunctionDecl.54"** %bake.fun
  %7 = getelementptr inbounds %"adt$main.ir.IRFunctionDecl.54", %"adt$main.ir.IRFunctionDecl.54"* %6, i32 0, i32 3
  %8 = load %"adt$main.ir.IRTypeNode.46"*, %"adt$main.ir.IRTypeNode.46"** %7
  call void @"fn$main.ir_compiler.IRCompileTypeNode"(%"adt$main.ir_compiler.IRCompiler"* %5, %"adt$main.ir.IRTypeNode.46"* %8)
  %9 = load %"adt$main.ir.IRFunctionDecl.54"*, %"adt$main.ir.IRFunctionDecl.54"** %bake.fun
  %10 = load %"adt$main.ir.IRFunctionDecl.54"*, %"adt$main.ir.IRFunctionDecl.54"** %bake.fun
  %11 = getelementptr inbounds %"adt$main.ir.IRFunctionDecl.54", %"adt$main.ir.IRFunctionDecl.54"* %10, i32 0, i32 3
  %12 = load %"adt$main.ir.IRTypeNode.46"*, %"adt$main.ir.IRTypeNode.46"** %11
  %13 = getelementptr inbounds %"adt$main.ir.IRTypeNode.46", %"adt$main.ir.IRTypeNode.46"* %12, i32 0, i32 3
  %14 = load %"adt$main.ir.IRType.37"*, %"adt$main.ir.IRType.37"** %13
  %15 = load %"adt$main.ir_compiler.IRCompiler"*, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  %16 = load %"adt$main.ir.IRFunctionDecl.54"*, %"adt$main.ir.IRFunctionDecl.54"** %bake.fun
  %17 = getelementptr inbounds %"adt$main.ir.IRFunctionDecl.54", %"adt$main.ir.IRFunctionDecl.54"* %16, i32 0, i32 2
  %18 = load %"adt$main.ir.IRParamList.49"*, %"adt$main.ir.IRParamList.49"** %17
  %19 = call %"adt$main.ir.IRTypeList"* @"fn$main.ir_compiler.IRCompileParamListToTypeList"(%"adt$main.ir_compiler.IRCompiler"* %15, %"adt$main.ir.IRParamList.49"* %18)
  %20 = call %"adt$main.ir.IRType.37"* @"adtcfn$adtc$main.ir.IRType.Function"(%"adt$main.ir.IRType.37"* %14, %"adt$main.ir.IRTypeList"* %19)
  %21 = getelementptr inbounds %"adt$main.ir.IRFunctionDecl.54", %"adt$main.ir.IRFunctionDecl.54"* %9, i32 0, i32 4
  store %"adt$main.ir.IRType.37"* %20, %"adt$main.ir.IRType.37"** %21
  ret void
}

define void @"fn$main.ir_compiler.IRCompileADT"(%"adt$main.ir_compiler.IRCompiler"* %compiler, %"adt$main.ir.IRADTDecl.41"* %adt_) {
entry:
  %bake.adt_ = alloca %"adt$main.ir.IRADTDecl.41"*
  %bake.compiler = alloca %"adt$main.ir_compiler.IRCompiler"*
  store %"adt$main.ir.IRADTDecl.41"* %adt_, %"adt$main.ir.IRADTDecl.41"** %bake.adt_
  store %"adt$main.ir_compiler.IRCompiler"* %compiler, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  br label %0

; <label>:0:                                      ; preds = %entry
  %1 = load %"adt$main.ir_compiler.IRCompiler"*, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  %2 = load %"adt$main.ir.IRADTDecl.41"*, %"adt$main.ir.IRADTDecl.41"** %bake.adt_
  %3 = getelementptr inbounds %"adt$main.ir.IRADTDecl.41", %"adt$main.ir.IRADTDecl.41"* %2, i32 0, i32 2
  %4 = load %"adt$main.ir.IRADTFieldList.43"*, %"adt$main.ir.IRADTFieldList.43"** %3
  call void @"fn$main.ir_compiler.IRCompileADTFields"(%"adt$main.ir_compiler.IRCompiler"* %1, %"adt$main.ir.IRADTFieldList.43"* %4)
  %5 = load %"adt$main.ir_compiler.IRCompiler"*, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  %6 = load %"adt$main.ir.IRADTDecl.41"*, %"adt$main.ir.IRADTDecl.41"** %bake.adt_
  %7 = getelementptr inbounds %"adt$main.ir.IRADTDecl.41", %"adt$main.ir.IRADTDecl.41"* %6, i32 0, i32 1
  %8 = load %"adt$main.ir.IRADTConsList.42"*, %"adt$main.ir.IRADTConsList.42"** %7
  call void @"fn$main.ir_compiler.IRCompileADTConstructors"(%"adt$main.ir_compiler.IRCompiler"* %5, %"adt$main.ir.IRADTConsList.42"* %8)
  ret void
}

define void @"fn$main.ir_compiler.IRCompileSymbol"(%"adt$main.ir_compiler.IRCompiler"* %compiler, %"adt$main.ir.IRSymbol.34"* %symbol) {
entry:
  %bake.symbol = alloca %"adt$main.ir.IRSymbol.34"*
  %bake.compiler = alloca %"adt$main.ir_compiler.IRCompiler"*
  store %"adt$main.ir.IRSymbol.34"* %symbol, %"adt$main.ir.IRSymbol.34"** %bake.symbol
  store %"adt$main.ir_compiler.IRCompiler"* %compiler, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  br label %21

; <label>:0:                                      ; preds = %21
  %1 = bitcast %"adt$main.ir.IRSymbol.34"* %22 to %"adtc$main.ir.IRSymbol.Function.58"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRSymbol.Function.58", %"adtc$main.ir.IRSymbol.Function.58"* %1, i32 0, i32 4
  %3 = load %"adt$main.ir.IRFunctionDecl.54"*, %"adt$main.ir.IRFunctionDecl.54"** %2
  %4 = load %"adt$main.ir_compiler.IRCompiler"*, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  call void @"fn$main.ir_compiler.IRCompileFunction"(%"adt$main.ir_compiler.IRCompiler"* %4, %"adt$main.ir.IRFunctionDecl.54"* %3)
  br label %20

; <label>:5:                                      ; preds = %21
  %6 = bitcast %"adt$main.ir.IRSymbol.34"* %22 to %"adtc$main.ir.IRSymbol.ADT.40"*
  %7 = getelementptr inbounds %"adtc$main.ir.IRSymbol.ADT.40", %"adtc$main.ir.IRSymbol.ADT.40"* %6, i32 0, i32 4
  %8 = load %"adt$main.ir.IRADTDecl.41"*, %"adt$main.ir.IRADTDecl.41"** %7
  %9 = load %"adt$main.ir_compiler.IRCompiler"*, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  call void @"fn$main.ir_compiler.IRCompileADT"(%"adt$main.ir_compiler.IRCompiler"* %9, %"adt$main.ir.IRADTDecl.41"* %8)
  br label %20

; <label>:10:                                     ; preds = %21
  %11 = bitcast %"adt$main.ir.IRSymbol.34"* %22 to %"adtc$main.ir.IRSymbol.Global.56"*
  %12 = getelementptr inbounds %"adtc$main.ir.IRSymbol.Global.56", %"adtc$main.ir.IRSymbol.Global.56"* %11, i32 0, i32 4
  %13 = load %"adt$main.ir.IRGlobalDecl.57"*, %"adt$main.ir.IRGlobalDecl.57"** %12
  %14 = load %"adt$main.ir_compiler.IRCompiler"*, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  %15 = getelementptr inbounds %"adt$main.ir.IRGlobalDecl.57", %"adt$main.ir.IRGlobalDecl.57"* %13, i32 0, i32 2
  %16 = load %"adt$main.ir.IRTypeNode.46"*, %"adt$main.ir.IRTypeNode.46"** %15
  call void @"fn$main.ir_compiler.IRCompileTypeNode"(%"adt$main.ir_compiler.IRCompiler"* %14, %"adt$main.ir.IRTypeNode.46"* %16)
  %17 = load %"adt$main.ir_compiler.IRCompiler"*, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  %18 = getelementptr inbounds %"adt$main.ir.IRGlobalDecl.57", %"adt$main.ir.IRGlobalDecl.57"* %13, i32 0, i32 3
  %19 = load %"adt$main.ir.IRExprNode.36"*, %"adt$main.ir.IRExprNode.36"** %18
  call void @"fn$main.ir_compiler.IRCompileExprNode"(%"adt$main.ir_compiler.IRCompiler"* %17, %"adt$main.ir.IRExprNode.36"* %19)
  br label %20

; <label>:20:                                     ; preds = %0, %5, %10, %21
  ret void

; <label>:21:                                     ; preds = %entry
  %22 = load %"adt$main.ir.IRSymbol.34"*, %"adt$main.ir.IRSymbol.34"** %bake.symbol
  %23 = getelementptr inbounds %"adt$main.ir.IRSymbol.34", %"adt$main.ir.IRSymbol.34"* %22, i32 0, i32 0
  %24 = load i32, i32* %23
  switch i32 %24, label %20 [
    i32 0, label %0
    i32 2, label %5
    i32 1, label %10
  ]
}

define void @"fn$main.ir_compiler.IRCompileSymbols"(%"adt$main.ir_compiler.IRCompiler"* %compiler, %"adt$main.ir.IRSymbolList.32"* %symbols) {
entry:
  %bake.symbols = alloca %"adt$main.ir.IRSymbolList.32"*
  %bake.compiler = alloca %"adt$main.ir_compiler.IRCompiler"*
  store %"adt$main.ir.IRSymbolList.32"* %symbols, %"adt$main.ir.IRSymbolList.32"** %bake.symbols
  store %"adt$main.ir_compiler.IRCompiler"* %compiler, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  br label %16

; <label>:0:                                      ; preds = %11
  %1 = bitcast %"adt$main.ir.IRSymbolList.32"* %12 to %"adtc$main.ir.IRSymbolList.Cons.33"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRSymbolList.Cons.33", %"adtc$main.ir.IRSymbolList.Cons.33"* %1, i32 0, i32 1
  %3 = load %"adt$main.ir.IRSymbol.34"*, %"adt$main.ir.IRSymbol.34"** %2
  %4 = bitcast %"adt$main.ir.IRSymbolList.32"* %12 to %"adtc$main.ir.IRSymbolList.Cons.33"*
  %5 = getelementptr inbounds %"adtc$main.ir.IRSymbolList.Cons.33", %"adtc$main.ir.IRSymbolList.Cons.33"* %4, i32 0, i32 2
  %6 = load %"adt$main.ir.IRSymbolList.32"*, %"adt$main.ir.IRSymbolList.32"** %5
  %7 = load %"adt$main.ir_compiler.IRCompiler"*, %"adt$main.ir_compiler.IRCompiler"** %bake.compiler
  call void @"fn$main.ir_compiler.IRCompileSymbol"(%"adt$main.ir_compiler.IRCompiler"* %7, %"adt$main.ir.IRSymbol.34"* %3)
  store %"adt$main.ir.IRSymbolList.32"* %6, %"adt$main.ir.IRSymbolList.32"** %bake.symbols
  br label %9

; <label>:8:                                      ; preds = %11
  ret void

; <label>:9:                                      ; preds = %0, %11
  br label %15
                                                  ; No predecessors!
  unreachable

; <label>:11:                                     ; preds = %15
  %12 = load %"adt$main.ir.IRSymbolList.32"*, %"adt$main.ir.IRSymbolList.32"** %bake.symbols
  %13 = getelementptr inbounds %"adt$main.ir.IRSymbolList.32", %"adt$main.ir.IRSymbolList.32"* %12, i32 0, i32 0
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

define void @"fn$main.ir_compiler.IRCompileFile"(%"adt$main.compiler.CompilerContext.22"* %context, %"adt$main.ir.IRSourceFile.23"* %file) {
entry:
  %compiler = alloca %"adt$main.ir_compiler.IRCompiler"*
  %bake.file = alloca %"adt$main.ir.IRSourceFile.23"*
  %bake.context = alloca %"adt$main.compiler.CompilerContext.22"*
  store %"adt$main.ir.IRSourceFile.23"* %file, %"adt$main.ir.IRSourceFile.23"** %bake.file
  store %"adt$main.compiler.CompilerContext.22"* %context, %"adt$main.compiler.CompilerContext.22"** %bake.context
  br label %0

; <label>:0:                                      ; preds = %entry
  %1 = load %"adt$main.compiler.CompilerContext.22"*, %"adt$main.compiler.CompilerContext.22"** %bake.context
  %2 = load %"adt$main.ir.IRSourceFile.23"*, %"adt$main.ir.IRSourceFile.23"** %bake.file
  %3 = call %"adt$main.ir_compiler.IRCompiler"* @"fn$main.ir_compiler.IRCompilerCreate"(%"adt$main.compiler.CompilerContext.22"* %1, %"adt$main.ir.IRSourceFile.23"* %2)
  store %"adt$main.ir_compiler.IRCompiler"* %3, %"adt$main.ir_compiler.IRCompiler"** %compiler
  %4 = load %"adt$main.ir.IRSourceFile.23"*, %"adt$main.ir.IRSourceFile.23"** %bake.file
  %5 = getelementptr inbounds %"adt$main.ir.IRSourceFile.23", %"adt$main.ir.IRSourceFile.23"* %4, i32 0, i32 1
  %6 = load %"adt$main.ir.SourceFileRef.30"*, %"adt$main.ir.SourceFileRef.30"** %5
  %7 = getelementptr inbounds %"adt$main.ir.SourceFileRef.30", %"adt$main.ir.SourceFileRef.30"* %6, i32 0, i32 4
  %8 = load i8*, i8** %7
  %9 = call i8* @jf_string_concat(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @11, i32 0, i32 0), i8* %8)
  %10 = call i8* @jf_string_concat(i8* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @12, i32 0, i32 0))
  call void @"fn$main.prelude.WriteLn"(i8* %10)
  %11 = load %"adt$main.ir_compiler.IRCompiler"*, %"adt$main.ir_compiler.IRCompiler"** %compiler
  %12 = load %"adt$main.ir.IRSourceFile.23"*, %"adt$main.ir.IRSourceFile.23"** %bake.file
  %13 = getelementptr inbounds %"adt$main.ir.IRSourceFile.23", %"adt$main.ir.IRSourceFile.23"* %12, i32 0, i32 3
  %14 = load %"adt$main.ir.IRImportList.31"*, %"adt$main.ir.IRImportList.31"** %13
  call void @"fn$main.ir_compiler.IRResolveImports"(%"adt$main.ir_compiler.IRCompiler"* %11, %"adt$main.ir.IRImportList.31"* %14)
  %15 = load %"adt$main.ir_compiler.IRCompiler"*, %"adt$main.ir_compiler.IRCompiler"** %compiler
  %16 = load %"adt$main.ir.IRSourceFile.23"*, %"adt$main.ir.IRSourceFile.23"** %bake.file
  %17 = getelementptr inbounds %"adt$main.ir.IRSourceFile.23", %"adt$main.ir.IRSourceFile.23"* %16, i32 0, i32 4
  %18 = load %"adt$main.ir.IRSymbolList.32"*, %"adt$main.ir.IRSymbolList.32"** %17
  call void @"fn$main.ir_compiler.IRCompileSymbols"(%"adt$main.ir_compiler.IRCompiler"* %15, %"adt$main.ir.IRSymbolList.32"* %18)
  %19 = load %"adt$main.ir.IRSourceFile.23"*, %"adt$main.ir.IRSourceFile.23"** %bake.file
  %20 = getelementptr inbounds %"adt$main.ir.IRSourceFile.23", %"adt$main.ir.IRSourceFile.23"* %19, i32 0, i32 1
  %21 = load %"adt$main.ir.SourceFileRef.30"*, %"adt$main.ir.SourceFileRef.30"** %20
  %22 = getelementptr inbounds %"adt$main.ir.SourceFileRef.30", %"adt$main.ir.SourceFileRef.30"* %21, i32 0, i32 4
  %23 = load i8*, i8** %22
  %24 = call i8* @jf_string_concat(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @13, i32 0, i32 0), i8* %23)
  %25 = call i8* @jf_string_concat(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @14, i32 0, i32 0))
  call void @"fn$main.prelude.WriteLn"(i8* %25)
  ret void
}

define %"adt$main.ir_compiler.IRCompiler"* @"fn$main.ir_compiler.IRCompilerCreate"(%"adt$main.compiler.CompilerContext.22"* %context, %"adt$main.ir.IRSourceFile.23"* %file) {
entry:
  %compiler = alloca %"adt$main.ir_compiler.IRCompiler"*
  %bake.file = alloca %"adt$main.ir.IRSourceFile.23"*
  %bake.context = alloca %"adt$main.compiler.CompilerContext.22"*
  store %"adt$main.ir.IRSourceFile.23"* %file, %"adt$main.ir.IRSourceFile.23"** %bake.file
  store %"adt$main.compiler.CompilerContext.22"* %context, %"adt$main.compiler.CompilerContext.22"** %bake.context
  br label %0

; <label>:0:                                      ; preds = %entry
  %1 = call %"adt$main.ir_compiler.IRCompiler"* @"adtcfn$adtc$main.ir_compiler.IRCompiler.New"()
  store %"adt$main.ir_compiler.IRCompiler"* %1, %"adt$main.ir_compiler.IRCompiler"** %compiler
  %2 = load %"adt$main.ir_compiler.IRCompiler"*, %"adt$main.ir_compiler.IRCompiler"** %compiler
  %3 = load %"adt$main.compiler.CompilerContext.22"*, %"adt$main.compiler.CompilerContext.22"** %bake.context
  %4 = getelementptr inbounds %"adt$main.ir_compiler.IRCompiler", %"adt$main.ir_compiler.IRCompiler"* %2, i32 0, i32 1
  store %"adt$main.compiler.CompilerContext.22"* %3, %"adt$main.compiler.CompilerContext.22"** %4
  %5 = load %"adt$main.ir_compiler.IRCompiler"*, %"adt$main.ir_compiler.IRCompiler"** %compiler
  %6 = load %"adt$main.ir.IRSourceFile.23"*, %"adt$main.ir.IRSourceFile.23"** %bake.file
  %7 = getelementptr inbounds %"adt$main.ir_compiler.IRCompiler", %"adt$main.ir_compiler.IRCompiler"* %5, i32 0, i32 2
  store %"adt$main.ir.IRSourceFile.23"* %6, %"adt$main.ir.IRSourceFile.23"** %7
  %8 = load %"adt$main.ir_compiler.IRCompiler"*, %"adt$main.ir_compiler.IRCompiler"** %compiler
  ret %"adt$main.ir_compiler.IRCompiler"* %8
}

define %"adt$main.ir_compiler.IRCompiler"* @"adtcfn$adtc$main.ir_compiler.IRCompiler.New"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.ir_compiler.IRCompiler.New"* getelementptr (%"adtc$main.ir_compiler.IRCompiler.New", %"adtc$main.ir_compiler.IRCompiler.New"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ir_compiler.IRCompiler.New"*
  %2 = getelementptr inbounds %"adtc$main.ir_compiler.IRCompiler.New", %"adtc$main.ir_compiler.IRCompiler.New"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.ir_compiler.IRCompiler.New"* %1 to %"adt$main.ir_compiler.IRCompiler"*
  ret %"adt$main.ir_compiler.IRCompiler"* %3
}

declare i8* @jf_allocate(i32)

define void @"fn$main.ir_compiler.IRCompileUnit"(%"adt$main.compiler.CompilerContext.22"* %context, %"adt$main.ir.IRCompilationUnit.26"* %unit_) {
entry:
  %files = alloca %"adt$main.ir.IRSourceFileList.28"*
  %bake.unit_ = alloca %"adt$main.ir.IRCompilationUnit.26"*
  %bake.context = alloca %"adt$main.compiler.CompilerContext.22"*
  store %"adt$main.ir.IRCompilationUnit.26"* %unit_, %"adt$main.ir.IRCompilationUnit.26"** %bake.unit_
  store %"adt$main.compiler.CompilerContext.22"* %context, %"adt$main.compiler.CompilerContext.22"** %bake.context
  br label %16

; <label>:0:                                      ; preds = %11
  %1 = bitcast %"adt$main.ir.IRSourceFileList.28"* %12 to %"adtc$main.ir.IRSourceFileList.Cons.35"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRSourceFileList.Cons.35", %"adtc$main.ir.IRSourceFileList.Cons.35"* %1, i32 0, i32 1
  %3 = load %"adt$main.ir.IRSourceFile.23"*, %"adt$main.ir.IRSourceFile.23"** %2
  %4 = bitcast %"adt$main.ir.IRSourceFileList.28"* %12 to %"adtc$main.ir.IRSourceFileList.Cons.35"*
  %5 = getelementptr inbounds %"adtc$main.ir.IRSourceFileList.Cons.35", %"adtc$main.ir.IRSourceFileList.Cons.35"* %4, i32 0, i32 2
  %6 = load %"adt$main.ir.IRSourceFileList.28"*, %"adt$main.ir.IRSourceFileList.28"** %5
  %7 = load %"adt$main.compiler.CompilerContext.22"*, %"adt$main.compiler.CompilerContext.22"** %bake.context
  call void @"fn$main.ir_compiler.IRCompileFile"(%"adt$main.compiler.CompilerContext.22"* %7, %"adt$main.ir.IRSourceFile.23"* %3)
  store %"adt$main.ir.IRSourceFileList.28"* %6, %"adt$main.ir.IRSourceFileList.28"** %files
  br label %9

; <label>:8:                                      ; preds = %11
  ret void

; <label>:9:                                      ; preds = %0, %11
  br label %15
                                                  ; No predecessors!
  unreachable

; <label>:11:                                     ; preds = %15
  %12 = load %"adt$main.ir.IRSourceFileList.28"*, %"adt$main.ir.IRSourceFileList.28"** %files
  %13 = getelementptr inbounds %"adt$main.ir.IRSourceFileList.28", %"adt$main.ir.IRSourceFileList.28"* %12, i32 0, i32 0
  %14 = load i32, i32* %13
  switch i32 %14, label %9 [
    i32 1, label %0
    i32 0, label %8
  ]

; <label>:15:                                     ; preds = %9, %16
  br label %11

; <label>:16:                                     ; preds = %entry
  %17 = load %"adt$main.ir.IRCompilationUnit.26"*, %"adt$main.ir.IRCompilationUnit.26"** %bake.unit_
  %18 = getelementptr inbounds %"adt$main.ir.IRCompilationUnit.26", %"adt$main.ir.IRCompilationUnit.26"* %17, i32 0, i32 2
  %19 = load %"adt$main.ir.IRSourceFileList.28"*, %"adt$main.ir.IRSourceFileList.28"** %18
  store %"adt$main.ir.IRSourceFileList.28"* %19, %"adt$main.ir.IRSourceFileList.28"** %files
  br label %15
}

define void @"fn$main.ir_compiler.IRCompileUnits"(%"adt$main.compiler.CompilerContext.22"* %context, %"adt$main.ir.IRCompilationUnitList.21"* %units) {
entry:
  %units1 = alloca %"adt$main.ir.IRCompilationUnitList.21"*
  %bake.units = alloca %"adt$main.ir.IRCompilationUnitList.21"*
  %bake.context = alloca %"adt$main.compiler.CompilerContext.22"*
  store %"adt$main.ir.IRCompilationUnitList.21"* %units, %"adt$main.ir.IRCompilationUnitList.21"** %bake.units
  store %"adt$main.compiler.CompilerContext.22"* %context, %"adt$main.compiler.CompilerContext.22"** %bake.context
  br label %16

; <label>:0:                                      ; preds = %11
  %1 = bitcast %"adt$main.ir.IRCompilationUnitList.21"* %12 to %"adtc$main.ir.IRCompilationUnitList.Cons.27"*
  %2 = getelementptr inbounds %"adtc$main.ir.IRCompilationUnitList.Cons.27", %"adtc$main.ir.IRCompilationUnitList.Cons.27"* %1, i32 0, i32 1
  %3 = load %"adt$main.ir.IRCompilationUnit.26"*, %"adt$main.ir.IRCompilationUnit.26"** %2
  %4 = bitcast %"adt$main.ir.IRCompilationUnitList.21"* %12 to %"adtc$main.ir.IRCompilationUnitList.Cons.27"*
  %5 = getelementptr inbounds %"adtc$main.ir.IRCompilationUnitList.Cons.27", %"adtc$main.ir.IRCompilationUnitList.Cons.27"* %4, i32 0, i32 2
  %6 = load %"adt$main.ir.IRCompilationUnitList.21"*, %"adt$main.ir.IRCompilationUnitList.21"** %5
  %7 = load %"adt$main.compiler.CompilerContext.22"*, %"adt$main.compiler.CompilerContext.22"** %bake.context
  call void @"fn$main.ir_compiler.IRCompileUnit"(%"adt$main.compiler.CompilerContext.22"* %7, %"adt$main.ir.IRCompilationUnit.26"* %3)
  store %"adt$main.ir.IRCompilationUnitList.21"* %6, %"adt$main.ir.IRCompilationUnitList.21"** %units1
  br label %9

; <label>:8:                                      ; preds = %11
  ret void

; <label>:9:                                      ; preds = %0, %11
  br label %15
                                                  ; No predecessors!
  unreachable

; <label>:11:                                     ; preds = %15
  %12 = load %"adt$main.ir.IRCompilationUnitList.21"*, %"adt$main.ir.IRCompilationUnitList.21"** %units1
  %13 = getelementptr inbounds %"adt$main.ir.IRCompilationUnitList.21", %"adt$main.ir.IRCompilationUnitList.21"* %12, i32 0, i32 0
  %14 = load i32, i32* %13
  switch i32 %14, label %9 [
    i32 1, label %0
    i32 0, label %8
  ]

; <label>:15:                                     ; preds = %9, %16
  br label %11

; <label>:16:                                     ; preds = %entry
  %17 = load %"adt$main.compiler.CompilerContext.22"*, %"adt$main.compiler.CompilerContext.22"** %bake.context
  %18 = getelementptr inbounds %"adt$main.compiler.CompilerContext.22", %"adt$main.compiler.CompilerContext.22"* %17, i32 0, i32 2
  %19 = load %"adt$main.ir.IRCompilationUnitList.21"*, %"adt$main.ir.IRCompilationUnitList.21"** %18
  store %"adt$main.ir.IRCompilationUnitList.21"* %19, %"adt$main.ir.IRCompilationUnitList.21"** %units1
  br label %15
}

define void @"fn$main.ir_compiler.IRCompile"(%"adt$main.compiler.CompilerContext.22"* %context) {
entry:
  %bake.context = alloca %"adt$main.compiler.CompilerContext.22"*
  store %"adt$main.compiler.CompilerContext.22"* %context, %"adt$main.compiler.CompilerContext.22"** %bake.context
  br label %0

; <label>:0:                                      ; preds = %entry
  %1 = load %"adt$main.compiler.CompilerContext.22"*, %"adt$main.compiler.CompilerContext.22"** %bake.context
  %2 = load %"adt$main.compiler.CompilerContext.22"*, %"adt$main.compiler.CompilerContext.22"** %bake.context
  %3 = getelementptr inbounds %"adt$main.compiler.CompilerContext.22", %"adt$main.compiler.CompilerContext.22"* %2, i32 0, i32 2
  %4 = load %"adt$main.ir.IRCompilationUnitList.21"*, %"adt$main.ir.IRCompilationUnitList.21"** %3
  call void @"fn$main.ir_compiler.IRCompileUnits"(%"adt$main.compiler.CompilerContext.22"* %1, %"adt$main.ir.IRCompilationUnitList.21"* %4)
  ret void
}
