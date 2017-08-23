; ModuleID = 'main.test'
source_filename = "main.test"

%"adt$main.test.ExprTest" = type { i32 }
%"adt$main.test.Expr" = type { i32 }
%"adtc$main.test.ExprTest.Test" = type { i32, %"adt$main.test.Expr"*, i32 }
%"adt$main.test.Operator" = type { i32 }
%"adtc$main.test.Expr.If" = type { i32, %"adt$main.test.Expr"*, %"adt$main.test.Expr"*, %"adt$main.test.Expr"* }
%"adtc$main.test.Expr.BinOp" = type { i32, %"adt$main.test.Expr"*, %"adt$main.test.Operator"*, %"adt$main.test.Expr"* }
%"adtc$main.test.Expr.Cons" = type { i32, i32 }
%"adtc$main.test.Operator.Less" = type { i32 }
%"adtc$main.test.Operator.Plus" = type { i32 }
%"adtc$main.test.Operator.Minus" = type { i32 }
%"adtc$main.test.Operator.Divide" = type { i32 }
%"adtc$main.test.Operator.Multiply" = type { i32 }

@0 = private global [14 x i8] c"Running test \00"
@1 = private global [9 x i8] c"OK, got \00"
@2 = private global [18 x i8] c"FAILED! Expected \00"
@3 = private global [7 x i8] c", got \00"
@4 = private global [2 x i8] c"(\00"
@5 = private global [2 x i8] c" \00"
@6 = private global [2 x i8] c" \00"
@7 = private global [2 x i8] c")\00"
@8 = private global [2 x i8] c"(\00"
@9 = private global [2 x i8] c"?\00"
@10 = private global [2 x i8] c":\00"
@11 = private global [2 x i8] c")\00"
@12 = private global [2 x i8] c"+\00"
@13 = private global [2 x i8] c"-\00"
@14 = private global [2 x i8] c"/\00"
@15 = private global [2 x i8] c"*\00"
@16 = private global [2 x i8] c"<\00"

define void @_jf_entry_point() {
entry:
  br label %0

; <label>:0:                                      ; preds = %entry
  %1 = call %"adt$main.test.ExprTest"* @"fn$main.test.test_case_1"()
  call void @"fn$main.test.run_test"(%"adt$main.test.ExprTest"* %1)
  %2 = call %"adt$main.test.ExprTest"* @"fn$main.test.test_case_2"()
  call void @"fn$main.test.run_test"(%"adt$main.test.ExprTest"* %2)
  %3 = call %"adt$main.test.ExprTest"* @"fn$main.test.test_case_3"()
  call void @"fn$main.test.run_test"(%"adt$main.test.ExprTest"* %3)
  %4 = call %"adt$main.test.ExprTest"* @"fn$main.test.test_case_4"()
  call void @"fn$main.test.run_test"(%"adt$main.test.ExprTest"* %4)
  ret void
}

define %"adt$main.test.ExprTest"* @"fn$main.test.test_case_1"() {
entry:
  br label %0

; <label>:0:                                      ; preds = %entry
  %1 = call %"adt$main.test.Expr"* @"adtcfn$adtc$main.test.Expr.Cons"(i32 1)
  %2 = call %"adt$main.test.ExprTest"* @"adtcfn$adtc$main.test.ExprTest.Test"(%"adt$main.test.Expr"* %1, i32 1)
  ret %"adt$main.test.ExprTest"* %2
}

define void @"fn$main.test.run_test"(%"adt$main.test.ExprTest"* %test) {
entry:
  %actual = alloca i32
  %bake.test = alloca %"adt$main.test.ExprTest"*
  store %"adt$main.test.ExprTest"* %test, %"adt$main.test.ExprTest"** %bake.test
  br label %25

; <label>:0:                                      ; preds = %1, %8
  br label %24

; <label>:1:                                      ; preds = %12
  %2 = call i8* @"fn$main.test.IntToStr"(i32 %18)
  %3 = call i8* @jf_string_concat(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i32 0, i32 0), i8* %2)
  %4 = call i8* @jf_string_concat(i8* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @3, i32 0, i32 0))
  %5 = load i32, i32* %actual
  %6 = call i8* @"fn$main.test.IntToStr"(i32 %5)
  %7 = call i8* @jf_string_concat(i8* %4, i8* %6)
  call void @"fn$main.test.Trace"(i8* %7)
  br label %0

; <label>:8:                                      ; preds = %12
  %9 = load i32, i32* %actual
  %10 = call i8* @"fn$main.test.IntToStr"(i32 %9)
  %11 = call i8* @jf_string_concat(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @1, i32 0, i32 0), i8* %10)
  call void @"fn$main.test.Trace"(i8* %11)
  br label %0

; <label>:12:                                     ; preds = %25
  %13 = bitcast %"adt$main.test.ExprTest"* %26 to %"adtc$main.test.ExprTest.Test"*
  %14 = getelementptr inbounds %"adtc$main.test.ExprTest.Test", %"adtc$main.test.ExprTest.Test"* %13, i32 0, i32 1
  %15 = load %"adt$main.test.Expr"*, %"adt$main.test.Expr"** %14
  %16 = bitcast %"adt$main.test.ExprTest"* %26 to %"adtc$main.test.ExprTest.Test"*
  %17 = getelementptr inbounds %"adtc$main.test.ExprTest.Test", %"adtc$main.test.ExprTest.Test"* %16, i32 0, i32 2
  %18 = load i32, i32* %17
  %19 = call i8* @"fn$main.test.print_expr"(%"adt$main.test.Expr"* %15)
  %20 = call i8* @jf_string_concat(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @0, i32 0, i32 0), i8* %19)
  call void @"fn$main.test.Trace"(i8* %20)
  %21 = call i32 @"fn$main.test.eval"(%"adt$main.test.Expr"* %15)
  store i32 %21, i32* %actual
  %22 = load i32, i32* %actual
  %23 = icmp eq i32 %22, %18
  br i1 %23, label %8, label %1

; <label>:24:                                     ; preds = %0, %25
  ret void

; <label>:25:                                     ; preds = %entry
  %26 = load %"adt$main.test.ExprTest"*, %"adt$main.test.ExprTest"** %bake.test
  %27 = getelementptr inbounds %"adt$main.test.ExprTest", %"adt$main.test.ExprTest"* %26, i32 0, i32 0
  %28 = load i32, i32* %27
  switch i32 %28, label %24 [
    i32 0, label %12
  ]
}

define %"adt$main.test.ExprTest"* @"fn$main.test.test_case_2"() {
entry:
  br label %0

; <label>:0:                                      ; preds = %entry
  %1 = call %"adt$main.test.Expr"* @"adtcfn$adtc$main.test.Expr.Cons"(i32 2)
  %2 = call %"adt$main.test.Operator"* @"adtcfn$adtc$main.test.Operator.Plus"()
  %3 = call %"adt$main.test.Expr"* @"adtcfn$adtc$main.test.Expr.Cons"(i32 3)
  %4 = call %"adt$main.test.Expr"* @"adtcfn$adtc$main.test.Expr.BinOp"(%"adt$main.test.Expr"* %1, %"adt$main.test.Operator"* %2, %"adt$main.test.Expr"* %3)
  %5 = call %"adt$main.test.ExprTest"* @"adtcfn$adtc$main.test.ExprTest.Test"(%"adt$main.test.Expr"* %4, i32 5)
  ret %"adt$main.test.ExprTest"* %5
}

define %"adt$main.test.ExprTest"* @"fn$main.test.test_case_3"() {
entry:
  br label %0

; <label>:0:                                      ; preds = %entry
  %1 = call %"adt$main.test.Expr"* @"adtcfn$adtc$main.test.Expr.Cons"(i32 7)
  %2 = call %"adt$main.test.Operator"* @"adtcfn$adtc$main.test.Operator.Less"()
  %3 = call %"adt$main.test.Expr"* @"adtcfn$adtc$main.test.Expr.Cons"(i32 2)
  %4 = call %"adt$main.test.Operator"* @"adtcfn$adtc$main.test.Operator.Plus"()
  %5 = call %"adt$main.test.Expr"* @"adtcfn$adtc$main.test.Expr.Cons"(i32 3)
  %6 = call %"adt$main.test.Expr"* @"adtcfn$adtc$main.test.Expr.BinOp"(%"adt$main.test.Expr"* %3, %"adt$main.test.Operator"* %4, %"adt$main.test.Expr"* %5)
  %7 = call %"adt$main.test.Expr"* @"adtcfn$adtc$main.test.Expr.BinOp"(%"adt$main.test.Expr"* %1, %"adt$main.test.Operator"* %2, %"adt$main.test.Expr"* %6)
  %8 = call %"adt$main.test.Expr"* @"adtcfn$adtc$main.test.Expr.Cons"(i32 17)
  %9 = call %"adt$main.test.Expr"* @"adtcfn$adtc$main.test.Expr.Cons"(i32 42)
  %10 = call %"adt$main.test.Expr"* @"adtcfn$adtc$main.test.Expr.If"(%"adt$main.test.Expr"* %7, %"adt$main.test.Expr"* %8, %"adt$main.test.Expr"* %9)
  %11 = call %"adt$main.test.ExprTest"* @"adtcfn$adtc$main.test.ExprTest.Test"(%"adt$main.test.Expr"* %10, i32 42)
  ret %"adt$main.test.ExprTest"* %11
}

define %"adt$main.test.ExprTest"* @"fn$main.test.test_case_4"() {
entry:
  br label %0

; <label>:0:                                      ; preds = %entry
  %1 = call %"adt$main.test.Expr"* @"adtcfn$adtc$main.test.Expr.Cons"(i32 3)
  %2 = call %"adt$main.test.Operator"* @"adtcfn$adtc$main.test.Operator.Less"()
  %3 = call %"adt$main.test.Expr"* @"adtcfn$adtc$main.test.Expr.Cons"(i32 2)
  %4 = call %"adt$main.test.Operator"* @"adtcfn$adtc$main.test.Operator.Plus"()
  %5 = call %"adt$main.test.Expr"* @"adtcfn$adtc$main.test.Expr.Cons"(i32 3)
  %6 = call %"adt$main.test.Expr"* @"adtcfn$adtc$main.test.Expr.BinOp"(%"adt$main.test.Expr"* %3, %"adt$main.test.Operator"* %4, %"adt$main.test.Expr"* %5)
  %7 = call %"adt$main.test.Expr"* @"adtcfn$adtc$main.test.Expr.BinOp"(%"adt$main.test.Expr"* %1, %"adt$main.test.Operator"* %2, %"adt$main.test.Expr"* %6)
  %8 = call %"adt$main.test.Expr"* @"adtcfn$adtc$main.test.Expr.Cons"(i32 17)
  %9 = call %"adt$main.test.Expr"* @"adtcfn$adtc$main.test.Expr.Cons"(i32 42)
  %10 = call %"adt$main.test.Expr"* @"adtcfn$adtc$main.test.Expr.If"(%"adt$main.test.Expr"* %7, %"adt$main.test.Expr"* %8, %"adt$main.test.Expr"* %9)
  %11 = call %"adt$main.test.ExprTest"* @"adtcfn$adtc$main.test.ExprTest.Test"(%"adt$main.test.Expr"* %10, i32 17)
  ret %"adt$main.test.ExprTest"* %11
}

define i8* @"fn$main.test.print_expr"(%"adt$main.test.Expr"* %e) {
entry:
  %bake.e = alloca %"adt$main.test.Expr"*
  store %"adt$main.test.Expr"* %e, %"adt$main.test.Expr"** %bake.e
  br label %44

; <label>:0:                                      ; preds = %44
  %1 = bitcast %"adt$main.test.Expr"* %45 to %"adtc$main.test.Expr.If"*
  %2 = getelementptr inbounds %"adtc$main.test.Expr.If", %"adtc$main.test.Expr.If"* %1, i32 0, i32 1
  %3 = load %"adt$main.test.Expr"*, %"adt$main.test.Expr"** %2
  %4 = bitcast %"adt$main.test.Expr"* %45 to %"adtc$main.test.Expr.If"*
  %5 = getelementptr inbounds %"adtc$main.test.Expr.If", %"adtc$main.test.Expr.If"* %4, i32 0, i32 2
  %6 = load %"adt$main.test.Expr"*, %"adt$main.test.Expr"** %5
  %7 = bitcast %"adt$main.test.Expr"* %45 to %"adtc$main.test.Expr.If"*
  %8 = getelementptr inbounds %"adtc$main.test.Expr.If", %"adtc$main.test.Expr.If"* %7, i32 0, i32 3
  %9 = load %"adt$main.test.Expr"*, %"adt$main.test.Expr"** %8
  %10 = call i8* @"fn$main.test.print_expr"(%"adt$main.test.Expr"* %3)
  %11 = call i8* @jf_string_concat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @8, i32 0, i32 0), i8* %10)
  %12 = call i8* @jf_string_concat(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @9, i32 0, i32 0))
  %13 = call i8* @"fn$main.test.print_expr"(%"adt$main.test.Expr"* %6)
  %14 = call i8* @jf_string_concat(i8* %12, i8* %13)
  %15 = call i8* @jf_string_concat(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @10, i32 0, i32 0))
  %16 = call i8* @"fn$main.test.print_expr"(%"adt$main.test.Expr"* %9)
  %17 = call i8* @jf_string_concat(i8* %15, i8* %16)
  %18 = call i8* @jf_string_concat(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @11, i32 0, i32 0))
  ret i8* %18

; <label>:19:                                     ; preds = %44
  %20 = bitcast %"adt$main.test.Expr"* %45 to %"adtc$main.test.Expr.BinOp"*
  %21 = getelementptr inbounds %"adtc$main.test.Expr.BinOp", %"adtc$main.test.Expr.BinOp"* %20, i32 0, i32 1
  %22 = load %"adt$main.test.Expr"*, %"adt$main.test.Expr"** %21
  %23 = bitcast %"adt$main.test.Expr"* %45 to %"adtc$main.test.Expr.BinOp"*
  %24 = getelementptr inbounds %"adtc$main.test.Expr.BinOp", %"adtc$main.test.Expr.BinOp"* %23, i32 0, i32 2
  %25 = load %"adt$main.test.Operator"*, %"adt$main.test.Operator"** %24
  %26 = bitcast %"adt$main.test.Expr"* %45 to %"adtc$main.test.Expr.BinOp"*
  %27 = getelementptr inbounds %"adtc$main.test.Expr.BinOp", %"adtc$main.test.Expr.BinOp"* %26, i32 0, i32 3
  %28 = load %"adt$main.test.Expr"*, %"adt$main.test.Expr"** %27
  %29 = call i8* @"fn$main.test.print_expr"(%"adt$main.test.Expr"* %22)
  %30 = call i8* @jf_string_concat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @4, i32 0, i32 0), i8* %29)
  %31 = call i8* @jf_string_concat(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @5, i32 0, i32 0))
  %32 = call i8* @"fn$main.test.print_op"(%"adt$main.test.Operator"* %25)
  %33 = call i8* @jf_string_concat(i8* %31, i8* %32)
  %34 = call i8* @jf_string_concat(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @6, i32 0, i32 0))
  %35 = call i8* @"fn$main.test.print_expr"(%"adt$main.test.Expr"* %28)
  %36 = call i8* @jf_string_concat(i8* %34, i8* %35)
  %37 = call i8* @jf_string_concat(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @7, i32 0, i32 0))
  ret i8* %37

; <label>:38:                                     ; preds = %44
  %39 = bitcast %"adt$main.test.Expr"* %45 to %"adtc$main.test.Expr.Cons"*
  %40 = getelementptr inbounds %"adtc$main.test.Expr.Cons", %"adtc$main.test.Expr.Cons"* %39, i32 0, i32 1
  %41 = load i32, i32* %40
  %42 = call i8* @"fn$main.test.IntToStr"(i32 %41)
  ret i8* %42

; <label>:43:                                     ; preds = %44
  unreachable

; <label>:44:                                     ; preds = %entry
  %45 = load %"adt$main.test.Expr"*, %"adt$main.test.Expr"** %bake.e
  %46 = getelementptr inbounds %"adt$main.test.Expr", %"adt$main.test.Expr"* %45, i32 0, i32 0
  %47 = load i32, i32* %46
  switch i32 %47, label %43 [
    i32 2, label %0
    i32 1, label %19
    i32 0, label %38
  ]
}

declare i8* @jf_string_concat(i8*, i8*)

define void @"fn$main.test.Trace"(i8* %message) {
entry:
  call void @puts(i8* %message)
  ret void
}

define i32 @"fn$main.test.eval"(%"adt$main.test.Expr"* %e) {
entry:
  %c = alloca i32
  %r = alloca i32
  %l = alloca i32
  %bake.e = alloca %"adt$main.test.Expr"*
  store %"adt$main.test.Expr"* %e, %"adt$main.test.Expr"** %bake.e
  br label %61
                                                  ; No predecessors!
  br label %60

; <label>:1:                                      ; preds = %5
  %2 = call i32 @"fn$main.test.eval"(%"adt$main.test.Expr"* %14)
  ret i32 %2

; <label>:3:                                      ; preds = %5
  %4 = call i32 @"fn$main.test.eval"(%"adt$main.test.Expr"* %11)
  ret i32 %4

; <label>:5:                                      ; preds = %61
  %6 = bitcast %"adt$main.test.Expr"* %62 to %"adtc$main.test.Expr.If"*
  %7 = getelementptr inbounds %"adtc$main.test.Expr.If", %"adtc$main.test.Expr.If"* %6, i32 0, i32 1
  %8 = load %"adt$main.test.Expr"*, %"adt$main.test.Expr"** %7
  %9 = bitcast %"adt$main.test.Expr"* %62 to %"adtc$main.test.Expr.If"*
  %10 = getelementptr inbounds %"adtc$main.test.Expr.If", %"adtc$main.test.Expr.If"* %9, i32 0, i32 2
  %11 = load %"adt$main.test.Expr"*, %"adt$main.test.Expr"** %10
  %12 = bitcast %"adt$main.test.Expr"* %62 to %"adtc$main.test.Expr.If"*
  %13 = getelementptr inbounds %"adtc$main.test.Expr.If", %"adtc$main.test.Expr.If"* %12, i32 0, i32 3
  %14 = load %"adt$main.test.Expr"*, %"adt$main.test.Expr"** %13
  %15 = call i32 @"fn$main.test.eval"(%"adt$main.test.Expr"* %8)
  store i32 %15, i32* %c
  %16 = load i32, i32* %c
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %3, label %1
                                                  ; No predecessors!
  br label %41

; <label>:19:                                     ; preds = %21
  ret i32 0

; <label>:20:                                     ; preds = %21
  ret i32 1

; <label>:21:                                     ; preds = %42
  %22 = load i32, i32* %l
  %23 = load i32, i32* %r
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %20, label %19

; <label>:25:                                     ; preds = %42
  %26 = load i32, i32* %l
  %27 = load i32, i32* %r
  %28 = mul i32 %26, %27
  ret i32 %28

; <label>:29:                                     ; preds = %42
  %30 = load i32, i32* %l
  %31 = load i32, i32* %r
  %32 = sdiv i32 %30, %31
  ret i32 %32

; <label>:33:                                     ; preds = %42
  %34 = load i32, i32* %l
  %35 = load i32, i32* %r
  %36 = sub i32 %34, %35
  ret i32 %36

; <label>:37:                                     ; preds = %42
  %38 = load i32, i32* %l
  %39 = load i32, i32* %r
  %40 = add i32 %38, %39
  ret i32 %40

; <label>:41:                                     ; preds = %18, %42
  br label %60

; <label>:42:                                     ; preds = %61
  %43 = bitcast %"adt$main.test.Expr"* %62 to %"adtc$main.test.Expr.BinOp"*
  %44 = getelementptr inbounds %"adtc$main.test.Expr.BinOp", %"adtc$main.test.Expr.BinOp"* %43, i32 0, i32 1
  %45 = load %"adt$main.test.Expr"*, %"adt$main.test.Expr"** %44
  %46 = bitcast %"adt$main.test.Expr"* %62 to %"adtc$main.test.Expr.BinOp"*
  %47 = getelementptr inbounds %"adtc$main.test.Expr.BinOp", %"adtc$main.test.Expr.BinOp"* %46, i32 0, i32 2
  %48 = load %"adt$main.test.Operator"*, %"adt$main.test.Operator"** %47
  %49 = bitcast %"adt$main.test.Expr"* %62 to %"adtc$main.test.Expr.BinOp"*
  %50 = getelementptr inbounds %"adtc$main.test.Expr.BinOp", %"adtc$main.test.Expr.BinOp"* %49, i32 0, i32 3
  %51 = load %"adt$main.test.Expr"*, %"adt$main.test.Expr"** %50
  %52 = call i32 @"fn$main.test.eval"(%"adt$main.test.Expr"* %45)
  store i32 %52, i32* %l
  %53 = call i32 @"fn$main.test.eval"(%"adt$main.test.Expr"* %51)
  store i32 %53, i32* %r
  %54 = getelementptr inbounds %"adt$main.test.Operator", %"adt$main.test.Operator"* %48, i32 0, i32 0
  %55 = load i32, i32* %54
  switch i32 %55, label %41 [
    i32 4, label %21
    i32 3, label %25
    i32 2, label %29
    i32 1, label %33
    i32 0, label %37
  ]

; <label>:56:                                     ; preds = %61
  %57 = bitcast %"adt$main.test.Expr"* %62 to %"adtc$main.test.Expr.Cons"*
  %58 = getelementptr inbounds %"adtc$main.test.Expr.Cons", %"adtc$main.test.Expr.Cons"* %57, i32 0, i32 1
  %59 = load i32, i32* %58
  ret i32 %59

; <label>:60:                                     ; preds = %0, %41, %61
  unreachable

; <label>:61:                                     ; preds = %entry
  %62 = load %"adt$main.test.Expr"*, %"adt$main.test.Expr"** %bake.e
  %63 = getelementptr inbounds %"adt$main.test.Expr", %"adt$main.test.Expr"* %62, i32 0, i32 0
  %64 = load i32, i32* %63
  switch i32 %64, label %60 [
    i32 2, label %5
    i32 1, label %42
    i32 0, label %56
  ]
}

define i8* @"fn$main.test.IntToStr"(i32 %x) {
entry:
  %0 = call i8* @jfprelude_IntToStr(i32 %x)
  ret i8* %0
}

define %"adt$main.test.Expr"* @"adtcfn$adtc$main.test.Expr.Cons"(i32 %x) {
entry:
  %0 = call i8* @jf_allocate(i32 trunc (i64 mul nuw (i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i64 2) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.test.Expr.Cons"*
  %2 = getelementptr inbounds %"adtc$main.test.Expr.Cons", %"adtc$main.test.Expr.Cons"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = getelementptr inbounds %"adtc$main.test.Expr.Cons", %"adtc$main.test.Expr.Cons"* %1, i32 0, i32 1
  store i32 %x, i32* %3
  %4 = bitcast %"adtc$main.test.Expr.Cons"* %1 to %"adt$main.test.Expr"*
  ret %"adt$main.test.Expr"* %4
}

define %"adt$main.test.Operator"* @"adtcfn$adtc$main.test.Operator.Less"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.test.Operator.Less"*
  %2 = getelementptr inbounds %"adtc$main.test.Operator.Less", %"adtc$main.test.Operator.Less"* %1, i32 0, i32 0
  store i32 4, i32* %2
  %3 = bitcast %"adtc$main.test.Operator.Less"* %1 to %"adt$main.test.Operator"*
  ret %"adt$main.test.Operator"* %3
}

define %"adt$main.test.Operator"* @"adtcfn$adtc$main.test.Operator.Plus"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.test.Operator.Plus"*
  %2 = getelementptr inbounds %"adtc$main.test.Operator.Plus", %"adtc$main.test.Operator.Plus"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.test.Operator.Plus"* %1 to %"adt$main.test.Operator"*
  ret %"adt$main.test.Operator"* %3
}

define %"adt$main.test.Expr"* @"adtcfn$adtc$main.test.Expr.BinOp"(%"adt$main.test.Expr"* %lhs, %"adt$main.test.Operator"* %op, %"adt$main.test.Expr"* %rhs) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.test.Expr.BinOp"* getelementptr (%"adtc$main.test.Expr.BinOp", %"adtc$main.test.Expr.BinOp"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.test.Expr.BinOp"*
  %2 = getelementptr inbounds %"adtc$main.test.Expr.BinOp", %"adtc$main.test.Expr.BinOp"* %1, i32 0, i32 0
  store i32 1, i32* %2
  %3 = getelementptr inbounds %"adtc$main.test.Expr.BinOp", %"adtc$main.test.Expr.BinOp"* %1, i32 0, i32 1
  store %"adt$main.test.Expr"* %lhs, %"adt$main.test.Expr"** %3
  %4 = getelementptr inbounds %"adtc$main.test.Expr.BinOp", %"adtc$main.test.Expr.BinOp"* %1, i32 0, i32 2
  store %"adt$main.test.Operator"* %op, %"adt$main.test.Operator"** %4
  %5 = getelementptr inbounds %"adtc$main.test.Expr.BinOp", %"adtc$main.test.Expr.BinOp"* %1, i32 0, i32 3
  store %"adt$main.test.Expr"* %rhs, %"adt$main.test.Expr"** %5
  %6 = bitcast %"adtc$main.test.Expr.BinOp"* %1 to %"adt$main.test.Expr"*
  ret %"adt$main.test.Expr"* %6
}

define %"adt$main.test.Expr"* @"adtcfn$adtc$main.test.Expr.If"(%"adt$main.test.Expr"* %cond, %"adt$main.test.Expr"* %on_true, %"adt$main.test.Expr"* %on_false) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.test.Expr.If"* getelementptr (%"adtc$main.test.Expr.If", %"adtc$main.test.Expr.If"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.test.Expr.If"*
  %2 = getelementptr inbounds %"adtc$main.test.Expr.If", %"adtc$main.test.Expr.If"* %1, i32 0, i32 0
  store i32 2, i32* %2
  %3 = getelementptr inbounds %"adtc$main.test.Expr.If", %"adtc$main.test.Expr.If"* %1, i32 0, i32 1
  store %"adt$main.test.Expr"* %cond, %"adt$main.test.Expr"** %3
  %4 = getelementptr inbounds %"adtc$main.test.Expr.If", %"adtc$main.test.Expr.If"* %1, i32 0, i32 2
  store %"adt$main.test.Expr"* %on_true, %"adt$main.test.Expr"** %4
  %5 = getelementptr inbounds %"adtc$main.test.Expr.If", %"adtc$main.test.Expr.If"* %1, i32 0, i32 3
  store %"adt$main.test.Expr"* %on_false, %"adt$main.test.Expr"** %5
  %6 = bitcast %"adtc$main.test.Expr.If"* %1 to %"adt$main.test.Expr"*
  ret %"adt$main.test.Expr"* %6
}

define %"adt$main.test.ExprTest"* @"adtcfn$adtc$main.test.ExprTest.Test"(%"adt$main.test.Expr"* %expr, i32 %result) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.test.ExprTest.Test"* getelementptr (%"adtc$main.test.ExprTest.Test", %"adtc$main.test.ExprTest.Test"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.test.ExprTest.Test"*
  %2 = getelementptr inbounds %"adtc$main.test.ExprTest.Test", %"adtc$main.test.ExprTest.Test"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = getelementptr inbounds %"adtc$main.test.ExprTest.Test", %"adtc$main.test.ExprTest.Test"* %1, i32 0, i32 1
  store %"adt$main.test.Expr"* %expr, %"adt$main.test.Expr"** %3
  %4 = getelementptr inbounds %"adtc$main.test.ExprTest.Test", %"adtc$main.test.ExprTest.Test"* %1, i32 0, i32 2
  store i32 %result, i32* %4
  %5 = bitcast %"adtc$main.test.ExprTest.Test"* %1 to %"adt$main.test.ExprTest"*
  ret %"adt$main.test.ExprTest"* %5
}

define i8* @"fn$main.test.print_op"(%"adt$main.test.Operator"* %op) {
entry:
  %bake.op = alloca %"adt$main.test.Operator"*
  store %"adt$main.test.Operator"* %op, %"adt$main.test.Operator"** %bake.op
  br label %6

; <label>:0:                                      ; preds = %6
  ret i8* getelementptr inbounds ([2 x i8], [2 x i8]* @16, i32 0, i32 0)

; <label>:1:                                      ; preds = %6
  ret i8* getelementptr inbounds ([2 x i8], [2 x i8]* @15, i32 0, i32 0)

; <label>:2:                                      ; preds = %6
  ret i8* getelementptr inbounds ([2 x i8], [2 x i8]* @14, i32 0, i32 0)

; <label>:3:                                      ; preds = %6
  ret i8* getelementptr inbounds ([2 x i8], [2 x i8]* @13, i32 0, i32 0)

; <label>:4:                                      ; preds = %6
  ret i8* getelementptr inbounds ([2 x i8], [2 x i8]* @12, i32 0, i32 0)

; <label>:5:                                      ; preds = %6
  unreachable

; <label>:6:                                      ; preds = %entry
  %7 = load %"adt$main.test.Operator"*, %"adt$main.test.Operator"** %bake.op
  %8 = getelementptr inbounds %"adt$main.test.Operator", %"adt$main.test.Operator"* %7, i32 0, i32 0
  %9 = load i32, i32* %8
  switch i32 %9, label %5 [
    i32 4, label %0
    i32 3, label %1
    i32 2, label %2
    i32 1, label %3
    i32 0, label %4
  ]
}

declare i8* @jf_allocate(i32)

define %"adt$main.test.Operator"* @"adtcfn$adtc$main.test.Operator.Minus"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.test.Operator.Minus"*
  %2 = getelementptr inbounds %"adtc$main.test.Operator.Minus", %"adtc$main.test.Operator.Minus"* %1, i32 0, i32 0
  store i32 1, i32* %2
  %3 = bitcast %"adtc$main.test.Operator.Minus"* %1 to %"adt$main.test.Operator"*
  ret %"adt$main.test.Operator"* %3
}

define %"adt$main.test.Operator"* @"adtcfn$adtc$main.test.Operator.Divide"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.test.Operator.Divide"*
  %2 = getelementptr inbounds %"adtc$main.test.Operator.Divide", %"adtc$main.test.Operator.Divide"* %1, i32 0, i32 0
  store i32 2, i32* %2
  %3 = bitcast %"adtc$main.test.Operator.Divide"* %1 to %"adt$main.test.Operator"*
  ret %"adt$main.test.Operator"* %3
}

define %"adt$main.test.Operator"* @"adtcfn$adtc$main.test.Operator.Multiply"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.test.Operator.Multiply"*
  %2 = getelementptr inbounds %"adtc$main.test.Operator.Multiply", %"adtc$main.test.Operator.Multiply"* %1, i32 0, i32 0
  store i32 3, i32* %2
  %3 = bitcast %"adtc$main.test.Operator.Multiply"* %1 to %"adt$main.test.Operator"*
  ret %"adt$main.test.Operator"* %3
}

declare i8* @jfprelude_IntToStr(i32)

declare void @puts(i8*)
