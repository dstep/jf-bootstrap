; ModuleID = 'main.main'
source_filename = "main.main"

%"adt$main.compiler.CompilerContext" = type { i32, i8*, %"adt$main.ir.IRCompilationUnitList"* }
%"adt$main.ir.IRCompilationUnitList" = type opaque
%"adt$main.prelude.DirectoryData.4" = type { i32, i8**, i32 }
%"adt$main.ir_builder.IRBuilder" = type opaque
%"adt$main.ast.AstFile.5" = type opaque
%"adt$main.parser.ParserContext.6" = type opaque
%"adt$main.token.TokenStream.7" = type opaque
%"adt$main.lexer.LexerContext" = type opaque
%"adtc$main.prelude.FileData.Data.9" = type { i32, i8*, i32 }
%"adt$main.prelude.FileData.8" = type { i32 }

@0 = private global [2 x i8] c".\00"
@1 = private global [3 x i8] c"..\00"
@2 = private global [2 x i8] c"\5C\00"
@3 = private global [64 x i8] c"D:\5CDropbox\5Clanguage_ws\5Cjf-bootstrap\5Cjellyfish\5Ccompiler\5Cmain\5Csrc\00"
@"g$main.main.Compiler" = global %"adt$main.compiler.CompilerContext"* undef
@4 = private global [58 x i8] c"D:\5CDropbox\5Clanguage_ws\5Cjf-bootstrap\5Cjellyfish\5Cself_output\00"
@5 = private global [25 x i8] c"=====ENTERING DIRECTORY \00"
@6 = private global [8 x i8] c"=======\00"
@7 = private global [4 x i8] c".jf\00"
@8 = private global [24 x i8] c"=====LEAVING DIRECTORY \00"
@9 = private global [8 x i8] c"=======\00"
@10 = private global [2 x i8] c"\5C\00"
@11 = private global [17 x i8] c"++++ Processing \00"
@12 = private global [6 x i8] c" ++++\00"
@13 = private global [18 x i8] c"---- Leaving ----\00"
@14 = private global [17 x i8] c"Can't read file \00"
@15 = private global [6 x i8] c"Read \00"
@16 = private global [25 x i8] c" bytes, running lexer...\00"
@17 = private global [31 x i8] c"Lexing done, running parser...\00"
@18 = private global [29 x i8] c"Parsing done. Building IR...\00"
@19 = private global i1 false

define void @"fn$main.main.ClearOutput"(i8* %dirname) {
entry:
  %entry1 = alloca i8*
  %i = alloca i32
  %dir = alloca %"adt$main.prelude.DirectoryData.4"*
  %bake.dirname = alloca i8*
  store i8* %dirname, i8** %bake.dirname
  br label %32

; <label>:0:                                      ; preds = %3, %4
  %1 = load i32, i32* %i
  %2 = add i32 %1, 1
  store i32 %2, i32* %i
  br label %26

; <label>:3:                                      ; preds = %9
  br label %0

; <label>:4:                                      ; preds = %9
  %5 = load i8*, i8** %bake.dirname
  %6 = call i8* @jf_string_concat(i8* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @2, i32 0, i32 0))
  %7 = load i8*, i8** %entry1
  %8 = call i8* @jf_string_concat(i8* %6, i8* %7)
  call void @"fn$main.prelude.RemoveFile"(i8* %8)
  br label %0

; <label>:9:                                      ; preds = %11, %16
  %10 = phi i1 [ %14, %11 ], [ false, %16 ]
  br i1 %10, label %4, label %3

; <label>:11:                                     ; preds = %16
  %12 = load i8*, i8** %entry1
  %13 = call i32 @jf_string_compare(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @1, i32 0, i32 0))
  %14 = icmp ne i32 %13, 0
  br label %9

; <label>:15:                                     ; preds = %26
  ret void

; <label>:16:                                     ; preds = %26
  %17 = load %"adt$main.prelude.DirectoryData.4"*, %"adt$main.prelude.DirectoryData.4"** %dir
  %18 = getelementptr inbounds %"adt$main.prelude.DirectoryData.4", %"adt$main.prelude.DirectoryData.4"* %17, i32 0, i32 1
  %19 = load i8**, i8*** %18
  %20 = load i32, i32* %i
  %21 = getelementptr inbounds i8*, i8** %19, i32 %20
  %22 = load i8*, i8** %21
  store i8* %22, i8** %entry1
  %23 = load i8*, i8** %entry1
  %24 = call i32 @jf_string_compare(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @0, i32 0, i32 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %11, label %9

; <label>:26:                                     ; preds = %0, %32
  %27 = load i32, i32* %i
  %28 = load %"adt$main.prelude.DirectoryData.4"*, %"adt$main.prelude.DirectoryData.4"** %dir
  %29 = getelementptr inbounds %"adt$main.prelude.DirectoryData.4", %"adt$main.prelude.DirectoryData.4"* %28, i32 0, i32 2
  %30 = load i32, i32* %29
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %16, label %15

; <label>:32:                                     ; preds = %entry
  %33 = load i8*, i8** %bake.dirname
  %34 = call %"adt$main.prelude.DirectoryData.4"* @"fn$main.prelude.ReadDirectory"(i8* %33)
  store %"adt$main.prelude.DirectoryData.4"* %34, %"adt$main.prelude.DirectoryData.4"** %dir
  store i32 0, i32* %i
  br label %26
}

declare %"adt$main.prelude.DirectoryData.4"* @"fn$main.prelude.ReadDirectory"(i8*)

declare i32 @jf_string_compare(i8*, i8*)

declare i8* @jf_string_concat(i8*, i8*)

declare void @"fn$main.prelude.RemoveFile"(i8*)

define void @_jf_entry_point() {
entry:
  %cc = alloca %"adt$main.compiler.CompilerContext"*
  %dir = alloca i8*
  br label %0

; <label>:0:                                      ; preds = %entry
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @3, i32 0, i32 0), i8** %dir
  call void @"gg$main.main.Compiler"()
  %1 = load %"adt$main.compiler.CompilerContext"*, %"adt$main.compiler.CompilerContext"** @"g$main.main.Compiler"
  store %"adt$main.compiler.CompilerContext"* %1, %"adt$main.compiler.CompilerContext"** %cc
  %2 = load %"adt$main.compiler.CompilerContext"*, %"adt$main.compiler.CompilerContext"** %cc
  %3 = getelementptr inbounds %"adt$main.compiler.CompilerContext", %"adt$main.compiler.CompilerContext"* %2, i32 0, i32 1
  store i8* getelementptr inbounds ([58 x i8], [58 x i8]* @4, i32 0, i32 0), i8** %3
  %4 = load %"adt$main.compiler.CompilerContext"*, %"adt$main.compiler.CompilerContext"** %cc
  %5 = getelementptr inbounds %"adt$main.compiler.CompilerContext", %"adt$main.compiler.CompilerContext"* %4, i32 0, i32 1
  %6 = load i8*, i8** %5
  call void @"fn$main.main.ClearOutput"(i8* %6)
  %7 = load i8*, i8** %dir
  call void @"fn$main.main.ProcessDir"(i8* %7)
  call void @"gg$main.main.Compiler"()
  %8 = load %"adt$main.compiler.CompilerContext"*, %"adt$main.compiler.CompilerContext"** @"g$main.main.Compiler"
  call void @"fn$main.ir_compiler.IRCompile"(%"adt$main.compiler.CompilerContext"* %8)
  call void @"gg$main.main.Compiler"()
  %9 = load %"adt$main.compiler.CompilerContext"*, %"adt$main.compiler.CompilerContext"** @"g$main.main.Compiler"
  call void @"fn$main.bytecode_compiler.BCCompile"(%"adt$main.compiler.CompilerContext"* %9)
  call void @"gg$main.main.Compiler"()
  %10 = load %"adt$main.compiler.CompilerContext"*, %"adt$main.compiler.CompilerContext"** @"g$main.main.Compiler"
  call void @"fn$main.llvm_codegen.RunLLVMCodegen"(%"adt$main.compiler.CompilerContext"* %10)
  ret void
}

define void @"gg$main.main.Compiler"() {
entry:
  %0 = load i1, i1* @19
  br i1 %0, label %ret, label %init

ret:                                              ; preds = %entry
  ret void

init:                                             ; preds = %entry
  store i1 true, i1* @19
  %1 = call %"adt$main.compiler.CompilerContext"* @"gi$main.main.Compiler"()
  store %"adt$main.compiler.CompilerContext"* %1, %"adt$main.compiler.CompilerContext"** @"g$main.main.Compiler"
  ret void
}

define void @"fn$main.main.ProcessDir"(i8* %dirname) {
entry:
  %entry1 = alloca i8*
  %i = alloca i32
  %dir = alloca %"adt$main.prelude.DirectoryData.4"*
  %bake.dirname = alloca i8*
  store i8* %dirname, i8** %bake.dirname
  br label %28

; <label>:0:                                      ; preds = %3, %4
  %1 = load i32, i32* %i
  %2 = add i32 %1, 1
  store i32 %2, i32* %i
  br label %22

; <label>:3:                                      ; preds = %13
  br label %0

; <label>:4:                                      ; preds = %13
  %5 = load i8*, i8** %bake.dirname
  %6 = call i8* @jf_string_concat(i8* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @10, i32 0, i32 0))
  %7 = load i8*, i8** %entry1
  %8 = call i8* @jf_string_concat(i8* %6, i8* %7)
  call void @"fn$main.main.ProcessFile"(i8* %8)
  br label %0

; <label>:9:                                      ; preds = %22
  %10 = load i8*, i8** %bake.dirname
  %11 = call i8* @jf_string_concat(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @8, i32 0, i32 0), i8* %10)
  %12 = call i8* @jf_string_concat(i8* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0))
  call void @"fn$main.prelude.WriteLn"(i8* %12)
  ret void

; <label>:13:                                     ; preds = %22
  %14 = load %"adt$main.prelude.DirectoryData.4"*, %"adt$main.prelude.DirectoryData.4"** %dir
  %15 = getelementptr inbounds %"adt$main.prelude.DirectoryData.4", %"adt$main.prelude.DirectoryData.4"* %14, i32 0, i32 1
  %16 = load i8**, i8*** %15
  %17 = load i32, i32* %i
  %18 = getelementptr inbounds i8*, i8** %16, i32 %17
  %19 = load i8*, i8** %18
  store i8* %19, i8** %entry1
  %20 = load i8*, i8** %entry1
  %21 = call i1 @"fn$main.prelude.EndsWith"(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @7, i32 0, i32 0))
  br i1 %21, label %4, label %3

; <label>:22:                                     ; preds = %0, %28
  %23 = load i32, i32* %i
  %24 = load %"adt$main.prelude.DirectoryData.4"*, %"adt$main.prelude.DirectoryData.4"** %dir
  %25 = getelementptr inbounds %"adt$main.prelude.DirectoryData.4", %"adt$main.prelude.DirectoryData.4"* %24, i32 0, i32 2
  %26 = load i32, i32* %25
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %13, label %9

; <label>:28:                                     ; preds = %entry
  %29 = load i8*, i8** %bake.dirname
  %30 = call %"adt$main.prelude.DirectoryData.4"* @"fn$main.prelude.ReadDirectory"(i8* %29)
  store %"adt$main.prelude.DirectoryData.4"* %30, %"adt$main.prelude.DirectoryData.4"** %dir
  %31 = load i8*, i8** %bake.dirname
  %32 = call i8* @jf_string_concat(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @5, i32 0, i32 0), i8* %31)
  %33 = call i8* @jf_string_concat(i8* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @6, i32 0, i32 0))
  call void @"fn$main.prelude.WriteLn"(i8* %33)
  store i32 0, i32* %i
  br label %22
}

declare void @"fn$main.ir_compiler.IRCompile"(%"adt$main.compiler.CompilerContext"*)

declare void @"fn$main.bytecode_compiler.BCCompile"(%"adt$main.compiler.CompilerContext"*)

declare void @"fn$main.llvm_codegen.RunLLVMCodegen"(%"adt$main.compiler.CompilerContext"*)

declare void @"fn$main.prelude.WriteLn"(i8*)

declare i1 @"fn$main.prelude.EndsWith"(i8*, i8*)

define void @"fn$main.main.ProcessFile"(i8* %filename) {
entry:
  %irBuilder = alloca %"adt$main.ir_builder.IRBuilder"*
  %ast = alloca %"adt$main.ast.AstFile.5"*
  %parser = alloca %"adt$main.parser.ParserContext.6"*
  %tokens = alloca %"adt$main.token.TokenStream.7"*
  %lc = alloca %"adt$main.lexer.LexerContext"*
  %bake.filename = alloca i8*
  store i8* %filename, i8** %bake.filename
  br label %30

; <label>:0:                                      ; preds = %30
  %1 = bitcast %"adt$main.prelude.FileData.8"* %35 to %"adtc$main.prelude.FileData.Data.9"*
  %2 = getelementptr inbounds %"adtc$main.prelude.FileData.Data.9", %"adtc$main.prelude.FileData.Data.9"* %1, i32 0, i32 1
  %3 = load i8*, i8** %2
  %4 = bitcast %"adt$main.prelude.FileData.8"* %35 to %"adtc$main.prelude.FileData.Data.9"*
  %5 = getelementptr inbounds %"adtc$main.prelude.FileData.Data.9", %"adtc$main.prelude.FileData.Data.9"* %4, i32 0, i32 2
  %6 = load i32, i32* %5
  %7 = call i8* @"fn$main.prelude.IntToStr"(i32 %6)
  %8 = call i8* @jf_string_concat(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @15, i32 0, i32 0), i8* %7)
  %9 = call i8* @jf_string_concat(i8* %8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @16, i32 0, i32 0))
  call void @"fn$main.prelude.WriteLn"(i8* %9)
  %10 = call %"adt$main.lexer.LexerContext"* @"fn$main.lexer.LexerCreate"()
  store %"adt$main.lexer.LexerContext"* %10, %"adt$main.lexer.LexerContext"** %lc
  %11 = load %"adt$main.lexer.LexerContext"*, %"adt$main.lexer.LexerContext"** %lc
  %12 = load i8*, i8** %bake.filename
  call void @"fn$main.lexer.LexerFeed"(%"adt$main.lexer.LexerContext"* %11, i8* %12, i8* %3, i32 %6)
  %13 = load %"adt$main.lexer.LexerContext"*, %"adt$main.lexer.LexerContext"** %lc
  %14 = call %"adt$main.token.TokenStream.7"* @"fn$main.lexer.LexerRun"(%"adt$main.lexer.LexerContext"* %13)
  store %"adt$main.token.TokenStream.7"* %14, %"adt$main.token.TokenStream.7"** %tokens
  call void @"fn$main.prelude.WriteLn"(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @17, i32 0, i32 0))
  %15 = call %"adt$main.parser.ParserContext.6"* @"fn$main.parser.ParserCreate"()
  store %"adt$main.parser.ParserContext.6"* %15, %"adt$main.parser.ParserContext.6"** %parser
  %16 = load %"adt$main.parser.ParserContext.6"*, %"adt$main.parser.ParserContext.6"** %parser
  %17 = load i8*, i8** %bake.filename
  %18 = load %"adt$main.token.TokenStream.7"*, %"adt$main.token.TokenStream.7"** %tokens
  call void @"fn$main.parser.ParserFeed"(%"adt$main.parser.ParserContext.6"* %16, i8* %17, %"adt$main.token.TokenStream.7"* %18)
  %19 = load %"adt$main.parser.ParserContext.6"*, %"adt$main.parser.ParserContext.6"** %parser
  %20 = call %"adt$main.ast.AstFile.5"* @"fn$main.parser.ParserRun"(%"adt$main.parser.ParserContext.6"* %19)
  store %"adt$main.ast.AstFile.5"* %20, %"adt$main.ast.AstFile.5"** %ast
  call void @"fn$main.prelude.WriteLn"(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @18, i32 0, i32 0))
  call void @"gg$main.main.Compiler"()
  %21 = load %"adt$main.compiler.CompilerContext"*, %"adt$main.compiler.CompilerContext"** @"g$main.main.Compiler"
  %22 = call %"adt$main.ir_builder.IRBuilder"* @"fn$main.ir_builder.IRBuilderCreate"(%"adt$main.compiler.CompilerContext"* %21)
  store %"adt$main.ir_builder.IRBuilder"* %22, %"adt$main.ir_builder.IRBuilder"** %irBuilder
  %23 = load %"adt$main.ir_builder.IRBuilder"*, %"adt$main.ir_builder.IRBuilder"** %irBuilder
  %24 = load i8*, i8** %bake.filename
  %25 = load %"adt$main.ast.AstFile.5"*, %"adt$main.ast.AstFile.5"** %ast
  call void @"fn$main.ir_builder.IRBuilderProcessFile"(%"adt$main.ir_builder.IRBuilder"* %23, i8* %24, %"adt$main.ast.AstFile.5"* %25)
  br label %29

; <label>:26:                                     ; preds = %30
  %27 = load i8*, i8** %bake.filename
  %28 = call i8* @jf_string_concat(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @14, i32 0, i32 0), i8* %27)
  call void @"fn$main.prelude.WriteLn"(i8* %28)
  br label %29

; <label>:29:                                     ; preds = %0, %26, %30
  call void @"fn$main.prelude.WriteLn"(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @13, i32 0, i32 0))
  ret void

; <label>:30:                                     ; preds = %entry
  %31 = load i8*, i8** %bake.filename
  %32 = call i8* @jf_string_concat(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @11, i32 0, i32 0), i8* %31)
  %33 = call i8* @jf_string_concat(i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @12, i32 0, i32 0))
  call void @"fn$main.prelude.WriteLn"(i8* %33)
  %34 = load i8*, i8** %bake.filename
  %35 = call %"adt$main.prelude.FileData.8"* @"fn$main.prelude.ReadFile"(i8* %34)
  %36 = getelementptr inbounds %"adt$main.prelude.FileData.8", %"adt$main.prelude.FileData.8"* %35, i32 0, i32 0
  %37 = load i32, i32* %36
  switch i32 %37, label %29 [
    i32 1, label %0
    i32 0, label %26
  ]
}

declare %"adt$main.prelude.FileData.8"* @"fn$main.prelude.ReadFile"(i8*)

declare i8* @"fn$main.prelude.IntToStr"(i32)

declare %"adt$main.lexer.LexerContext"* @"fn$main.lexer.LexerCreate"()

declare void @"fn$main.lexer.LexerFeed"(%"adt$main.lexer.LexerContext"*, i8*, i8*, i32)

declare %"adt$main.token.TokenStream.7"* @"fn$main.lexer.LexerRun"(%"adt$main.lexer.LexerContext"*)

declare %"adt$main.parser.ParserContext.6"* @"fn$main.parser.ParserCreate"()

declare void @"fn$main.parser.ParserFeed"(%"adt$main.parser.ParserContext.6"*, i8*, %"adt$main.token.TokenStream.7"*)

declare %"adt$main.ast.AstFile.5"* @"fn$main.parser.ParserRun"(%"adt$main.parser.ParserContext.6"*)

declare %"adt$main.ir_builder.IRBuilder"* @"fn$main.ir_builder.IRBuilderCreate"(%"adt$main.compiler.CompilerContext"*)

declare void @"fn$main.ir_builder.IRBuilderProcessFile"(%"adt$main.ir_builder.IRBuilder"*, i8*, %"adt$main.ast.AstFile.5"*)

define %"adt$main.compiler.CompilerContext"* @"gi$main.main.Compiler"() {
entry:
  br label %0

; <label>:0:                                      ; preds = %entry
  %1 = call %"adt$main.compiler.CompilerContext"* @"fn$main.compiler.CompilerContextCreate"()
  ret %"adt$main.compiler.CompilerContext"* %1
}

declare %"adt$main.compiler.CompilerContext"* @"fn$main.compiler.CompilerContextCreate"()
