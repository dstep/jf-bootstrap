; ModuleID = 'main.test'
source_filename = "main.test"

@"g$main.test.G" = global i32 undef
@0 = global i1 false

define i32 @"fn$main.test.foo"() {
entry:
  br label %0

; <label>:0:                                      ; preds = %entry
  call void @"gg$main.test.G"()
  %1 = load i32, i32* @"g$main.test.G"
  ret i32 %1
}

define void @"gg$main.test.G"() {
entry:
  %0 = load i1, i1* @0
  br i1 %0, label %ret, label %init

ret:                                              ; preds = %entry
  ret void

init:                                             ; preds = %entry
  store i1 true, i1* @0
  %1 = call i32 @"gi$main.test.G"()
  store i32 %1, i32* @"g$main.test.G"
  ret void
}

define i32 @"gi$main.test.G"() {
entry:
  br label %0

; <label>:0:                                      ; preds = %entry
  ret i32 42
}

define i8* @"fn$main.test.IntToStr"(i32 %x) {
entry:
  %0 = call i8* @IntToStr(i32 %x)
  ret i8* %0
}

declare i8* @IntToStr(i32)

define void @"fn$main.test.Trace"(i8* %message) {
entry:
  call void @puts(i8* %message)
  ret void
}

declare void @puts(i8*)
