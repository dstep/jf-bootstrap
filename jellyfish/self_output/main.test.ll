; ModuleID = 'main.test'
source_filename = "main.test"

@0 = private global [9 x i8] c"Too much\00"
@1 = private global [11 x i8] c"Not enough\00"
@2 = private global [12 x i8] c"You got it!\00"
@3 = private global [25 x i8] c"Unfortunately, you lost!\00"
@4 = private global [18 x i8] c"This is attempt #\00"
@5 = private global [11 x i8] c"There are \00"
@6 = private global [12 x i8] c" tries left\00"
@7 = private global [13 x i8] c"Your guess? \00"

define void @_jf_entry_point() {
entry:
  %guess = alloca i32
  %maxTry = alloca i32
  %try = alloca i32
  %maxSecret = alloca i32
  %secret = alloca i32
  br label %32

; <label>:0:                                      ; preds = %2, %1
  br label %3

; <label>:1:                                      ; preds = %6
  call void @main.test.fn.Trace(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @0, i32 0, i32 0))
  br label %0

; <label>:2:                                      ; preds = %6
  call void @main.test.fn.Trace(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0))
  br label %0

; <label>:3:                                      ; preds = %0
  %4 = load i32, i32* %try
  %5 = add i32 %4, 1
  store i32 %5, i32* %try
  br label %28

; <label>:6:                                      ; preds = %12
  %7 = load i32, i32* %guess
  %8 = load i32, i32* %secret
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %2, label %1

; <label>:10:                                     ; preds = %12
  call void @main.test.fn.Trace(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0))
  ret void

; <label>:11:                                     ; preds = %28
  call void @main.test.fn.Trace(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @3, i32 0, i32 0))
  ret void

; <label>:12:                                     ; preds = %28
  %13 = load i32, i32* %try
  %14 = add i32 %13, 1
  %15 = call i8* @main.test.fn.IntToStr(i32 %14)
  %16 = call i8* @jf_string_concat(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @4, i32 0, i32 0), i8* %15)
  call void @main.test.fn.Trace(i8* %16)
  %17 = load i32, i32* %maxTry
  %18 = load i32, i32* %try
  %19 = sub i32 %17, %18
  %20 = call i8* @main.test.fn.IntToStr(i32 %19)
  %21 = call i8* @jf_string_concat(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @5, i32 0, i32 0), i8* %20)
  %22 = call i8* @jf_string_concat(i8* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @6, i32 0, i32 0))
  call void @main.test.fn.Trace(i8* %22)
  %23 = call i8* @main.test.fn.ReadLn(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0))
  %24 = call i32 @main.test.fn.StrToInt(i8* %23)
  store i32 %24, i32* %guess
  %25 = load i32, i32* %guess
  %26 = load i32, i32* %secret
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %10, label %6

; <label>:28:                                     ; preds = %32, %3
  %29 = load i32, i32* %try
  %30 = load i32, i32* %maxTry
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %12, label %11

; <label>:32:                                     ; preds = %entry
  %33 = call i32 @main.test.fn.Rand()
  store i32 %33, i32* %secret
  store i32 100, i32* %maxSecret
  %34 = load i32, i32* %secret
  %35 = load i32, i32* %secret
  %36 = load i32, i32* %maxSecret
  %37 = sdiv i32 %35, %36
  %38 = load i32, i32* %maxSecret
  %39 = mul i32 %37, %38
  %40 = sub i32 %34, %39
  %41 = add i32 %40, 1
  store i32 %41, i32* %secret
  store i32 0, i32* %try
  store i32 10, i32* %maxTry
  br label %28
}

define void @main.test.fn.Trace(i8* %message) {
entry:
  call void @puts(i8* %message)
  ret void
}

define i8* @main.test.fn.IntToStr(i32 %x) {
entry:
  %0 = call i8* @jfprelude_IntToStr(i32 %x)
  ret i8* %0
}

declare i8* @jf_string_concat(i8*, i8*)

define i8* @main.test.fn.ReadLn(i8* %prompt) {
entry:
  %0 = call i8* @jfprelude_ReadLn(i8* %prompt)
  ret i8* %0
}

define i32 @main.test.fn.StrToInt(i8* %x) {
entry:
  %0 = call i32 @jfprelude_StrToInt(i8* %x)
  ret i32 %0
}

define i32 @main.test.fn.Rand() {
entry:
  %0 = call i32 @rand()
  ret i32 %0
}

declare i8* @jfprelude_ReadLn(i8*)

declare i32 @jfprelude_StrToInt(i8*)

declare i8* @jfprelude_IntToStr(i32)

declare void @puts(i8*)

declare i32 @rand()
