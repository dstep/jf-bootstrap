; ModuleID = 'main.test'
source_filename = "main.test"

@main.test.g.X = external global i32

define i32 @main.test.fn.foo(i1 %b) {
entry:
  %bake.b = alloca i1
  store i1 %b, i1* %bake.b
  br label %4

; <label>:0:                                      ; preds = %2, %1

; <label>:1:                                      ; preds = %4
  ret i32 7
  br label %0

; <label>:2:                                      ; preds = %4
  %3 = load i32, i32* @main.test.g.X
  ret i32 %3
  br label %0

; <label>:4:                                      ; preds = %entry
  %5 = load i1, i1* %bake.b
  br i1 %5, label %2, label %1
}
