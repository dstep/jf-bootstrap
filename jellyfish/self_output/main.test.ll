; ModuleID = 'main.test'
source_filename = "main.test"

%"adt$main.test.Player" = type { i32 }
%"adt$main.test.CellList" = type { i32 }
%"adt$main.test.Cell" = type { i32, %"adt$main.test.CellContent"* }
%"adt$main.test.CellContent" = type { i32 }
%"adtc$main.test.CellContent.Filled" = type { i32, %"adt$main.test.Player"* }
%"adtc$main.test.CellList.Cons" = type { i32, %"adt$main.test.Cell"*, %"adt$main.test.CellList"* }
%"adtc$main.test.Player.X" = type { i32 }
%"adtc$main.test.Player.O" = type { i32 }
%"adtc$main.test.Winner.Player" = type { i32, %"adt$main.test.Player"* }
%"adt$main.test.Winner" = type { i32 }
%"adtc$main.test.Winner.Draw" = type { i32 }
%"adtc$main.test.Winner.StillPlaying" = type { i32 }
%"adtc$main.test.CellContent.Empty" = type { i32 }
%"adtc$main.test.CellList.Nil" = type { i32 }
%"adtc$main.test.Cell.New" = type { i32, %"adt$main.test.CellContent"* }

@0 = private global [20 x i8] c"You are playing as \00"
@1 = private global [11 x i8] c"You turn? \00"
@2 = private global [43 x i8] c"Sorry, this AI is too dumb to make a move.\00"
@3 = private global [12 x i8] c"It's a draw\00"
@4 = private global [15 x i8] c"The winner is \00"
@5 = private global [1 x i8] zeroinitializer
@6 = private global [2 x i8] c" \00"
@7 = private global [2 x i8] c"X\00"
@8 = private global [2 x i8] c"O\00"
@9 = private global [2 x i8] c"|\00"
@10 = private global [6 x i8] c"-+-+-\00"
@11 = private global [2 x i8] c"X\00"
@12 = private global [2 x i8] c"O\00"

define void @_jf_entry_point() {
entry:
  %x = alloca i32
  %i = alloca i32
  %playing = alloca i1
  %aiPlays = alloca %"adt$main.test.Player"*
  %playerPlays = alloca %"adt$main.test.Player"*
  %grid = alloca %"adt$main.test.CellList"*
  br label %38

; <label>:0:                                      ; preds = %1, %2
  br label %3

; <label>:1:                                      ; preds = %5
  br label %0

; <label>:2:                                      ; preds = %5
  store i1 false, i1* %playing
  br label %0

; <label>:3:                                      ; preds = %0, %4
  br label %8

; <label>:4:                                      ; preds = %9
  call void @"fn$main.test.Trace"(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @2, i32 0, i32 0))
  store i1 false, i1* %playing
  br label %3

; <label>:5:                                      ; preds = %9
  %6 = load %"adt$main.test.CellList"*, %"adt$main.test.CellList"** %grid
  %7 = call i1 @"fn$main.test.checkGameOver"(%"adt$main.test.CellList"* %6)
  br i1 %7, label %2, label %1

; <label>:8:                                      ; preds = %3, %18
  br label %19

; <label>:9:                                      ; preds = %21
  %10 = load %"adt$main.test.CellList"*, %"adt$main.test.CellList"** %grid
  %11 = load %"adt$main.test.Player"*, %"adt$main.test.Player"** %playerPlays
  %12 = load %"adt$main.test.Player"*, %"adt$main.test.Player"** %aiPlays
  %13 = call i32 @"fn$main.test.ai"(%"adt$main.test.CellList"* %10, %"adt$main.test.Player"* %11, %"adt$main.test.Player"* %12)
  store i32 %13, i32* %x
  %14 = load %"adt$main.test.CellList"*, %"adt$main.test.CellList"** %grid
  %15 = load i32, i32* %x
  %16 = load %"adt$main.test.Player"*, %"adt$main.test.Player"** %aiPlays
  %17 = call i1 @"fn$main.test.tryPlace"(%"adt$main.test.CellList"* %14, i32 %15, %"adt$main.test.Player"* %16)
  br i1 %17, label %5, label %4

; <label>:18:                                     ; preds = %21
  store i1 false, i1* %playing
  br label %8

; <label>:19:                                     ; preds = %8, %20
  br label %36

; <label>:20:                                     ; preds = %25
  br label %19

; <label>:21:                                     ; preds = %25
  %22 = load %"adt$main.test.CellList"*, %"adt$main.test.CellList"** %grid
  %23 = call i1 @"fn$main.test.checkGameOver"(%"adt$main.test.CellList"* %22)
  br i1 %23, label %18, label %9

; <label>:24:                                     ; preds = %36
  ret void

; <label>:25:                                     ; preds = %36
  %26 = load %"adt$main.test.Player"*, %"adt$main.test.Player"** %playerPlays
  %27 = call i8* @"fn$main.test.PlayerToString"(%"adt$main.test.Player"* %26)
  %28 = call i8* @jf_string_concat(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @0, i32 0, i32 0), i8* %27)
  call void @"fn$main.test.Trace"(i8* %28)
  %29 = call i8* @"fn$main.test.ReadLn"(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @1, i32 0, i32 0))
  %30 = call i32 @"fn$main.test.StrToInt"(i8* %29)
  %31 = call i32 @"fn$main.test.translate_coord"(i32 %30)
  store i32 %31, i32* %i
  %32 = load %"adt$main.test.CellList"*, %"adt$main.test.CellList"** %grid
  %33 = load i32, i32* %i
  %34 = load %"adt$main.test.Player"*, %"adt$main.test.Player"** %playerPlays
  %35 = call i1 @"fn$main.test.tryPlace"(%"adt$main.test.CellList"* %32, i32 %33, %"adt$main.test.Player"* %34)
  br i1 %35, label %21, label %20

; <label>:36:                                     ; preds = %19, %38
  %37 = load i1, i1* %playing
  br i1 %37, label %25, label %24

; <label>:38:                                     ; preds = %entry
  %39 = call %"adt$main.test.CellList"* @"fn$main.test.createEmptyGrid"()
  store %"adt$main.test.CellList"* %39, %"adt$main.test.CellList"** %grid
  %40 = load %"adt$main.test.CellList"*, %"adt$main.test.CellList"** %grid
  call void @"fn$main.test.drawGrid"(%"adt$main.test.CellList"* %40)
  %41 = call %"adt$main.test.Player"* @"adtcfn$adtc$main.test.Player.X"()
  store %"adt$main.test.Player"* %41, %"adt$main.test.Player"** %playerPlays
  %42 = call %"adt$main.test.Player"* @"adtcfn$adtc$main.test.Player.O"()
  store %"adt$main.test.Player"* %42, %"adt$main.test.Player"** %aiPlays
  store i1 true, i1* %playing
  br label %36
}

define %"adt$main.test.CellList"* @"fn$main.test.createEmptyGrid"() {
entry:
  %cell = alloca %"adt$main.test.Cell"*
  %i = alloca i32
  %grid = alloca %"adt$main.test.CellList"*
  br label %15

; <label>:0:                                      ; preds = %12
  %1 = load %"adt$main.test.CellList"*, %"adt$main.test.CellList"** %grid
  ret %"adt$main.test.CellList"* %1

; <label>:2:                                      ; preds = %12
  %3 = call %"adt$main.test.Cell"* @"adtcfn$adtc$main.test.Cell.New"()
  store %"adt$main.test.Cell"* %3, %"adt$main.test.Cell"** %cell
  %4 = load %"adt$main.test.Cell"*, %"adt$main.test.Cell"** %cell
  %5 = call %"adt$main.test.CellContent"* @"adtcfn$adtc$main.test.CellContent.Empty"()
  %6 = getelementptr inbounds %"adt$main.test.Cell", %"adt$main.test.Cell"* %4, i32 0, i32 1
  store %"adt$main.test.CellContent"* %5, %"adt$main.test.CellContent"** %6
  %7 = load %"adt$main.test.Cell"*, %"adt$main.test.Cell"** %cell
  %8 = load %"adt$main.test.CellList"*, %"adt$main.test.CellList"** %grid
  %9 = call %"adt$main.test.CellList"* @"adtcfn$adtc$main.test.CellList.Cons"(%"adt$main.test.Cell"* %7, %"adt$main.test.CellList"* %8)
  store %"adt$main.test.CellList"* %9, %"adt$main.test.CellList"** %grid
  %10 = load i32, i32* %i
  %11 = sub i32 %10, 1
  store i32 %11, i32* %i
  br label %12

; <label>:12:                                     ; preds = %2, %15
  %13 = load i32, i32* %i
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %2, label %0

; <label>:15:                                     ; preds = %entry
  %16 = call %"adt$main.test.CellList"* @"adtcfn$adtc$main.test.CellList.Nil"()
  store %"adt$main.test.CellList"* %16, %"adt$main.test.CellList"** %grid
  store i32 9, i32* %i
  br label %12
}

define void @"fn$main.test.drawGrid"(%"adt$main.test.CellList"* %grid) {
entry:
  %line = alloca i8*
  %y = alloca i32
  %x = alloca i32
  %bake.grid = alloca %"adt$main.test.CellList"*
  store %"adt$main.test.CellList"* %grid, %"adt$main.test.CellList"** %bake.grid
  br label %59

; <label>:0:                                      ; preds = %3, %4
  %1 = load i32, i32* %y
  %2 = add i32 %1, 1
  store i32 %2, i32* %y
  br label %56

; <label>:3:                                      ; preds = %43
  br label %0

; <label>:4:                                      ; preds = %43
  call void @"fn$main.test.Trace"(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @10, i32 0, i32 0))
  br label %0

; <label>:5:                                      ; preds = %8, %9
  %6 = load i32, i32* %x
  %7 = add i32 %6, 1
  store i32 %7, i32* %x
  br label %51

; <label>:8:                                      ; preds = %40
  br label %5

; <label>:9:                                      ; preds = %40
  %10 = load i8*, i8** %line
  %11 = call i8* @jf_string_concat(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @9, i32 0, i32 0))
  store i8* %11, i8** %line
  br label %5

; <label>:12:                                     ; preds = %19
  %13 = load i8*, i8** %line
  %14 = call i8* @jf_string_concat(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @8, i32 0, i32 0))
  store i8* %14, i8** %line
  br label %18

; <label>:15:                                     ; preds = %19
  %16 = load i8*, i8** %line
  %17 = call i8* @jf_string_concat(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @7, i32 0, i32 0))
  store i8* %17, i8** %line
  br label %18

; <label>:18:                                     ; preds = %12, %15, %19
  br label %28

; <label>:19:                                     ; preds = %29
  %20 = bitcast %"adt$main.test.CellContent"* %37 to %"adtc$main.test.CellContent.Filled"*
  %21 = getelementptr inbounds %"adtc$main.test.CellContent.Filled", %"adtc$main.test.CellContent.Filled"* %20, i32 0, i32 1
  %22 = load %"adt$main.test.Player"*, %"adt$main.test.Player"** %21
  %23 = getelementptr inbounds %"adt$main.test.Player", %"adt$main.test.Player"* %22, i32 0, i32 0
  %24 = load i32, i32* %23
  switch i32 %24, label %18 [
    i32 1, label %12
    i32 0, label %15
  ]

; <label>:25:                                     ; preds = %29
  %26 = load i8*, i8** %line
  %27 = call i8* @jf_string_concat(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @6, i32 0, i32 0))
  store i8* %27, i8** %line
  br label %28

; <label>:28:                                     ; preds = %18, %25, %29
  store %"adt$main.test.CellList"* %35, %"adt$main.test.CellList"** %bake.grid
  br label %40

; <label>:29:                                     ; preds = %47
  %30 = bitcast %"adt$main.test.CellList"* %48 to %"adtc$main.test.CellList.Cons"*
  %31 = getelementptr inbounds %"adtc$main.test.CellList.Cons", %"adtc$main.test.CellList.Cons"* %30, i32 0, i32 1
  %32 = load %"adt$main.test.Cell"*, %"adt$main.test.Cell"** %31
  %33 = bitcast %"adt$main.test.CellList"* %48 to %"adtc$main.test.CellList.Cons"*
  %34 = getelementptr inbounds %"adtc$main.test.CellList.Cons", %"adtc$main.test.CellList.Cons"* %33, i32 0, i32 2
  %35 = load %"adt$main.test.CellList"*, %"adt$main.test.CellList"** %34
  %36 = getelementptr inbounds %"adt$main.test.Cell", %"adt$main.test.Cell"* %32, i32 0, i32 1
  %37 = load %"adt$main.test.CellContent"*, %"adt$main.test.CellContent"** %36
  %38 = getelementptr inbounds %"adt$main.test.CellContent", %"adt$main.test.CellContent"* %37, i32 0, i32 0
  %39 = load i32, i32* %38
  switch i32 %39, label %28 [
    i32 1, label %19
    i32 0, label %25
  ]

; <label>:40:                                     ; preds = %28, %47
  %41 = load i32, i32* %x
  %42 = icmp slt i32 %41, 2
  br i1 %42, label %9, label %8

; <label>:43:                                     ; preds = %51
  %44 = load i8*, i8** %line
  call void @"fn$main.test.Trace"(i8* %44)
  %45 = load i32, i32* %y
  %46 = icmp slt i32 %45, 2
  br i1 %46, label %4, label %3

; <label>:47:                                     ; preds = %51
  %48 = load %"adt$main.test.CellList"*, %"adt$main.test.CellList"** %bake.grid
  %49 = getelementptr inbounds %"adt$main.test.CellList", %"adt$main.test.CellList"* %48, i32 0, i32 0
  %50 = load i32, i32* %49
  switch i32 %50, label %40 [
    i32 1, label %29
  ]

; <label>:51:                                     ; preds = %5, %55
  %52 = load i32, i32* %x
  %53 = icmp slt i32 %52, 3
  br i1 %53, label %47, label %43

; <label>:54:                                     ; preds = %56
  ret void

; <label>:55:                                     ; preds = %56
  store i32 0, i32* %x
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @5, i32 0, i32 0), i8** %line
  br label %51

; <label>:56:                                     ; preds = %0, %59
  %57 = load i32, i32* %y
  %58 = icmp slt i32 %57, 3
  br i1 %58, label %55, label %54

; <label>:59:                                     ; preds = %entry
  store i32 0, i32* %x
  store i32 0, i32* %y
  br label %56
}

define %"adt$main.test.Player"* @"adtcfn$adtc$main.test.Player.X"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.test.Player.X"*
  %2 = getelementptr inbounds %"adtc$main.test.Player.X", %"adtc$main.test.Player.X"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.test.Player.X"* %1 to %"adt$main.test.Player"*
  ret %"adt$main.test.Player"* %3
}

define %"adt$main.test.Player"* @"adtcfn$adtc$main.test.Player.O"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.test.Player.O"*
  %2 = getelementptr inbounds %"adtc$main.test.Player.O", %"adtc$main.test.Player.O"* %1, i32 0, i32 0
  store i32 1, i32* %2
  %3 = bitcast %"adtc$main.test.Player.O"* %1 to %"adt$main.test.Player"*
  ret %"adt$main.test.Player"* %3
}

define i8* @"fn$main.test.PlayerToString"(%"adt$main.test.Player"* %player) {
entry:
  %bake.player = alloca %"adt$main.test.Player"*
  store %"adt$main.test.Player"* %player, %"adt$main.test.Player"** %bake.player
  br label %3

; <label>:0:                                      ; preds = %3
  ret i8* getelementptr inbounds ([2 x i8], [2 x i8]* @12, i32 0, i32 0)

; <label>:1:                                      ; preds = %3
  ret i8* getelementptr inbounds ([2 x i8], [2 x i8]* @11, i32 0, i32 0)

; <label>:2:                                      ; preds = %3
  unreachable

; <label>:3:                                      ; preds = %entry
  %4 = load %"adt$main.test.Player"*, %"adt$main.test.Player"** %bake.player
  %5 = getelementptr inbounds %"adt$main.test.Player", %"adt$main.test.Player"* %4, i32 0, i32 0
  %6 = load i32, i32* %5
  switch i32 %6, label %2 [
    i32 1, label %0
    i32 0, label %1
  ]
}

declare i8* @jf_string_concat(i8*, i8*)

define void @"fn$main.test.Trace"(i8* %message) {
entry:
  call void @puts(i8* %message)
  ret void
}

define i8* @"fn$main.test.ReadLn"(i8* %prompt) {
entry:
  %0 = call i8* @jfprelude_ReadLn(i8* %prompt)
  ret i8* %0
}

define i32 @"fn$main.test.StrToInt"(i8* %x) {
entry:
  %0 = call i32 @jfprelude_StrToInt(i8* %x)
  ret i32 %0
}

define i32 @"fn$main.test.translate_coord"(i32 %x) {
entry:
  %bake.x = alloca i32
  store i32 %x, i32* %bake.x
  br label %43
                                                  ; No predecessors!
  br label %3

; <label>:1:                                      ; preds = %4
  ret i32 -1

; <label>:2:                                      ; preds = %4
  ret i32 8

; <label>:3:                                      ; preds = %0
  br label %8

; <label>:4:                                      ; preds = %9
  %5 = load i32, i32* %bake.x
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %2, label %1

; <label>:7:                                      ; preds = %9
  ret i32 7

; <label>:8:                                      ; preds = %3
  br label %13

; <label>:9:                                      ; preds = %14
  %10 = load i32, i32* %bake.x
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %7, label %4

; <label>:12:                                     ; preds = %14
  ret i32 6

; <label>:13:                                     ; preds = %8
  br label %18

; <label>:14:                                     ; preds = %19
  %15 = load i32, i32* %bake.x
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %12, label %9

; <label>:17:                                     ; preds = %19
  ret i32 5

; <label>:18:                                     ; preds = %13
  br label %23

; <label>:19:                                     ; preds = %24
  %20 = load i32, i32* %bake.x
  %21 = icmp eq i32 %20, 6
  br i1 %21, label %17, label %14

; <label>:22:                                     ; preds = %24
  ret i32 4

; <label>:23:                                     ; preds = %18
  br label %28

; <label>:24:                                     ; preds = %29
  %25 = load i32, i32* %bake.x
  %26 = icmp eq i32 %25, 5
  br i1 %26, label %22, label %19

; <label>:27:                                     ; preds = %29
  ret i32 3

; <label>:28:                                     ; preds = %23
  br label %33

; <label>:29:                                     ; preds = %34
  %30 = load i32, i32* %bake.x
  %31 = icmp eq i32 %30, 4
  br i1 %31, label %27, label %24

; <label>:32:                                     ; preds = %34
  ret i32 2

; <label>:33:                                     ; preds = %28
  br label %38

; <label>:34:                                     ; preds = %39
  %35 = load i32, i32* %bake.x
  %36 = icmp eq i32 %35, 9
  br i1 %36, label %32, label %29

; <label>:37:                                     ; preds = %39
  ret i32 1

; <label>:38:                                     ; preds = %33
  unreachable

; <label>:39:                                     ; preds = %43
  %40 = load i32, i32* %bake.x
  %41 = icmp eq i32 %40, 8
  br i1 %41, label %37, label %34

; <label>:42:                                     ; preds = %43
  ret i32 0

; <label>:43:                                     ; preds = %entry
  %44 = load i32, i32* %bake.x
  %45 = icmp eq i32 %44, 7
  br i1 %45, label %42, label %39
}

define i1 @"fn$main.test.tryPlace"(%"adt$main.test.CellList"* %grid, i32 %n, %"adt$main.test.Player"* %player) {
entry:
  %bake.player = alloca %"adt$main.test.Player"*
  %bake.n = alloca i32
  %bake.grid = alloca %"adt$main.test.CellList"*
  store %"adt$main.test.Player"* %player, %"adt$main.test.Player"** %bake.player
  store i32 %n, i32* %bake.n
  store %"adt$main.test.CellList"* %grid, %"adt$main.test.CellList"** %bake.grid
  br label %16
                                                  ; No predecessors!
  unreachable

; <label>:1:                                      ; preds = %4
  ret i1 false

; <label>:2:                                      ; preds = %4
  %3 = load %"adt$main.test.CellList"*, %"adt$main.test.CellList"** %bake.grid
  call void @"fn$main.test.drawGrid"(%"adt$main.test.CellList"* %3)
  ret i1 true

; <label>:4:                                      ; preds = %9
  %5 = load %"adt$main.test.CellList"*, %"adt$main.test.CellList"** %bake.grid
  %6 = load i32, i32* %bake.n
  %7 = load %"adt$main.test.Player"*, %"adt$main.test.Player"** %bake.player
  %8 = call i1 @"fn$main.test.put"(%"adt$main.test.CellList"* %5, i32 %6, %"adt$main.test.Player"* %7)
  br i1 %8, label %2, label %1

; <label>:9:                                      ; preds = %11
  br label %4

; <label>:10:                                     ; preds = %11
  ret i1 false

; <label>:11:                                     ; preds = %13, %16
  %12 = phi i1 [ %15, %13 ], [ true, %16 ]
  br i1 %12, label %10, label %9

; <label>:13:                                     ; preds = %16
  %14 = load i32, i32* %bake.n
  %15 = icmp sgt i32 %14, 8
  br label %11

; <label>:16:                                     ; preds = %entry
  %17 = load i32, i32* %bake.n
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %11, label %13
}

define i1 @"fn$main.test.checkGameOver"(%"adt$main.test.CellList"* %grid) {
entry:
  %bake.grid = alloca %"adt$main.test.CellList"*
  store %"adt$main.test.CellList"* %grid, %"adt$main.test.CellList"** %bake.grid
  br label %8

; <label>:0:                                      ; preds = %8
  %1 = bitcast %"adt$main.test.Winner"* %10 to %"adtc$main.test.Winner.Player"*
  %2 = getelementptr inbounds %"adtc$main.test.Winner.Player", %"adtc$main.test.Winner.Player"* %1, i32 0, i32 1
  %3 = load %"adt$main.test.Player"*, %"adt$main.test.Player"** %2
  %4 = call i8* @"fn$main.test.PlayerToString"(%"adt$main.test.Player"* %3)
  %5 = call i8* @jf_string_concat(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @4, i32 0, i32 0), i8* %4)
  call void @"fn$main.test.Trace"(i8* %5)
  ret i1 true

; <label>:6:                                      ; preds = %8
  call void @"fn$main.test.Trace"(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @3, i32 0, i32 0))
  ret i1 true

; <label>:7:                                      ; preds = %8
  ret i1 false

; <label>:8:                                      ; preds = %entry
  %9 = load %"adt$main.test.CellList"*, %"adt$main.test.CellList"** %bake.grid
  %10 = call %"adt$main.test.Winner"* @"fn$main.test.checkWinner"(%"adt$main.test.CellList"* %9)
  %11 = getelementptr inbounds %"adt$main.test.Winner", %"adt$main.test.Winner"* %10, i32 0, i32 0
  %12 = load i32, i32* %11
  switch i32 %12, label %7 [
    i32 0, label %0
    i32 1, label %6
  ]
}

define i32 @"fn$main.test.ai"(%"adt$main.test.CellList"* %grid, %"adt$main.test.Player"* %playerPlays, %"adt$main.test.Player"* %aiPlays) {
entry:
  %i = alloca i32
  %bake.aiPlays = alloca %"adt$main.test.Player"*
  %bake.playerPlays = alloca %"adt$main.test.Player"*
  %bake.grid = alloca %"adt$main.test.CellList"*
  store %"adt$main.test.Player"* %aiPlays, %"adt$main.test.Player"** %bake.aiPlays
  store %"adt$main.test.Player"* %playerPlays, %"adt$main.test.Player"** %bake.playerPlays
  store %"adt$main.test.CellList"* %grid, %"adt$main.test.CellList"** %bake.grid
  br label %18

; <label>:0:                                      ; preds = %3
  %1 = load i32, i32* %i
  %2 = add i32 %1, 1
  store i32 %2, i32* %i
  br label %15

; <label>:3:                                      ; preds = %7
  br label %0

; <label>:4:                                      ; preds = %7
  %5 = load i32, i32* %i
  ret i32 %5

; <label>:6:                                      ; preds = %15
  ret i32 -1

; <label>:7:                                      ; preds = %15
  %8 = load %"adt$main.test.CellList"*, %"adt$main.test.CellList"** %bake.grid
  %9 = load i32, i32* %i
  %10 = call %"adt$main.test.Cell"* @"fn$main.test.getCell"(%"adt$main.test.CellList"* %8, i32 %9)
  %11 = getelementptr inbounds %"adt$main.test.Cell", %"adt$main.test.Cell"* %10, i32 0, i32 1
  %12 = load %"adt$main.test.CellContent"*, %"adt$main.test.CellContent"** %11
  %13 = call i32 @"fn$main.test.getValue"(%"adt$main.test.CellContent"* %12)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %4, label %3

; <label>:15:                                     ; preds = %0, %18
  %16 = load i32, i32* %i
  %17 = icmp slt i32 %16, 9
  br i1 %17, label %7, label %6

; <label>:18:                                     ; preds = %entry
  store i32 0, i32* %i
  br label %15
}

define %"adt$main.test.Cell"* @"fn$main.test.getCell"(%"adt$main.test.CellList"* %grid, i32 %n) {
entry:
  %bake.n = alloca i32
  %bake.grid = alloca %"adt$main.test.CellList"*
  store i32 %n, i32* %bake.n
  store %"adt$main.test.CellList"* %grid, %"adt$main.test.CellList"** %bake.grid
  br label %9

; <label>:0:                                      ; preds = %9
  unreachable

; <label>:1:                                      ; preds = %9
  %2 = bitcast %"adt$main.test.CellList"* %13 to %"adtc$main.test.CellList.Cons"*
  %3 = getelementptr inbounds %"adtc$main.test.CellList.Cons", %"adtc$main.test.CellList.Cons"* %2, i32 0, i32 1
  %4 = load %"adt$main.test.Cell"*, %"adt$main.test.Cell"** %3
  %5 = bitcast %"adt$main.test.CellList"* %13 to %"adtc$main.test.CellList.Cons"*
  %6 = getelementptr inbounds %"adtc$main.test.CellList.Cons", %"adtc$main.test.CellList.Cons"* %5, i32 0, i32 2
  %7 = load %"adt$main.test.CellList"*, %"adt$main.test.CellList"** %6
  ret %"adt$main.test.Cell"* %4
                                                  ; No predecessors!
  unreachable

; <label>:9:                                      ; preds = %entry
  %10 = load %"adt$main.test.CellList"*, %"adt$main.test.CellList"** %bake.grid
  %11 = load i32, i32* %bake.n
  %12 = call %"adt$main.test.CellList"* @"fn$main.test.skip"(%"adt$main.test.CellList"* %10, i32 %11)
  store %"adt$main.test.CellList"* %12, %"adt$main.test.CellList"** %bake.grid
  %13 = load %"adt$main.test.CellList"*, %"adt$main.test.CellList"** %bake.grid
  %14 = getelementptr inbounds %"adt$main.test.CellList", %"adt$main.test.CellList"* %13, i32 0, i32 0
  %15 = load i32, i32* %14
  switch i32 %15, label %0 [
    i32 1, label %1
  ]
}

define i32 @"fn$main.test.getValue"(%"adt$main.test.CellContent"* %c) {
entry:
  %bake.c = alloca %"adt$main.test.CellContent"*
  store %"adt$main.test.CellContent"* %c, %"adt$main.test.CellContent"** %bake.c
  br label %11

; <label>:0:                                      ; preds = %3
  ret i32 2

; <label>:1:                                      ; preds = %3
  ret i32 1

; <label>:2:                                      ; preds = %3
  br label %10

; <label>:3:                                      ; preds = %11
  %4 = bitcast %"adt$main.test.CellContent"* %12 to %"adtc$main.test.CellContent.Filled"*
  %5 = getelementptr inbounds %"adtc$main.test.CellContent.Filled", %"adtc$main.test.CellContent.Filled"* %4, i32 0, i32 1
  %6 = load %"adt$main.test.Player"*, %"adt$main.test.Player"** %5
  %7 = getelementptr inbounds %"adt$main.test.Player", %"adt$main.test.Player"* %6, i32 0, i32 0
  %8 = load i32, i32* %7
  switch i32 %8, label %2 [
    i32 1, label %0
    i32 0, label %1
  ]

; <label>:9:                                      ; preds = %11
  ret i32 0

; <label>:10:                                     ; preds = %2, %11
  unreachable

; <label>:11:                                     ; preds = %entry
  %12 = load %"adt$main.test.CellContent"*, %"adt$main.test.CellContent"** %bake.c
  %13 = getelementptr inbounds %"adt$main.test.CellContent", %"adt$main.test.CellContent"* %12, i32 0, i32 0
  %14 = load i32, i32* %13
  switch i32 %14, label %10 [
    i32 1, label %3
    i32 0, label %9
  ]
}

define %"adt$main.test.Winner"* @"fn$main.test.checkWinner"(%"adt$main.test.CellList"* %grid) {
entry:
  %i = alloca i32
  %c = alloca i32
  %b = alloca i32
  %a = alloca i32
  %bake.grid = alloca %"adt$main.test.CellList"*
  store %"adt$main.test.CellList"* %grid, %"adt$main.test.CellList"** %bake.grid
  br label %65

; <label>:0:                                      ; preds = %7
  %1 = call %"adt$main.test.Winner"* @"adtcfn$adtc$main.test.Winner.StillPlaying"()
  ret %"adt$main.test.Winner"* %1

; <label>:2:                                      ; preds = %7
  %3 = load i32, i32* %i
  %4 = add i32 %3, 1
  store i32 %4, i32* %i
  br label %15

; <label>:5:                                      ; preds = %15
  %6 = call %"adt$main.test.Winner"* @"adtcfn$adtc$main.test.Winner.Draw"()
  ret %"adt$main.test.Winner"* %6

; <label>:7:                                      ; preds = %15
  %8 = load %"adt$main.test.CellList"*, %"adt$main.test.CellList"** %bake.grid
  %9 = load i32, i32* %i
  %10 = call %"adt$main.test.Cell"* @"fn$main.test.getCell"(%"adt$main.test.CellList"* %8, i32 %9)
  %11 = getelementptr inbounds %"adt$main.test.Cell", %"adt$main.test.Cell"* %10, i32 0, i32 1
  %12 = load %"adt$main.test.CellContent"*, %"adt$main.test.CellContent"** %11
  %13 = getelementptr inbounds %"adt$main.test.CellContent", %"adt$main.test.CellContent"* %12, i32 0, i32 0
  %14 = load i32, i32* %13
  switch i32 %14, label %2 [
    i32 0, label %0
  ]

; <label>:15:                                     ; preds = %2, %58
  %16 = load i32, i32* %i
  %17 = icmp slt i32 %16, 9
  br i1 %17, label %7, label %5

; <label>:18:                                     ; preds = %28
  %19 = bitcast %"adt$main.test.CellContent"* %33 to %"adtc$main.test.CellContent.Filled"*
  %20 = getelementptr inbounds %"adtc$main.test.CellContent.Filled", %"adtc$main.test.CellContent.Filled"* %19, i32 0, i32 1
  %21 = load %"adt$main.test.Player"*, %"adt$main.test.Player"** %20
  %22 = call %"adt$main.test.Winner"* @"adtcfn$adtc$main.test.Winner.Player"(%"adt$main.test.Player"* %21)
  ret %"adt$main.test.Winner"* %22

; <label>:23:                                     ; preds = %28
  br label %24

; <label>:24:                                     ; preds = %23, %27
  %25 = load i32, i32* %c
  %26 = add i32 %25, 1
  store i32 %26, i32* %c
  br label %46

; <label>:27:                                     ; preds = %39
  br label %24

; <label>:28:                                     ; preds = %39
  %29 = load %"adt$main.test.CellList"*, %"adt$main.test.CellList"** %bake.grid
  %30 = load i32, i32* %a
  %31 = load i32, i32* %b
  %32 = load i32, i32* %c
  %33 = call %"adt$main.test.CellContent"* @"fn$main.test.checkLine"(%"adt$main.test.CellList"* %29, i32 %30, i32 %31, i32 %32)
  %34 = getelementptr inbounds %"adt$main.test.CellContent", %"adt$main.test.CellContent"* %33, i32 0, i32 0
  %35 = load i32, i32* %34
  switch i32 %35, label %23 [
    i32 1, label %18
  ]

; <label>:36:                                     ; preds = %46
  %37 = load i32, i32* %b
  %38 = add i32 %37, 1
  store i32 %38, i32* %b
  br label %55

; <label>:39:                                     ; preds = %46
  %40 = load i32, i32* %a
  %41 = load i32, i32* %b
  %42 = add i32 %40, %41
  %43 = load i32, i32* %c
  %44 = add i32 %42, %43
  %45 = icmp eq i32 %44, 15
  br i1 %45, label %28, label %27

; <label>:46:                                     ; preds = %24, %52
  %47 = load i32, i32* %c
  %48 = icmp slt i32 %47, 10
  br i1 %48, label %39, label %36

; <label>:49:                                     ; preds = %55
  %50 = load i32, i32* %a
  %51 = add i32 %50, 1
  store i32 %51, i32* %a
  br label %62

; <label>:52:                                     ; preds = %55
  %53 = load i32, i32* %b
  %54 = add i32 %53, 1
  store i32 %54, i32* %c
  br label %46

; <label>:55:                                     ; preds = %36, %59
  %56 = load i32, i32* %b
  %57 = icmp slt i32 %56, 10
  br i1 %57, label %52, label %49

; <label>:58:                                     ; preds = %62
  store i32 0, i32* %i
  br label %15

; <label>:59:                                     ; preds = %62
  %60 = load i32, i32* %a
  %61 = add i32 %60, 1
  store i32 %61, i32* %b
  br label %55

; <label>:62:                                     ; preds = %49, %65
  %63 = load i32, i32* %a
  %64 = icmp slt i32 %63, 10
  br i1 %64, label %59, label %58

; <label>:65:                                     ; preds = %entry
  store i32 1, i32* %a
  br label %62
}

define i1 @"fn$main.test.put"(%"adt$main.test.CellList"* %grid, i32 %n, %"adt$main.test.Player"* %player) {
entry:
  %cell = alloca %"adt$main.test.Cell"*
  %bake.player = alloca %"adt$main.test.Player"*
  %bake.n = alloca i32
  %bake.grid = alloca %"adt$main.test.CellList"*
  store %"adt$main.test.Player"* %player, %"adt$main.test.Player"** %bake.player
  store i32 %n, i32* %bake.n
  store %"adt$main.test.CellList"* %grid, %"adt$main.test.CellList"** %bake.grid
  br label %7

; <label>:0:                                      ; preds = %7
  ret i1 false

; <label>:1:                                      ; preds = %7
  %2 = load %"adt$main.test.Cell"*, %"adt$main.test.Cell"** %cell
  %3 = load %"adt$main.test.Player"*, %"adt$main.test.Player"** %bake.player
  %4 = call %"adt$main.test.CellContent"* @"adtcfn$adtc$main.test.CellContent.Filled"(%"adt$main.test.Player"* %3)
  %5 = getelementptr inbounds %"adt$main.test.Cell", %"adt$main.test.Cell"* %2, i32 0, i32 1
  store %"adt$main.test.CellContent"* %4, %"adt$main.test.CellContent"** %5
  ret i1 true
                                                  ; No predecessors!
  unreachable

; <label>:7:                                      ; preds = %entry
  %8 = load %"adt$main.test.CellList"*, %"adt$main.test.CellList"** %bake.grid
  %9 = load i32, i32* %bake.n
  %10 = call %"adt$main.test.Cell"* @"fn$main.test.getCell"(%"adt$main.test.CellList"* %8, i32 %9)
  store %"adt$main.test.Cell"* %10, %"adt$main.test.Cell"** %cell
  %11 = load %"adt$main.test.Cell"*, %"adt$main.test.Cell"** %cell
  %12 = getelementptr inbounds %"adt$main.test.Cell", %"adt$main.test.Cell"* %11, i32 0, i32 1
  %13 = load %"adt$main.test.CellContent"*, %"adt$main.test.CellContent"** %12
  %14 = getelementptr inbounds %"adt$main.test.CellContent", %"adt$main.test.CellContent"* %13, i32 0, i32 0
  %15 = load i32, i32* %14
  switch i32 %15, label %0 [
    i32 0, label %1
  ]
}

define %"adt$main.test.CellContent"* @"fn$main.test.checkLine"(%"adt$main.test.CellList"* %grid, i32 %a, i32 %b, i32 %c) {
entry:
  %cellC = alloca %"adt$main.test.CellContent"*
  %cellB = alloca %"adt$main.test.CellContent"*
  %cellA = alloca %"adt$main.test.CellContent"*
  %bake.c = alloca i32
  %bake.b = alloca i32
  %bake.a = alloca i32
  %bake.grid = alloca %"adt$main.test.CellList"*
  store i32 %c, i32* %bake.c
  store i32 %b, i32* %bake.b
  store i32 %a, i32* %bake.a
  store %"adt$main.test.CellList"* %grid, %"adt$main.test.CellList"** %bake.grid
  br label %11
                                                  ; No predecessors!
  unreachable

; <label>:1:                                      ; preds = %5
  %2 = call %"adt$main.test.CellContent"* @"adtcfn$adtc$main.test.CellContent.Empty"()
  ret %"adt$main.test.CellContent"* %2

; <label>:3:                                      ; preds = %5
  %4 = load %"adt$main.test.CellContent"*, %"adt$main.test.CellContent"** %cellA
  ret %"adt$main.test.CellContent"* %4

; <label>:5:                                      ; preds = %7, %11
  %6 = phi i1 [ %10, %7 ], [ false, %11 ]
  br i1 %6, label %3, label %1

; <label>:7:                                      ; preds = %11
  %8 = load %"adt$main.test.CellContent"*, %"adt$main.test.CellContent"** %cellB
  %9 = load %"adt$main.test.CellContent"*, %"adt$main.test.CellContent"** %cellC
  %10 = call i1 @"fn$main.test.isSame"(%"adt$main.test.CellContent"* %8, %"adt$main.test.CellContent"* %9)
  br label %5

; <label>:11:                                     ; preds = %entry
  %12 = load %"adt$main.test.CellList"*, %"adt$main.test.CellList"** %bake.grid
  %13 = load i32, i32* %bake.a
  %14 = call i32 @"fn$main.test.translate_magic"(i32 %13)
  %15 = call %"adt$main.test.Cell"* @"fn$main.test.getCell"(%"adt$main.test.CellList"* %12, i32 %14)
  %16 = getelementptr inbounds %"adt$main.test.Cell", %"adt$main.test.Cell"* %15, i32 0, i32 1
  %17 = load %"adt$main.test.CellContent"*, %"adt$main.test.CellContent"** %16
  store %"adt$main.test.CellContent"* %17, %"adt$main.test.CellContent"** %cellA
  %18 = load %"adt$main.test.CellList"*, %"adt$main.test.CellList"** %bake.grid
  %19 = load i32, i32* %bake.b
  %20 = call i32 @"fn$main.test.translate_magic"(i32 %19)
  %21 = call %"adt$main.test.Cell"* @"fn$main.test.getCell"(%"adt$main.test.CellList"* %18, i32 %20)
  %22 = getelementptr inbounds %"adt$main.test.Cell", %"adt$main.test.Cell"* %21, i32 0, i32 1
  %23 = load %"adt$main.test.CellContent"*, %"adt$main.test.CellContent"** %22
  store %"adt$main.test.CellContent"* %23, %"adt$main.test.CellContent"** %cellB
  %24 = load %"adt$main.test.CellList"*, %"adt$main.test.CellList"** %bake.grid
  %25 = load i32, i32* %bake.c
  %26 = call i32 @"fn$main.test.translate_magic"(i32 %25)
  %27 = call %"adt$main.test.Cell"* @"fn$main.test.getCell"(%"adt$main.test.CellList"* %24, i32 %26)
  %28 = getelementptr inbounds %"adt$main.test.Cell", %"adt$main.test.Cell"* %27, i32 0, i32 1
  %29 = load %"adt$main.test.CellContent"*, %"adt$main.test.CellContent"** %28
  store %"adt$main.test.CellContent"* %29, %"adt$main.test.CellContent"** %cellC
  %30 = load %"adt$main.test.CellContent"*, %"adt$main.test.CellContent"** %cellA
  %31 = load %"adt$main.test.CellContent"*, %"adt$main.test.CellContent"** %cellB
  %32 = call i1 @"fn$main.test.isSame"(%"adt$main.test.CellContent"* %30, %"adt$main.test.CellContent"* %31)
  br i1 %32, label %7, label %5
}

define %"adt$main.test.Winner"* @"adtcfn$adtc$main.test.Winner.Player"(%"adt$main.test.Player"* %player) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.test.Winner.Player"* getelementptr (%"adtc$main.test.Winner.Player", %"adtc$main.test.Winner.Player"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.test.Winner.Player"*
  %2 = getelementptr inbounds %"adtc$main.test.Winner.Player", %"adtc$main.test.Winner.Player"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = getelementptr inbounds %"adtc$main.test.Winner.Player", %"adtc$main.test.Winner.Player"* %1, i32 0, i32 1
  store %"adt$main.test.Player"* %player, %"adt$main.test.Player"** %3
  %4 = bitcast %"adtc$main.test.Winner.Player"* %1 to %"adt$main.test.Winner"*
  ret %"adt$main.test.Winner"* %4
}

define %"adt$main.test.Winner"* @"adtcfn$adtc$main.test.Winner.Draw"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.test.Winner.Draw"*
  %2 = getelementptr inbounds %"adtc$main.test.Winner.Draw", %"adtc$main.test.Winner.Draw"* %1, i32 0, i32 0
  store i32 1, i32* %2
  %3 = bitcast %"adtc$main.test.Winner.Draw"* %1 to %"adt$main.test.Winner"*
  ret %"adt$main.test.Winner"* %3
}

define %"adt$main.test.Winner"* @"adtcfn$adtc$main.test.Winner.StillPlaying"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.test.Winner.StillPlaying"*
  %2 = getelementptr inbounds %"adtc$main.test.Winner.StillPlaying", %"adtc$main.test.Winner.StillPlaying"* %1, i32 0, i32 0
  store i32 2, i32* %2
  %3 = bitcast %"adtc$main.test.Winner.StillPlaying"* %1 to %"adt$main.test.Winner"*
  ret %"adt$main.test.Winner"* %3
}

define i32 @"fn$main.test.translate_magic"(i32 %x) {
entry:
  %bake.x = alloca i32
  store i32 %x, i32* %bake.x
  br label %43
                                                  ; No predecessors!
  br label %3

; <label>:1:                                      ; preds = %4
  ret i32 -1

; <label>:2:                                      ; preds = %4
  ret i32 8

; <label>:3:                                      ; preds = %0
  br label %8

; <label>:4:                                      ; preds = %9
  %5 = load i32, i32* %bake.x
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %2, label %1

; <label>:7:                                      ; preds = %9
  ret i32 7

; <label>:8:                                      ; preds = %3
  br label %13

; <label>:9:                                      ; preds = %14
  %10 = load i32, i32* %bake.x
  %11 = icmp eq i32 %10, 9
  br i1 %11, label %7, label %4

; <label>:12:                                     ; preds = %14
  ret i32 6

; <label>:13:                                     ; preds = %8
  br label %18

; <label>:14:                                     ; preds = %19
  %15 = load i32, i32* %bake.x
  %16 = icmp eq i32 %15, 4
  br i1 %16, label %12, label %9

; <label>:17:                                     ; preds = %19
  ret i32 5

; <label>:18:                                     ; preds = %13
  br label %23

; <label>:19:                                     ; preds = %24
  %20 = load i32, i32* %bake.x
  %21 = icmp eq i32 %20, 7
  br i1 %21, label %17, label %14

; <label>:22:                                     ; preds = %24
  ret i32 4

; <label>:23:                                     ; preds = %18
  br label %28

; <label>:24:                                     ; preds = %29
  %25 = load i32, i32* %bake.x
  %26 = icmp eq i32 %25, 5
  br i1 %26, label %22, label %19

; <label>:27:                                     ; preds = %29
  ret i32 3

; <label>:28:                                     ; preds = %23
  br label %33

; <label>:29:                                     ; preds = %34
  %30 = load i32, i32* %bake.x
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %27, label %24

; <label>:32:                                     ; preds = %34
  ret i32 2

; <label>:33:                                     ; preds = %28
  br label %38

; <label>:34:                                     ; preds = %39
  %35 = load i32, i32* %bake.x
  %36 = icmp eq i32 %35, 6
  br i1 %36, label %32, label %29

; <label>:37:                                     ; preds = %39
  ret i32 1

; <label>:38:                                     ; preds = %33
  unreachable

; <label>:39:                                     ; preds = %43
  %40 = load i32, i32* %bake.x
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %37, label %34

; <label>:42:                                     ; preds = %43
  ret i32 0

; <label>:43:                                     ; preds = %entry
  %44 = load i32, i32* %bake.x
  %45 = icmp eq i32 %44, 8
  br i1 %45, label %42, label %39
}

define i1 @"fn$main.test.isSame"(%"adt$main.test.CellContent"* %c1, %"adt$main.test.CellContent"* %c2) {
entry:
  %c2val = alloca i32
  %c1val = alloca i32
  %bake.c2 = alloca %"adt$main.test.CellContent"*
  %bake.c1 = alloca %"adt$main.test.CellContent"*
  store %"adt$main.test.CellContent"* %c2, %"adt$main.test.CellContent"** %bake.c2
  store %"adt$main.test.CellContent"* %c1, %"adt$main.test.CellContent"** %bake.c1
  br label %0

; <label>:0:                                      ; preds = %entry
  %1 = load %"adt$main.test.CellContent"*, %"adt$main.test.CellContent"** %bake.c1
  %2 = call i32 @"fn$main.test.getValue"(%"adt$main.test.CellContent"* %1)
  store i32 %2, i32* %c1val
  %3 = load %"adt$main.test.CellContent"*, %"adt$main.test.CellContent"** %bake.c2
  %4 = call i32 @"fn$main.test.getValue"(%"adt$main.test.CellContent"* %3)
  store i32 %4, i32* %c2val
  %5 = load i32, i32* %c1val
  %6 = load i32, i32* %c2val
  %7 = icmp eq i32 %5, %6
  ret i1 %7
}

define %"adt$main.test.CellContent"* @"adtcfn$adtc$main.test.CellContent.Empty"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.test.CellContent.Empty"*
  %2 = getelementptr inbounds %"adtc$main.test.CellContent.Empty", %"adtc$main.test.CellContent.Empty"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.test.CellContent.Empty"* %1 to %"adt$main.test.CellContent"*
  ret %"adt$main.test.CellContent"* %3
}

define %"adt$main.test.CellContent"* @"adtcfn$adtc$main.test.CellContent.Filled"(%"adt$main.test.Player"* %player) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.test.CellContent.Filled"* getelementptr (%"adtc$main.test.CellContent.Filled", %"adtc$main.test.CellContent.Filled"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.test.CellContent.Filled"*
  %2 = getelementptr inbounds %"adtc$main.test.CellContent.Filled", %"adtc$main.test.CellContent.Filled"* %1, i32 0, i32 0
  store i32 1, i32* %2
  %3 = getelementptr inbounds %"adtc$main.test.CellContent.Filled", %"adtc$main.test.CellContent.Filled"* %1, i32 0, i32 1
  store %"adt$main.test.Player"* %player, %"adt$main.test.Player"** %3
  %4 = bitcast %"adtc$main.test.CellContent.Filled"* %1 to %"adt$main.test.CellContent"*
  ret %"adt$main.test.CellContent"* %4
}

define %"adt$main.test.CellList"* @"fn$main.test.skip"(%"adt$main.test.CellList"* %grid, i32 %n) {
entry:
  %bake.n = alloca i32
  %bake.grid = alloca %"adt$main.test.CellList"*
  store i32 %n, i32* %bake.n
  store %"adt$main.test.CellList"* %grid, %"adt$main.test.CellList"** %bake.grid
  br label %19

; <label>:0:                                      ; preds = %12
  %1 = bitcast %"adt$main.test.CellList"* %13 to %"adtc$main.test.CellList.Cons"*
  %2 = getelementptr inbounds %"adtc$main.test.CellList.Cons", %"adtc$main.test.CellList.Cons"* %1, i32 0, i32 1
  %3 = load %"adt$main.test.Cell"*, %"adt$main.test.Cell"** %2
  %4 = bitcast %"adt$main.test.CellList"* %13 to %"adtc$main.test.CellList.Cons"*
  %5 = getelementptr inbounds %"adtc$main.test.CellList.Cons", %"adtc$main.test.CellList.Cons"* %4, i32 0, i32 2
  %6 = load %"adt$main.test.CellList"*, %"adt$main.test.CellList"** %5
  store %"adt$main.test.CellList"* %6, %"adt$main.test.CellList"** %bake.grid
  br label %7

; <label>:7:                                      ; preds = %0, %12
  %8 = load i32, i32* %bake.n
  %9 = sub i32 %8, 1
  store i32 %9, i32* %bake.n
  br label %16

; <label>:10:                                     ; preds = %16
  %11 = load %"adt$main.test.CellList"*, %"adt$main.test.CellList"** %bake.grid
  ret %"adt$main.test.CellList"* %11

; <label>:12:                                     ; preds = %16
  %13 = load %"adt$main.test.CellList"*, %"adt$main.test.CellList"** %bake.grid
  %14 = getelementptr inbounds %"adt$main.test.CellList", %"adt$main.test.CellList"* %13, i32 0, i32 0
  %15 = load i32, i32* %14
  switch i32 %15, label %7 [
    i32 1, label %0
  ]

; <label>:16:                                     ; preds = %7, %19
  %17 = load i32, i32* %bake.n
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %12, label %10

; <label>:19:                                     ; preds = %entry
  br label %16
}

define %"adt$main.test.CellList"* @"adtcfn$adtc$main.test.CellList.Nil"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.test.CellList.Nil"*
  %2 = getelementptr inbounds %"adtc$main.test.CellList.Nil", %"adtc$main.test.CellList.Nil"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.test.CellList.Nil"* %1 to %"adt$main.test.CellList"*
  ret %"adt$main.test.CellList"* %3
}

define %"adt$main.test.Cell"* @"adtcfn$adtc$main.test.Cell.New"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.test.Cell.New"* getelementptr (%"adtc$main.test.Cell.New", %"adtc$main.test.Cell.New"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.test.Cell.New"*
  %2 = getelementptr inbounds %"adtc$main.test.Cell.New", %"adtc$main.test.Cell.New"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.test.Cell.New"* %1 to %"adt$main.test.Cell"*
  ret %"adt$main.test.Cell"* %3
}

define %"adt$main.test.CellList"* @"adtcfn$adtc$main.test.CellList.Cons"(%"adt$main.test.Cell"* %cell, %"adt$main.test.CellList"* %tail) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.test.CellList.Cons"* getelementptr (%"adtc$main.test.CellList.Cons", %"adtc$main.test.CellList.Cons"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.test.CellList.Cons"*
  %2 = getelementptr inbounds %"adtc$main.test.CellList.Cons", %"adtc$main.test.CellList.Cons"* %1, i32 0, i32 0
  store i32 1, i32* %2
  %3 = getelementptr inbounds %"adtc$main.test.CellList.Cons", %"adtc$main.test.CellList.Cons"* %1, i32 0, i32 1
  store %"adt$main.test.Cell"* %cell, %"adt$main.test.Cell"** %3
  %4 = getelementptr inbounds %"adtc$main.test.CellList.Cons", %"adtc$main.test.CellList.Cons"* %1, i32 0, i32 2
  store %"adt$main.test.CellList"* %tail, %"adt$main.test.CellList"** %4
  %5 = bitcast %"adtc$main.test.CellList.Cons"* %1 to %"adt$main.test.CellList"*
  ret %"adt$main.test.CellList"* %5
}

declare i8* @jf_allocate(i32)

declare i8* @jfprelude_ReadLn(i8*)

declare i32 @jfprelude_StrToInt(i8*)

define i8* @"fn$main.test.IntToStr"(i32 %x) {
entry:
  %0 = call i8* @jfprelude_IntToStr(i32 %x)
  ret i8* %0
}

declare i8* @jfprelude_IntToStr(i32)

declare void @puts(i8*)

define i32 @"fn$main.test.Rand"() {
entry:
  %0 = call i32 @rand()
  ret i32 %0
}

declare i32 @rand()
