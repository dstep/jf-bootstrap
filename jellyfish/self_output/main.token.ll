; ModuleID = 'main.token'
source_filename = "main.token"

%"adt$main.token.TokenStream" = type { i32, %"adt$main.token.Token"**, i32, i32 }
%"adt$main.token.Token" = type { i32, %"adt$main.token.TokenType"*, %"adt$main.ast.SrcLoc"*, i8* }
%"adt$main.token.TokenType" = type { i32 }
%"adt$main.ast.SrcLoc" = type opaque
%"adtc$main.token.TokenStream.New" = type { i32, %"adt$main.token.Token"**, i32, i32 }
%"adtc$main.token.Token.New" = type { i32, %"adt$main.token.TokenType"*, %"adt$main.ast.SrcLoc"*, i8* }
%"adtc$main.token.TokenType.Identifier" = type { i32 }
%"adtc$main.token.TokenType.StringLiteral" = type { i32 }
%"adtc$main.token.TokenType.NumberLiteral" = type { i32 }
%"adtc$main.token.TokenType.Dot" = type { i32 }
%"adtc$main.token.TokenType.LParen" = type { i32 }
%"adtc$main.token.TokenType.RParen" = type { i32 }
%"adtc$main.token.TokenType.Colon" = type { i32 }
%"adtc$main.token.TokenType.Comma" = type { i32 }
%"adtc$main.token.TokenType.LBracket" = type { i32 }
%"adtc$main.token.TokenType.RBracket" = type { i32 }
%"adtc$main.token.TokenType.Assign" = type { i32 }
%"adtc$main.token.TokenType.CmpEQ" = type { i32 }
%"adtc$main.token.TokenType.CmpNE" = type { i32 }
%"adtc$main.token.TokenType.CmpLT" = type { i32 }
%"adtc$main.token.TokenType.CmpGT" = type { i32 }
%"adtc$main.token.TokenType.CmpLE" = type { i32 }
%"adtc$main.token.TokenType.CmpGE" = type { i32 }
%"adtc$main.token.TokenType.Minus" = type { i32 }
%"adtc$main.token.TokenType.Plus" = type { i32 }
%"adtc$main.token.TokenType.Divide" = type { i32 }
%"adtc$main.token.TokenType.Multiply" = type { i32 }
%"adtc$main.token.TokenType.KImport" = type { i32 }
%"adtc$main.token.TokenType.KFunction" = type { i32 }
%"adtc$main.token.TokenType.KEnd" = type { i32 }
%"adtc$main.token.TokenType.KVar" = type { i32 }
%"adtc$main.token.TokenType.KField" = type { i32 }
%"adtc$main.token.TokenType.KNew" = type { i32 }
%"adtc$main.token.TokenType.KReturn" = type { i32 }
%"adtc$main.token.TokenType.KIf" = type { i32 }
%"adtc$main.token.TokenType.KThen" = type { i32 }
%"adtc$main.token.TokenType.KElse" = type { i32 }
%"adtc$main.token.TokenType.KElIf" = type { i32 }
%"adtc$main.token.TokenType.KWhile" = type { i32 }
%"adtc$main.token.TokenType.KDo" = type { i32 }
%"adtc$main.token.TokenType.KAnd" = type { i32 }
%"adtc$main.token.TokenType.KOr" = type { i32 }
%"adtc$main.token.TokenType.KADT" = type { i32 }
%"adtc$main.token.TokenType.KMatch" = type { i32 }
%"adtc$main.token.TokenType.KCase" = type { i32 }
%"adtc$main.token.TokenType.KGlobal" = type { i32 }
%"adtc$main.token.TokenType.EOF" = type { i32 }

@0 = private global [2 x i8] c":\00"
@1 = private global [2 x i8] c":\00"
@2 = private global [2 x i8] c":\00"
@3 = private global [3 x i8] c"id\00"
@4 = private global [11 x i8] c"string_lit\00"
@5 = private global [11 x i8] c"number_lit\00"
@6 = private global [2 x i8] c".\00"
@7 = private global [2 x i8] c"(\00"
@8 = private global [2 x i8] c")\00"
@9 = private global [2 x i8] c":\00"
@10 = private global [2 x i8] c",\00"
@11 = private global [2 x i8] c"[\00"
@12 = private global [2 x i8] c"]\00"
@13 = private global [8 x i8] c"KImport\00"
@14 = private global [10 x i8] c"KFunction\00"
@15 = private global [5 x i8] c"KEnd\00"
@16 = private global [5 x i8] c"KVar\00"
@17 = private global [7 x i8] c"KField\00"
@18 = private global [5 x i8] c"KNew\00"
@19 = private global [8 x i8] c"KReturn\00"
@20 = private global [4 x i8] c"KIf\00"
@21 = private global [6 x i8] c"KThen\00"
@22 = private global [6 x i8] c"KElse\00"
@23 = private global [6 x i8] c"KElIf\00"
@24 = private global [7 x i8] c"KWhile\00"
@25 = private global [4 x i8] c"KDo\00"
@26 = private global [5 x i8] c"KAnd\00"
@27 = private global [4 x i8] c"KOr\00"
@28 = private global [5 x i8] c"KADT\00"
@29 = private global [7 x i8] c"KMatch\00"
@30 = private global [6 x i8] c"KCase\00"
@31 = private global [8 x i8] c"KGlobal\00"
@32 = private global [2 x i8] c"-\00"
@33 = private global [2 x i8] c"+\00"
@34 = private global [2 x i8] c"*\00"
@35 = private global [2 x i8] c"/\00"
@36 = private global [3 x i8] c"==\00"
@37 = private global [3 x i8] c"<>\00"
@38 = private global [2 x i8] c">\00"
@39 = private global [2 x i8] c"<\00"
@40 = private global [3 x i8] c">=\00"
@41 = private global [3 x i8] c"<=\00"
@42 = private global [2 x i8] c"=\00"
@43 = private global [4 x i8] c"eof\00"

define %"adt$main.token.TokenStream"* @"adtcfn$adtc$main.token.TokenStream.New"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.token.TokenStream.New"* getelementptr (%"adtc$main.token.TokenStream.New", %"adtc$main.token.TokenStream.New"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.token.TokenStream.New"*
  %2 = getelementptr inbounds %"adtc$main.token.TokenStream.New", %"adtc$main.token.TokenStream.New"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.token.TokenStream.New"* %1 to %"adt$main.token.TokenStream"*
  ret %"adt$main.token.TokenStream"* %3
}

declare i8* @jf_allocate(i32)

define %"adt$main.token.Token"* @"adtcfn$adtc$main.token.Token.New"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.token.Token.New"* getelementptr (%"adtc$main.token.Token.New", %"adtc$main.token.Token.New"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.token.Token.New"*
  %2 = getelementptr inbounds %"adtc$main.token.Token.New", %"adtc$main.token.Token.New"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.token.Token.New"* %1 to %"adt$main.token.Token"*
  ret %"adt$main.token.Token"* %3
}

define i8* @"fn$main.token.TokenGetName"(%"adt$main.token.Token"* %token) {
entry:
  %result = alloca i8*
  %bake.token = alloca %"adt$main.token.Token"*
  store %"adt$main.token.Token"* %token, %"adt$main.token.Token"** %bake.token
  br label %23

; <label>:0:                                      ; preds = %23
  %1 = load i8*, i8** %result
  %2 = call i8* @jf_string_concat(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @2, i32 0, i32 0))
  %3 = load %"adt$main.token.Token"*, %"adt$main.token.Token"** %bake.token
  %4 = getelementptr inbounds %"adt$main.token.Token", %"adt$main.token.Token"* %3, i32 0, i32 3
  %5 = load i8*, i8** %4
  %6 = call i8* @jf_string_concat(i8* %2, i8* %5)
  ret i8* %6

; <label>:7:                                      ; preds = %23
  %8 = load i8*, i8** %result
  %9 = call i8* @jf_string_concat(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @1, i32 0, i32 0))
  %10 = load %"adt$main.token.Token"*, %"adt$main.token.Token"** %bake.token
  %11 = getelementptr inbounds %"adt$main.token.Token", %"adt$main.token.Token"* %10, i32 0, i32 3
  %12 = load i8*, i8** %11
  %13 = call i8* @jf_string_concat(i8* %9, i8* %12)
  ret i8* %13

; <label>:14:                                     ; preds = %23
  %15 = load i8*, i8** %result
  %16 = call i8* @jf_string_concat(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @0, i32 0, i32 0))
  %17 = load %"adt$main.token.Token"*, %"adt$main.token.Token"** %bake.token
  %18 = getelementptr inbounds %"adt$main.token.Token", %"adt$main.token.Token"* %17, i32 0, i32 3
  %19 = load i8*, i8** %18
  %20 = call i8* @jf_string_concat(i8* %16, i8* %19)
  ret i8* %20

; <label>:21:                                     ; preds = %23
  %22 = load i8*, i8** %result
  ret i8* %22

; <label>:23:                                     ; preds = %entry
  %24 = load %"adt$main.token.Token"*, %"adt$main.token.Token"** %bake.token
  %25 = getelementptr inbounds %"adt$main.token.Token", %"adt$main.token.Token"* %24, i32 0, i32 1
  %26 = load %"adt$main.token.TokenType"*, %"adt$main.token.TokenType"** %25
  %27 = call i8* @"fn$main.token.TokenTypeGetName"(%"adt$main.token.TokenType"* %26)
  store i8* %27, i8** %result
  %28 = load %"adt$main.token.Token"*, %"adt$main.token.Token"** %bake.token
  %29 = getelementptr inbounds %"adt$main.token.Token", %"adt$main.token.Token"* %28, i32 0, i32 1
  %30 = load %"adt$main.token.TokenType"*, %"adt$main.token.TokenType"** %29
  %31 = getelementptr inbounds %"adt$main.token.TokenType", %"adt$main.token.TokenType"* %30, i32 0, i32 0
  %32 = load i32, i32* %31
  switch i32 %32, label %21 [
    i32 2, label %0
    i32 1, label %7
    i32 0, label %14
  ]
}

define i8* @"fn$main.token.TokenTypeGetName"(%"adt$main.token.TokenType"* %tt) {
entry:
  %bake.tt = alloca %"adt$main.token.TokenType"*
  store %"adt$main.token.TokenType"* %tt, %"adt$main.token.TokenType"** %bake.tt
  br label %42

; <label>:0:                                      ; preds = %42
  ret i8* getelementptr inbounds ([4 x i8], [4 x i8]* @43, i32 0, i32 0)

; <label>:1:                                      ; preds = %42
  ret i8* getelementptr inbounds ([2 x i8], [2 x i8]* @42, i32 0, i32 0)

; <label>:2:                                      ; preds = %42
  ret i8* getelementptr inbounds ([3 x i8], [3 x i8]* @41, i32 0, i32 0)

; <label>:3:                                      ; preds = %42
  ret i8* getelementptr inbounds ([3 x i8], [3 x i8]* @40, i32 0, i32 0)

; <label>:4:                                      ; preds = %42
  ret i8* getelementptr inbounds ([2 x i8], [2 x i8]* @39, i32 0, i32 0)

; <label>:5:                                      ; preds = %42
  ret i8* getelementptr inbounds ([2 x i8], [2 x i8]* @38, i32 0, i32 0)

; <label>:6:                                      ; preds = %42
  ret i8* getelementptr inbounds ([3 x i8], [3 x i8]* @37, i32 0, i32 0)

; <label>:7:                                      ; preds = %42
  ret i8* getelementptr inbounds ([3 x i8], [3 x i8]* @36, i32 0, i32 0)

; <label>:8:                                      ; preds = %42
  ret i8* getelementptr inbounds ([2 x i8], [2 x i8]* @35, i32 0, i32 0)

; <label>:9:                                      ; preds = %42
  ret i8* getelementptr inbounds ([2 x i8], [2 x i8]* @34, i32 0, i32 0)

; <label>:10:                                     ; preds = %42
  ret i8* getelementptr inbounds ([2 x i8], [2 x i8]* @33, i32 0, i32 0)

; <label>:11:                                     ; preds = %42
  ret i8* getelementptr inbounds ([2 x i8], [2 x i8]* @32, i32 0, i32 0)

; <label>:12:                                     ; preds = %42
  ret i8* getelementptr inbounds ([8 x i8], [8 x i8]* @31, i32 0, i32 0)

; <label>:13:                                     ; preds = %42
  ret i8* getelementptr inbounds ([6 x i8], [6 x i8]* @30, i32 0, i32 0)

; <label>:14:                                     ; preds = %42
  ret i8* getelementptr inbounds ([7 x i8], [7 x i8]* @29, i32 0, i32 0)

; <label>:15:                                     ; preds = %42
  ret i8* getelementptr inbounds ([5 x i8], [5 x i8]* @28, i32 0, i32 0)

; <label>:16:                                     ; preds = %42
  ret i8* getelementptr inbounds ([4 x i8], [4 x i8]* @27, i32 0, i32 0)

; <label>:17:                                     ; preds = %42
  ret i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0)

; <label>:18:                                     ; preds = %42
  ret i8* getelementptr inbounds ([4 x i8], [4 x i8]* @25, i32 0, i32 0)

; <label>:19:                                     ; preds = %42
  ret i8* getelementptr inbounds ([7 x i8], [7 x i8]* @24, i32 0, i32 0)

; <label>:20:                                     ; preds = %42
  ret i8* getelementptr inbounds ([6 x i8], [6 x i8]* @23, i32 0, i32 0)

; <label>:21:                                     ; preds = %42
  ret i8* getelementptr inbounds ([6 x i8], [6 x i8]* @22, i32 0, i32 0)

; <label>:22:                                     ; preds = %42
  ret i8* getelementptr inbounds ([6 x i8], [6 x i8]* @21, i32 0, i32 0)

; <label>:23:                                     ; preds = %42
  ret i8* getelementptr inbounds ([4 x i8], [4 x i8]* @20, i32 0, i32 0)

; <label>:24:                                     ; preds = %42
  ret i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0)

; <label>:25:                                     ; preds = %42
  ret i8* getelementptr inbounds ([5 x i8], [5 x i8]* @18, i32 0, i32 0)

; <label>:26:                                     ; preds = %42
  ret i8* getelementptr inbounds ([7 x i8], [7 x i8]* @17, i32 0, i32 0)

; <label>:27:                                     ; preds = %42
  ret i8* getelementptr inbounds ([5 x i8], [5 x i8]* @16, i32 0, i32 0)

; <label>:28:                                     ; preds = %42
  ret i8* getelementptr inbounds ([5 x i8], [5 x i8]* @15, i32 0, i32 0)

; <label>:29:                                     ; preds = %42
  ret i8* getelementptr inbounds ([10 x i8], [10 x i8]* @14, i32 0, i32 0)

; <label>:30:                                     ; preds = %42
  ret i8* getelementptr inbounds ([8 x i8], [8 x i8]* @13, i32 0, i32 0)

; <label>:31:                                     ; preds = %42
  ret i8* getelementptr inbounds ([2 x i8], [2 x i8]* @12, i32 0, i32 0)

; <label>:32:                                     ; preds = %42
  ret i8* getelementptr inbounds ([2 x i8], [2 x i8]* @11, i32 0, i32 0)

; <label>:33:                                     ; preds = %42
  ret i8* getelementptr inbounds ([2 x i8], [2 x i8]* @10, i32 0, i32 0)

; <label>:34:                                     ; preds = %42
  ret i8* getelementptr inbounds ([2 x i8], [2 x i8]* @9, i32 0, i32 0)

; <label>:35:                                     ; preds = %42
  ret i8* getelementptr inbounds ([2 x i8], [2 x i8]* @8, i32 0, i32 0)

; <label>:36:                                     ; preds = %42
  ret i8* getelementptr inbounds ([2 x i8], [2 x i8]* @7, i32 0, i32 0)

; <label>:37:                                     ; preds = %42
  ret i8* getelementptr inbounds ([2 x i8], [2 x i8]* @6, i32 0, i32 0)

; <label>:38:                                     ; preds = %42
  ret i8* getelementptr inbounds ([11 x i8], [11 x i8]* @5, i32 0, i32 0)

; <label>:39:                                     ; preds = %42
  ret i8* getelementptr inbounds ([11 x i8], [11 x i8]* @4, i32 0, i32 0)

; <label>:40:                                     ; preds = %42
  ret i8* getelementptr inbounds ([3 x i8], [3 x i8]* @3, i32 0, i32 0)

; <label>:41:                                     ; preds = %42
  unreachable

; <label>:42:                                     ; preds = %entry
  %43 = load %"adt$main.token.TokenType"*, %"adt$main.token.TokenType"** %bake.tt
  %44 = getelementptr inbounds %"adt$main.token.TokenType", %"adt$main.token.TokenType"* %43, i32 0, i32 0
  %45 = load i32, i32* %44
  switch i32 %45, label %41 [
    i32 40, label %0
    i32 10, label %1
    i32 15, label %2
    i32 16, label %3
    i32 13, label %4
    i32 14, label %5
    i32 12, label %6
    i32 11, label %7
    i32 19, label %8
    i32 20, label %9
    i32 18, label %10
    i32 17, label %11
    i32 39, label %12
    i32 38, label %13
    i32 37, label %14
    i32 36, label %15
    i32 35, label %16
    i32 34, label %17
    i32 33, label %18
    i32 32, label %19
    i32 31, label %20
    i32 30, label %21
    i32 29, label %22
    i32 28, label %23
    i32 27, label %24
    i32 26, label %25
    i32 25, label %26
    i32 24, label %27
    i32 23, label %28
    i32 22, label %29
    i32 21, label %30
    i32 9, label %31
    i32 8, label %32
    i32 7, label %33
    i32 6, label %34
    i32 5, label %35
    i32 4, label %36
    i32 3, label %37
    i32 2, label %38
    i32 1, label %39
    i32 0, label %40
  ]
}

declare i8* @jf_string_concat(i8*, i8*)

define i32 @"fn$main.token.TokenTypeToNum"(%"adt$main.token.TokenType"* %tt) {
entry:
  %bake.tt = alloca %"adt$main.token.TokenType"*
  store %"adt$main.token.TokenType"* %tt, %"adt$main.token.TokenType"** %bake.tt
  br label %42

; <label>:0:                                      ; preds = %42
  ret i32 42

; <label>:1:                                      ; preds = %42
  ret i32 41

; <label>:2:                                      ; preds = %42
  ret i32 40

; <label>:3:                                      ; preds = %42
  ret i32 39

; <label>:4:                                      ; preds = %42
  ret i32 38

; <label>:5:                                      ; preds = %42
  ret i32 37

; <label>:6:                                      ; preds = %42
  ret i32 36

; <label>:7:                                      ; preds = %42
  ret i32 35

; <label>:8:                                      ; preds = %42
  ret i32 34

; <label>:9:                                      ; preds = %42
  ret i32 33

; <label>:10:                                     ; preds = %42
  ret i32 32

; <label>:11:                                     ; preds = %42
  ret i32 31

; <label>:12:                                     ; preds = %42
  ret i32 30

; <label>:13:                                     ; preds = %42
  ret i32 29

; <label>:14:                                     ; preds = %42
  ret i32 28

; <label>:15:                                     ; preds = %42
  ret i32 27

; <label>:16:                                     ; preds = %42
  ret i32 24

; <label>:17:                                     ; preds = %42
  ret i32 23

; <label>:18:                                     ; preds = %42
  ret i32 22

; <label>:19:                                     ; preds = %42
  ret i32 21

; <label>:20:                                     ; preds = %42
  ret i32 20

; <label>:21:                                     ; preds = %42
  ret i32 19

; <label>:22:                                     ; preds = %42
  ret i32 18

; <label>:23:                                     ; preds = %42
  ret i32 17

; <label>:24:                                     ; preds = %42
  ret i32 16

; <label>:25:                                     ; preds = %42
  ret i32 15

; <label>:26:                                     ; preds = %42
  ret i32 14

; <label>:27:                                     ; preds = %42
  ret i32 13

; <label>:28:                                     ; preds = %42
  ret i32 12

; <label>:29:                                     ; preds = %42
  ret i32 11

; <label>:30:                                     ; preds = %42
  ret i32 10

; <label>:31:                                     ; preds = %42
  ret i32 9

; <label>:32:                                     ; preds = %42
  ret i32 8

; <label>:33:                                     ; preds = %42
  ret i32 7

; <label>:34:                                     ; preds = %42
  ret i32 6

; <label>:35:                                     ; preds = %42
  ret i32 5

; <label>:36:                                     ; preds = %42
  ret i32 4

; <label>:37:                                     ; preds = %42
  ret i32 3

; <label>:38:                                     ; preds = %42
  ret i32 2

; <label>:39:                                     ; preds = %42
  ret i32 1

; <label>:40:                                     ; preds = %42
  ret i32 0

; <label>:41:                                     ; preds = %42
  unreachable

; <label>:42:                                     ; preds = %entry
  %43 = load %"adt$main.token.TokenType"*, %"adt$main.token.TokenType"** %bake.tt
  %44 = getelementptr inbounds %"adt$main.token.TokenType", %"adt$main.token.TokenType"* %43, i32 0, i32 0
  %45 = load i32, i32* %44
  switch i32 %45, label %41 [
    i32 40, label %0
    i32 39, label %1
    i32 38, label %2
    i32 37, label %3
    i32 36, label %4
    i32 35, label %5
    i32 34, label %6
    i32 33, label %7
    i32 32, label %8
    i32 31, label %9
    i32 30, label %10
    i32 29, label %11
    i32 28, label %12
    i32 27, label %13
    i32 26, label %14
    i32 25, label %15
    i32 24, label %16
    i32 23, label %17
    i32 22, label %18
    i32 21, label %19
    i32 20, label %20
    i32 19, label %21
    i32 18, label %22
    i32 17, label %23
    i32 16, label %24
    i32 15, label %25
    i32 14, label %26
    i32 13, label %27
    i32 12, label %28
    i32 11, label %29
    i32 10, label %30
    i32 9, label %31
    i32 8, label %32
    i32 7, label %33
    i32 6, label %34
    i32 5, label %35
    i32 4, label %36
    i32 3, label %37
    i32 2, label %38
    i32 1, label %39
    i32 0, label %40
  ]
}

define %"adt$main.token.TokenType"* @"adtcfn$adtc$main.token.TokenType.Identifier"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.token.TokenType.Identifier"*
  %2 = getelementptr inbounds %"adtc$main.token.TokenType.Identifier", %"adtc$main.token.TokenType.Identifier"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.token.TokenType.Identifier"* %1 to %"adt$main.token.TokenType"*
  ret %"adt$main.token.TokenType"* %3
}

define %"adt$main.token.TokenType"* @"adtcfn$adtc$main.token.TokenType.StringLiteral"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.token.TokenType.StringLiteral"*
  %2 = getelementptr inbounds %"adtc$main.token.TokenType.StringLiteral", %"adtc$main.token.TokenType.StringLiteral"* %1, i32 0, i32 0
  store i32 1, i32* %2
  %3 = bitcast %"adtc$main.token.TokenType.StringLiteral"* %1 to %"adt$main.token.TokenType"*
  ret %"adt$main.token.TokenType"* %3
}

define %"adt$main.token.TokenType"* @"adtcfn$adtc$main.token.TokenType.NumberLiteral"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.token.TokenType.NumberLiteral"*
  %2 = getelementptr inbounds %"adtc$main.token.TokenType.NumberLiteral", %"adtc$main.token.TokenType.NumberLiteral"* %1, i32 0, i32 0
  store i32 2, i32* %2
  %3 = bitcast %"adtc$main.token.TokenType.NumberLiteral"* %1 to %"adt$main.token.TokenType"*
  ret %"adt$main.token.TokenType"* %3
}

define %"adt$main.token.TokenType"* @"adtcfn$adtc$main.token.TokenType.Dot"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.token.TokenType.Dot"*
  %2 = getelementptr inbounds %"adtc$main.token.TokenType.Dot", %"adtc$main.token.TokenType.Dot"* %1, i32 0, i32 0
  store i32 3, i32* %2
  %3 = bitcast %"adtc$main.token.TokenType.Dot"* %1 to %"adt$main.token.TokenType"*
  ret %"adt$main.token.TokenType"* %3
}

define %"adt$main.token.TokenType"* @"adtcfn$adtc$main.token.TokenType.LParen"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.token.TokenType.LParen"*
  %2 = getelementptr inbounds %"adtc$main.token.TokenType.LParen", %"adtc$main.token.TokenType.LParen"* %1, i32 0, i32 0
  store i32 4, i32* %2
  %3 = bitcast %"adtc$main.token.TokenType.LParen"* %1 to %"adt$main.token.TokenType"*
  ret %"adt$main.token.TokenType"* %3
}

define %"adt$main.token.TokenType"* @"adtcfn$adtc$main.token.TokenType.RParen"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.token.TokenType.RParen"*
  %2 = getelementptr inbounds %"adtc$main.token.TokenType.RParen", %"adtc$main.token.TokenType.RParen"* %1, i32 0, i32 0
  store i32 5, i32* %2
  %3 = bitcast %"adtc$main.token.TokenType.RParen"* %1 to %"adt$main.token.TokenType"*
  ret %"adt$main.token.TokenType"* %3
}

define %"adt$main.token.TokenType"* @"adtcfn$adtc$main.token.TokenType.Colon"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.token.TokenType.Colon"*
  %2 = getelementptr inbounds %"adtc$main.token.TokenType.Colon", %"adtc$main.token.TokenType.Colon"* %1, i32 0, i32 0
  store i32 6, i32* %2
  %3 = bitcast %"adtc$main.token.TokenType.Colon"* %1 to %"adt$main.token.TokenType"*
  ret %"adt$main.token.TokenType"* %3
}

define %"adt$main.token.TokenType"* @"adtcfn$adtc$main.token.TokenType.Comma"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.token.TokenType.Comma"*
  %2 = getelementptr inbounds %"adtc$main.token.TokenType.Comma", %"adtc$main.token.TokenType.Comma"* %1, i32 0, i32 0
  store i32 7, i32* %2
  %3 = bitcast %"adtc$main.token.TokenType.Comma"* %1 to %"adt$main.token.TokenType"*
  ret %"adt$main.token.TokenType"* %3
}

define %"adt$main.token.TokenType"* @"adtcfn$adtc$main.token.TokenType.LBracket"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.token.TokenType.LBracket"*
  %2 = getelementptr inbounds %"adtc$main.token.TokenType.LBracket", %"adtc$main.token.TokenType.LBracket"* %1, i32 0, i32 0
  store i32 8, i32* %2
  %3 = bitcast %"adtc$main.token.TokenType.LBracket"* %1 to %"adt$main.token.TokenType"*
  ret %"adt$main.token.TokenType"* %3
}

define %"adt$main.token.TokenType"* @"adtcfn$adtc$main.token.TokenType.RBracket"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.token.TokenType.RBracket"*
  %2 = getelementptr inbounds %"adtc$main.token.TokenType.RBracket", %"adtc$main.token.TokenType.RBracket"* %1, i32 0, i32 0
  store i32 9, i32* %2
  %3 = bitcast %"adtc$main.token.TokenType.RBracket"* %1 to %"adt$main.token.TokenType"*
  ret %"adt$main.token.TokenType"* %3
}

define %"adt$main.token.TokenType"* @"adtcfn$adtc$main.token.TokenType.Assign"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.token.TokenType.Assign"*
  %2 = getelementptr inbounds %"adtc$main.token.TokenType.Assign", %"adtc$main.token.TokenType.Assign"* %1, i32 0, i32 0
  store i32 10, i32* %2
  %3 = bitcast %"adtc$main.token.TokenType.Assign"* %1 to %"adt$main.token.TokenType"*
  ret %"adt$main.token.TokenType"* %3
}

define %"adt$main.token.TokenType"* @"adtcfn$adtc$main.token.TokenType.CmpEQ"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.token.TokenType.CmpEQ"*
  %2 = getelementptr inbounds %"adtc$main.token.TokenType.CmpEQ", %"adtc$main.token.TokenType.CmpEQ"* %1, i32 0, i32 0
  store i32 11, i32* %2
  %3 = bitcast %"adtc$main.token.TokenType.CmpEQ"* %1 to %"adt$main.token.TokenType"*
  ret %"adt$main.token.TokenType"* %3
}

define %"adt$main.token.TokenType"* @"adtcfn$adtc$main.token.TokenType.CmpNE"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.token.TokenType.CmpNE"*
  %2 = getelementptr inbounds %"adtc$main.token.TokenType.CmpNE", %"adtc$main.token.TokenType.CmpNE"* %1, i32 0, i32 0
  store i32 12, i32* %2
  %3 = bitcast %"adtc$main.token.TokenType.CmpNE"* %1 to %"adt$main.token.TokenType"*
  ret %"adt$main.token.TokenType"* %3
}

define %"adt$main.token.TokenType"* @"adtcfn$adtc$main.token.TokenType.CmpLT"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.token.TokenType.CmpLT"*
  %2 = getelementptr inbounds %"adtc$main.token.TokenType.CmpLT", %"adtc$main.token.TokenType.CmpLT"* %1, i32 0, i32 0
  store i32 13, i32* %2
  %3 = bitcast %"adtc$main.token.TokenType.CmpLT"* %1 to %"adt$main.token.TokenType"*
  ret %"adt$main.token.TokenType"* %3
}

define %"adt$main.token.TokenType"* @"adtcfn$adtc$main.token.TokenType.CmpGT"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.token.TokenType.CmpGT"*
  %2 = getelementptr inbounds %"adtc$main.token.TokenType.CmpGT", %"adtc$main.token.TokenType.CmpGT"* %1, i32 0, i32 0
  store i32 14, i32* %2
  %3 = bitcast %"adtc$main.token.TokenType.CmpGT"* %1 to %"adt$main.token.TokenType"*
  ret %"adt$main.token.TokenType"* %3
}

define %"adt$main.token.TokenType"* @"adtcfn$adtc$main.token.TokenType.CmpLE"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.token.TokenType.CmpLE"*
  %2 = getelementptr inbounds %"adtc$main.token.TokenType.CmpLE", %"adtc$main.token.TokenType.CmpLE"* %1, i32 0, i32 0
  store i32 15, i32* %2
  %3 = bitcast %"adtc$main.token.TokenType.CmpLE"* %1 to %"adt$main.token.TokenType"*
  ret %"adt$main.token.TokenType"* %3
}

define %"adt$main.token.TokenType"* @"adtcfn$adtc$main.token.TokenType.CmpGE"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.token.TokenType.CmpGE"*
  %2 = getelementptr inbounds %"adtc$main.token.TokenType.CmpGE", %"adtc$main.token.TokenType.CmpGE"* %1, i32 0, i32 0
  store i32 16, i32* %2
  %3 = bitcast %"adtc$main.token.TokenType.CmpGE"* %1 to %"adt$main.token.TokenType"*
  ret %"adt$main.token.TokenType"* %3
}

define %"adt$main.token.TokenType"* @"adtcfn$adtc$main.token.TokenType.Minus"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.token.TokenType.Minus"*
  %2 = getelementptr inbounds %"adtc$main.token.TokenType.Minus", %"adtc$main.token.TokenType.Minus"* %1, i32 0, i32 0
  store i32 17, i32* %2
  %3 = bitcast %"adtc$main.token.TokenType.Minus"* %1 to %"adt$main.token.TokenType"*
  ret %"adt$main.token.TokenType"* %3
}

define %"adt$main.token.TokenType"* @"adtcfn$adtc$main.token.TokenType.Plus"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.token.TokenType.Plus"*
  %2 = getelementptr inbounds %"adtc$main.token.TokenType.Plus", %"adtc$main.token.TokenType.Plus"* %1, i32 0, i32 0
  store i32 18, i32* %2
  %3 = bitcast %"adtc$main.token.TokenType.Plus"* %1 to %"adt$main.token.TokenType"*
  ret %"adt$main.token.TokenType"* %3
}

define %"adt$main.token.TokenType"* @"adtcfn$adtc$main.token.TokenType.Divide"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.token.TokenType.Divide"*
  %2 = getelementptr inbounds %"adtc$main.token.TokenType.Divide", %"adtc$main.token.TokenType.Divide"* %1, i32 0, i32 0
  store i32 19, i32* %2
  %3 = bitcast %"adtc$main.token.TokenType.Divide"* %1 to %"adt$main.token.TokenType"*
  ret %"adt$main.token.TokenType"* %3
}

define %"adt$main.token.TokenType"* @"adtcfn$adtc$main.token.TokenType.Multiply"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.token.TokenType.Multiply"*
  %2 = getelementptr inbounds %"adtc$main.token.TokenType.Multiply", %"adtc$main.token.TokenType.Multiply"* %1, i32 0, i32 0
  store i32 20, i32* %2
  %3 = bitcast %"adtc$main.token.TokenType.Multiply"* %1 to %"adt$main.token.TokenType"*
  ret %"adt$main.token.TokenType"* %3
}

define %"adt$main.token.TokenType"* @"adtcfn$adtc$main.token.TokenType.KImport"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.token.TokenType.KImport"*
  %2 = getelementptr inbounds %"adtc$main.token.TokenType.KImport", %"adtc$main.token.TokenType.KImport"* %1, i32 0, i32 0
  store i32 21, i32* %2
  %3 = bitcast %"adtc$main.token.TokenType.KImport"* %1 to %"adt$main.token.TokenType"*
  ret %"adt$main.token.TokenType"* %3
}

define %"adt$main.token.TokenType"* @"adtcfn$adtc$main.token.TokenType.KFunction"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.token.TokenType.KFunction"*
  %2 = getelementptr inbounds %"adtc$main.token.TokenType.KFunction", %"adtc$main.token.TokenType.KFunction"* %1, i32 0, i32 0
  store i32 22, i32* %2
  %3 = bitcast %"adtc$main.token.TokenType.KFunction"* %1 to %"adt$main.token.TokenType"*
  ret %"adt$main.token.TokenType"* %3
}

define %"adt$main.token.TokenType"* @"adtcfn$adtc$main.token.TokenType.KEnd"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.token.TokenType.KEnd"*
  %2 = getelementptr inbounds %"adtc$main.token.TokenType.KEnd", %"adtc$main.token.TokenType.KEnd"* %1, i32 0, i32 0
  store i32 23, i32* %2
  %3 = bitcast %"adtc$main.token.TokenType.KEnd"* %1 to %"adt$main.token.TokenType"*
  ret %"adt$main.token.TokenType"* %3
}

define %"adt$main.token.TokenType"* @"adtcfn$adtc$main.token.TokenType.KVar"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.token.TokenType.KVar"*
  %2 = getelementptr inbounds %"adtc$main.token.TokenType.KVar", %"adtc$main.token.TokenType.KVar"* %1, i32 0, i32 0
  store i32 24, i32* %2
  %3 = bitcast %"adtc$main.token.TokenType.KVar"* %1 to %"adt$main.token.TokenType"*
  ret %"adt$main.token.TokenType"* %3
}

define %"adt$main.token.TokenType"* @"adtcfn$adtc$main.token.TokenType.KField"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.token.TokenType.KField"*
  %2 = getelementptr inbounds %"adtc$main.token.TokenType.KField", %"adtc$main.token.TokenType.KField"* %1, i32 0, i32 0
  store i32 25, i32* %2
  %3 = bitcast %"adtc$main.token.TokenType.KField"* %1 to %"adt$main.token.TokenType"*
  ret %"adt$main.token.TokenType"* %3
}

define %"adt$main.token.TokenType"* @"adtcfn$adtc$main.token.TokenType.KNew"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.token.TokenType.KNew"*
  %2 = getelementptr inbounds %"adtc$main.token.TokenType.KNew", %"adtc$main.token.TokenType.KNew"* %1, i32 0, i32 0
  store i32 26, i32* %2
  %3 = bitcast %"adtc$main.token.TokenType.KNew"* %1 to %"adt$main.token.TokenType"*
  ret %"adt$main.token.TokenType"* %3
}

define %"adt$main.token.TokenType"* @"adtcfn$adtc$main.token.TokenType.KReturn"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.token.TokenType.KReturn"*
  %2 = getelementptr inbounds %"adtc$main.token.TokenType.KReturn", %"adtc$main.token.TokenType.KReturn"* %1, i32 0, i32 0
  store i32 27, i32* %2
  %3 = bitcast %"adtc$main.token.TokenType.KReturn"* %1 to %"adt$main.token.TokenType"*
  ret %"adt$main.token.TokenType"* %3
}

define %"adt$main.token.TokenType"* @"adtcfn$adtc$main.token.TokenType.KIf"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.token.TokenType.KIf"*
  %2 = getelementptr inbounds %"adtc$main.token.TokenType.KIf", %"adtc$main.token.TokenType.KIf"* %1, i32 0, i32 0
  store i32 28, i32* %2
  %3 = bitcast %"adtc$main.token.TokenType.KIf"* %1 to %"adt$main.token.TokenType"*
  ret %"adt$main.token.TokenType"* %3
}

define %"adt$main.token.TokenType"* @"adtcfn$adtc$main.token.TokenType.KThen"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.token.TokenType.KThen"*
  %2 = getelementptr inbounds %"adtc$main.token.TokenType.KThen", %"adtc$main.token.TokenType.KThen"* %1, i32 0, i32 0
  store i32 29, i32* %2
  %3 = bitcast %"adtc$main.token.TokenType.KThen"* %1 to %"adt$main.token.TokenType"*
  ret %"adt$main.token.TokenType"* %3
}

define %"adt$main.token.TokenType"* @"adtcfn$adtc$main.token.TokenType.KElse"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.token.TokenType.KElse"*
  %2 = getelementptr inbounds %"adtc$main.token.TokenType.KElse", %"adtc$main.token.TokenType.KElse"* %1, i32 0, i32 0
  store i32 30, i32* %2
  %3 = bitcast %"adtc$main.token.TokenType.KElse"* %1 to %"adt$main.token.TokenType"*
  ret %"adt$main.token.TokenType"* %3
}

define %"adt$main.token.TokenType"* @"adtcfn$adtc$main.token.TokenType.KElIf"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.token.TokenType.KElIf"*
  %2 = getelementptr inbounds %"adtc$main.token.TokenType.KElIf", %"adtc$main.token.TokenType.KElIf"* %1, i32 0, i32 0
  store i32 31, i32* %2
  %3 = bitcast %"adtc$main.token.TokenType.KElIf"* %1 to %"adt$main.token.TokenType"*
  ret %"adt$main.token.TokenType"* %3
}

define %"adt$main.token.TokenType"* @"adtcfn$adtc$main.token.TokenType.KWhile"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.token.TokenType.KWhile"*
  %2 = getelementptr inbounds %"adtc$main.token.TokenType.KWhile", %"adtc$main.token.TokenType.KWhile"* %1, i32 0, i32 0
  store i32 32, i32* %2
  %3 = bitcast %"adtc$main.token.TokenType.KWhile"* %1 to %"adt$main.token.TokenType"*
  ret %"adt$main.token.TokenType"* %3
}

define %"adt$main.token.TokenType"* @"adtcfn$adtc$main.token.TokenType.KDo"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.token.TokenType.KDo"*
  %2 = getelementptr inbounds %"adtc$main.token.TokenType.KDo", %"adtc$main.token.TokenType.KDo"* %1, i32 0, i32 0
  store i32 33, i32* %2
  %3 = bitcast %"adtc$main.token.TokenType.KDo"* %1 to %"adt$main.token.TokenType"*
  ret %"adt$main.token.TokenType"* %3
}

define %"adt$main.token.TokenType"* @"adtcfn$adtc$main.token.TokenType.KAnd"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.token.TokenType.KAnd"*
  %2 = getelementptr inbounds %"adtc$main.token.TokenType.KAnd", %"adtc$main.token.TokenType.KAnd"* %1, i32 0, i32 0
  store i32 34, i32* %2
  %3 = bitcast %"adtc$main.token.TokenType.KAnd"* %1 to %"adt$main.token.TokenType"*
  ret %"adt$main.token.TokenType"* %3
}

define %"adt$main.token.TokenType"* @"adtcfn$adtc$main.token.TokenType.KOr"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.token.TokenType.KOr"*
  %2 = getelementptr inbounds %"adtc$main.token.TokenType.KOr", %"adtc$main.token.TokenType.KOr"* %1, i32 0, i32 0
  store i32 35, i32* %2
  %3 = bitcast %"adtc$main.token.TokenType.KOr"* %1 to %"adt$main.token.TokenType"*
  ret %"adt$main.token.TokenType"* %3
}

define %"adt$main.token.TokenType"* @"adtcfn$adtc$main.token.TokenType.KADT"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.token.TokenType.KADT"*
  %2 = getelementptr inbounds %"adtc$main.token.TokenType.KADT", %"adtc$main.token.TokenType.KADT"* %1, i32 0, i32 0
  store i32 36, i32* %2
  %3 = bitcast %"adtc$main.token.TokenType.KADT"* %1 to %"adt$main.token.TokenType"*
  ret %"adt$main.token.TokenType"* %3
}

define %"adt$main.token.TokenType"* @"adtcfn$adtc$main.token.TokenType.KMatch"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.token.TokenType.KMatch"*
  %2 = getelementptr inbounds %"adtc$main.token.TokenType.KMatch", %"adtc$main.token.TokenType.KMatch"* %1, i32 0, i32 0
  store i32 37, i32* %2
  %3 = bitcast %"adtc$main.token.TokenType.KMatch"* %1 to %"adt$main.token.TokenType"*
  ret %"adt$main.token.TokenType"* %3
}

define %"adt$main.token.TokenType"* @"adtcfn$adtc$main.token.TokenType.KCase"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.token.TokenType.KCase"*
  %2 = getelementptr inbounds %"adtc$main.token.TokenType.KCase", %"adtc$main.token.TokenType.KCase"* %1, i32 0, i32 0
  store i32 38, i32* %2
  %3 = bitcast %"adtc$main.token.TokenType.KCase"* %1 to %"adt$main.token.TokenType"*
  ret %"adt$main.token.TokenType"* %3
}

define %"adt$main.token.TokenType"* @"adtcfn$adtc$main.token.TokenType.KGlobal"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.token.TokenType.KGlobal"*
  %2 = getelementptr inbounds %"adtc$main.token.TokenType.KGlobal", %"adtc$main.token.TokenType.KGlobal"* %1, i32 0, i32 0
  store i32 39, i32* %2
  %3 = bitcast %"adtc$main.token.TokenType.KGlobal"* %1 to %"adt$main.token.TokenType"*
  ret %"adt$main.token.TokenType"* %3
}

define %"adt$main.token.TokenType"* @"adtcfn$adtc$main.token.TokenType.EOF"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.token.TokenType.EOF"*
  %2 = getelementptr inbounds %"adtc$main.token.TokenType.EOF", %"adtc$main.token.TokenType.EOF"* %1, i32 0, i32 0
  store i32 40, i32* %2
  %3 = bitcast %"adtc$main.token.TokenType.EOF"* %1 to %"adt$main.token.TokenType"*
  ret %"adt$main.token.TokenType"* %3
}
