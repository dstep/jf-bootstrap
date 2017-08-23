; ModuleID = 'main.bytecode'
source_filename = "main.bytecode"

%"adt$main.bytecode.BasicBlock.264" = type { i32, %"adt$main.bytecode.Instruction.265"**, i32, i32, i8* }
%"adt$main.bytecode.Instruction.265" = type { i32, %"adt$main.bytecode.DebugLoc.280"*, %"adt$main.ir.IRType.267"*, %"adt$main.bytecode.ValueRef.278"*, i8* }
%"adt$main.bytecode.DebugLoc.280" = type { i32 }
%"adt$main.ir.IRType.267" = type opaque
%"adt$main.bytecode.ValueRef.278" = type { i32 }
%"adt$main.bytecode.CallableRef.266" = type { i32 }
%"adtc$main.bytecode.CallableRef.ADTConstructor.274" = type { i32, %"adt$main.ir.IRADTCons.275"* }
%"adt$main.ir.IRADTCons.275" = type { i32, %"adt$main.ir.IRADTDecl.276"*, i32, i8*, %"adt$main.ast.SrcLoc.277"*, %"adt$main.ir.IRParamList.271"*, %"adt$main.ir.IRType.267"* }
%"adt$main.ir.IRADTDecl.276" = type opaque
%"adt$main.ast.SrcLoc.277" = type opaque
%"adt$main.ir.IRParamList.271" = type opaque
%"adtc$main.bytecode.CallableRef.Function.268" = type { i32, %"adt$main.ir.IRFunctionDecl.269"* }
%"adt$main.ir.IRFunctionDecl.269" = type { i32, %"adt$main.ir.IRSymbol.270"*, %"adt$main.ir.IRParamList.271"*, %"adt$main.ir.IRTypeNode.272"*, %"adt$main.ir.IRType.267"*, %"adt$main.ir.IRFunctionBody.273"* }
%"adt$main.ir.IRSymbol.270" = type opaque
%"adt$main.ir.IRTypeNode.272" = type { i32, i1, %"adt$main.ast.SrcLoc.277"*, %"adt$main.ir.IRType.267"* }
%"adt$main.ir.IRFunctionBody.273" = type opaque
%"adtc$main.bytecode.ValueRef.Undef" = type { i32, %"adt$main.ir.IRType.267"* }
%"adtc$main.bytecode.ValueRef.ConstBool.284" = type { i32, i1, %"adt$main.ir.IRType.267"* }
%"adt$main.ir.IRPrimType.283" = type opaque
%"adtc$main.bytecode.ValueRef.ConstString.282" = type { i32, i8*, %"adt$main.ir.IRType.267"* }
%"adtc$main.bytecode.ValueRef.ConstNum.281" = type { i32, i32, %"adt$main.ir.IRType.267"* }
%"adtc$main.bytecode.ValueRef.Instr.279" = type { i32, %"adt$main.bytecode.Instruction.265"* }
%"adt$main.bytecode.WritableReference.285" = type { i32 }
%"adtc$main.bytecode.WritableReference.ArrayIndex.293" = type { i32, %"adt$main.bytecode.ValueRef.278"*, %"adt$main.bytecode.ValueRef.278"*, %"adt$main.ir.IRType.267"* }
%"adtc$main.bytecode.WritableReference.ADTField.291" = type { i32, %"adt$main.bytecode.ValueRef.278"*, %"adt$main.ir.IRADTField.292"* }
%"adt$main.ir.IRADTField.292" = type { i32, %"adt$main.ir.IRADTDecl.276"*, i8*, %"adt$main.ast.SrcLoc.277"*, %"adt$main.ir.IRTypeNode.272"*, i32 }
%"adtc$main.bytecode.WritableReference.Global.288" = type { i32, %"adt$main.ir.IRGlobalDecl.289"* }
%"adt$main.ir.IRGlobalDecl.289" = type { i32, %"adt$main.ir.IRSymbol.270"*, %"adt$main.ir.IRTypeNode.272"*, %"adt$main.ir.IRExprNode.290"* }
%"adt$main.ir.IRExprNode.290" = type opaque
%"adtc$main.bytecode.WritableReference.Variable.286" = type { i32, %"adt$main.bytecode.Variable.287"* }
%"adt$main.bytecode.Variable.287" = type { i32, %"adt$main.ir.IRType.267"*, %"adt$main.bytecode.DebugLoc.280"* }
%"adt$main.bytecode.FunctionFrame.294" = type { i32, %"adt$main.bytecode.VariableList.295"*, %"adt$main.bytecode.BasicBlock.264"*, %"adt$main.bytecode.BasicBlockList.296"* }
%"adt$main.bytecode.VariableList.295" = type { i32 }
%"adt$main.bytecode.BasicBlockList.296" = type { i32 }
%"adtc$main.bytecode.BasicBlock.New" = type { i32, %"adt$main.bytecode.Instruction.265"**, i32, i32, i8* }
%"adtc$main.bytecode.BasicBlockList.Cons.332" = type { i32, %"adt$main.bytecode.BasicBlock.264"*, %"adt$main.bytecode.BasicBlockList.296"* }
%"adtc$main.bytecode.VariableList.Cons.333" = type { i32, %"adt$main.bytecode.Variable.287"*, %"adt$main.bytecode.VariableList.295"* }
%"adt$main.bytecode.Coerce.297" = type { i32 }
%"adtc$main.bytecode.Coerce.None" = type { i32 }
%"adtc$main.bytecode.Coerce.FromUndef" = type { i32 }
%"adtc$main.bytecode.Coerce.ID" = type { i32 }
%"adtc$main.bytecode.FunctionFrame.New" = type { i32, %"adt$main.bytecode.VariableList.295"*, %"adt$main.bytecode.BasicBlock.264"*, %"adt$main.bytecode.BasicBlockList.296"* }
%"adtc$main.bytecode.VariableList.Nil" = type { i32 }
%"adtc$main.bytecode.BasicBlockList.Nil" = type { i32 }
%"adt$main.bytecode.ValueRefList.298" = type { i32 }
%"adtc$main.bytecode.ValueRefList.Nil" = type { i32 }
%"adtc$main.bytecode.ValueRefList.Cons.299" = type { i32, %"adt$main.bytecode.ValueRef.278"*, %"adt$main.bytecode.ValueRefList.298"* }
%"adtc$main.bytecode.Instruction.WriteVariable.300" = type { i32, %"adt$main.bytecode.DebugLoc.280"*, %"adt$main.ir.IRType.267"*, %"adt$main.bytecode.ValueRef.278"*, i8*, %"adt$main.bytecode.Variable.287"*, %"adt$main.bytecode.ValueRef.278"* }
%"adtc$main.bytecode.Instruction.ReadVariable.301" = type { i32, %"adt$main.bytecode.DebugLoc.280"*, %"adt$main.ir.IRType.267"*, %"adt$main.bytecode.ValueRef.278"*, i8*, %"adt$main.bytecode.Variable.287"* }
%"adtc$main.bytecode.Instruction.CallConstructor.302" = type { i32, %"adt$main.bytecode.DebugLoc.280"*, %"adt$main.ir.IRType.267"*, %"adt$main.bytecode.ValueRef.278"*, i8*, %"adt$main.ir.IRADTCons.275"*, %"adt$main.bytecode.ValueRefList.298"* }
%"adtc$main.bytecode.Instruction.CallFunction.303" = type { i32, %"adt$main.bytecode.DebugLoc.280"*, %"adt$main.ir.IRType.267"*, %"adt$main.bytecode.ValueRef.278"*, i8*, %"adt$main.ir.IRFunctionDecl.269"*, %"adt$main.bytecode.ValueRefList.298"* }
%"adt$main.bytecode.Intrinsic.305" = type { i32 }
%"adtc$main.bytecode.Instruction.CallIntrinsic.304" = type { i32, %"adt$main.bytecode.DebugLoc.280"*, %"adt$main.ir.IRType.267"*, %"adt$main.bytecode.ValueRef.278"*, i8*, %"adt$main.bytecode.Intrinsic.305"*, %"adt$main.bytecode.ValueRefList.298"* }
%"adtc$main.bytecode.Instruction.ReadGlobal.306" = type { i32, %"adt$main.bytecode.DebugLoc.280"*, %"adt$main.ir.IRType.267"*, %"adt$main.bytecode.ValueRef.278"*, i8*, %"adt$main.ir.IRGlobalDecl.289"* }
%"adtc$main.bytecode.Instruction.WriteGlobal.307" = type { i32, %"adt$main.bytecode.DebugLoc.280"*, %"adt$main.ir.IRType.267"*, %"adt$main.bytecode.ValueRef.278"*, i8*, %"adt$main.ir.IRGlobalDecl.289"*, %"adt$main.bytecode.ValueRef.278"* }
%"adt$main.bytecode.PHIList.309" = type { i32 }
%"adtc$main.bytecode.Instruction.PHI.308" = type { i32, %"adt$main.bytecode.DebugLoc.280"*, %"adt$main.ir.IRType.267"*, %"adt$main.bytecode.ValueRef.278"*, i8*, %"adt$main.bytecode.PHIList.309"* }
%"adtc$main.bytecode.Instruction.ArrayRead.310" = type { i32, %"adt$main.bytecode.DebugLoc.280"*, %"adt$main.ir.IRType.267"*, %"adt$main.bytecode.ValueRef.278"*, i8*, %"adt$main.bytecode.ValueRef.278"*, %"adt$main.bytecode.ValueRef.278"* }
%"adtc$main.bytecode.Instruction.ArrayWrite.311" = type { i32, %"adt$main.bytecode.DebugLoc.280"*, %"adt$main.ir.IRType.267"*, %"adt$main.bytecode.ValueRef.278"*, i8*, %"adt$main.bytecode.ValueRef.278"*, %"adt$main.bytecode.ValueRef.278"*, %"adt$main.bytecode.ValueRef.278"* }
%"adt$main.ir.IRParam.313" = type opaque
%"adtc$main.bytecode.Instruction.ADTExtract.312" = type { i32, %"adt$main.bytecode.DebugLoc.280"*, %"adt$main.ir.IRType.267"*, %"adt$main.bytecode.ValueRef.278"*, i8*, %"adt$main.bytecode.ValueRef.278"*, %"adt$main.ir.IRADTCons.275"*, %"adt$main.ir.IRParam.313"* }
%"adtc$main.bytecode.Instruction.ReadADTField.314" = type { i32, %"adt$main.bytecode.DebugLoc.280"*, %"adt$main.ir.IRType.267"*, %"adt$main.bytecode.ValueRef.278"*, i8*, %"adt$main.bytecode.ValueRef.278"*, %"adt$main.ir.IRADTField.292"* }
%"adtc$main.bytecode.Instruction.WriteADTField.315" = type { i32, %"adt$main.bytecode.DebugLoc.280"*, %"adt$main.ir.IRType.267"*, %"adt$main.bytecode.ValueRef.278"*, i8*, %"adt$main.bytecode.ValueRef.278"*, %"adt$main.ir.IRADTField.292"*, %"adt$main.bytecode.ValueRef.278"* }
%"adtc$main.bytecode.Instruction.Unreachable" = type { i32, %"adt$main.bytecode.DebugLoc.280"*, %"adt$main.ir.IRType.267"*, %"adt$main.bytecode.ValueRef.278"*, i8* }
%"adtc$main.bytecode.Instruction.Jump.316" = type { i32, %"adt$main.bytecode.DebugLoc.280"*, %"adt$main.ir.IRType.267"*, %"adt$main.bytecode.ValueRef.278"*, i8*, %"adt$main.bytecode.BasicBlock.264"* }
%"adtc$main.bytecode.Instruction.CondJump.317" = type { i32, %"adt$main.bytecode.DebugLoc.280"*, %"adt$main.ir.IRType.267"*, %"adt$main.bytecode.ValueRef.278"*, i8*, %"adt$main.bytecode.ValueRef.278"*, %"adt$main.bytecode.BasicBlock.264"*, %"adt$main.bytecode.BasicBlock.264"* }
%"adt$main.bytecode.ADTJumpCase.319" = type { i32 }
%"adtc$main.bytecode.Instruction.ADTJump.318" = type { i32, %"adt$main.bytecode.DebugLoc.280"*, %"adt$main.ir.IRType.267"*, %"adt$main.bytecode.ValueRef.278"*, i8*, %"adt$main.bytecode.ValueRef.278"*, %"adt$main.ir.IRADTDecl.276"*, %"adt$main.bytecode.ADTJumpCase.319"*, %"adt$main.bytecode.BasicBlock.264"* }
%"adtc$main.bytecode.Instruction.Return.320" = type { i32, %"adt$main.bytecode.DebugLoc.280"*, %"adt$main.ir.IRType.267"*, %"adt$main.bytecode.ValueRef.278"*, i8*, %"adt$main.bytecode.ValueRef.278"* }
%"adtc$main.bytecode.ADTJumpCase.Nil" = type { i32 }
%"adtc$main.bytecode.ADTJumpCase.Cons.321" = type { i32, %"adt$main.ir.IRADTCons.275"*, %"adt$main.bytecode.BasicBlock.264"*, %"adt$main.bytecode.ADTJumpCase.319"* }
%"adt$main.bytecode.ArithOp.323" = type { i32 }
%"adtc$main.bytecode.Intrinsic.Arith.322" = type { i32, %"adt$main.bytecode.ArithOp.323"* }
%"adt$main.bytecode.Comparison.325" = type { i32 }
%"adtc$main.bytecode.Intrinsic.CompareBool.324" = type { i32, %"adt$main.bytecode.Comparison.325"* }
%"adtc$main.bytecode.Intrinsic.CompareI32.326" = type { i32, %"adt$main.bytecode.Comparison.325"* }
%"adtc$main.bytecode.Intrinsic.CompareString.327" = type { i32, %"adt$main.bytecode.Comparison.325"* }
%"adtc$main.bytecode.Intrinsic.ComparePointer.328" = type { i32, %"adt$main.bytecode.Comparison.325"* }
%"adtc$main.bytecode.Intrinsic.CompareRefEq.329" = type { i32, %"adt$main.bytecode.Comparison.325"* }
%"adtc$main.bytecode.Intrinsic.StringConcat" = type { i32 }
%"adtc$main.bytecode.Intrinsic.NewArray.330" = type { i32, %"adt$main.ir.IRType.267"* }
%"adtc$main.bytecode.Comparison.EQ" = type { i32 }
%"adtc$main.bytecode.Comparison.NE" = type { i32 }
%"adtc$main.bytecode.Comparison.LE" = type { i32 }
%"adtc$main.bytecode.Comparison.LT" = type { i32 }
%"adtc$main.bytecode.Comparison.GE" = type { i32 }
%"adtc$main.bytecode.Comparison.GT" = type { i32 }
%"adtc$main.bytecode.ArithOp.Plus" = type { i32 }
%"adtc$main.bytecode.ArithOp.Minus" = type { i32 }
%"adtc$main.bytecode.ArithOp.Divide" = type { i32 }
%"adtc$main.bytecode.ArithOp.Multiply" = type { i32 }
%"adtc$main.bytecode.PHIList.Nil" = type { i32 }
%"adtc$main.bytecode.PHIList.Cons.331" = type { i32, %"adt$main.bytecode.BasicBlock.264"*, %"adt$main.bytecode.ValueRef.278"*, %"adt$main.bytecode.PHIList.309"* }
%"adtc$main.bytecode.Variable.Parameter.334" = type { i32, %"adt$main.ir.IRType.267"*, %"adt$main.bytecode.DebugLoc.280"*, %"adt$main.ir.IRParam.313"* }
%"adtc$main.bytecode.Variable.Var.335" = type { i32, %"adt$main.ir.IRType.267"*, %"adt$main.bytecode.DebugLoc.280"*, i8* }
%"adtc$main.bytecode.Variable.Temporary" = type { i32, %"adt$main.ir.IRType.267"*, %"adt$main.bytecode.DebugLoc.280"*, i8* }
%"adtc$main.bytecode.DebugLoc.None" = type { i32 }
%"adt$main.ir.SourceFileRef.337" = type opaque
%"adtc$main.bytecode.DebugLoc.At.336" = type { i32, %"adt$main.ir.SourceFileRef.337"*, %"adt$main.ast.SrcLoc.277"* }
%"adt$main.bytecode.IndexableRef.338" = type { i32 }
%"adtc$main.bytecode.IndexableRef.Symbol.339" = type { i32, %"adt$main.ir.IRSymbol.270"* }
%"adtc$main.bytecode.IndexableRef.Value.340" = type { i32, %"adt$main.bytecode.ValueRef.278"* }
%"adt$main.bytecode.MaybeValueRef.341" = type { i32 }
%"adtc$main.bytecode.MaybeValueRef.Nothing" = type { i32 }
%"adtc$main.bytecode.MaybeValueRef.Just.342" = type { i32, %"adt$main.bytecode.ValueRef.278"* }
%"adtc$main.bytecode.ValueRef.ConstUnit" = type { i32 }

define void @"fn$main.bytecode.BasicBlockEmit"(%"adt$main.bytecode.BasicBlock.264"* %bb, %"adt$main.bytecode.Instruction.265"* %instr) {
entry:
  %i = alloca i32
  %arr = alloca %"adt$main.bytecode.Instruction.265"**
  %newCapacity = alloca i32
  %bake.instr = alloca %"adt$main.bytecode.Instruction.265"*
  %bake.bb = alloca %"adt$main.bytecode.BasicBlock.264"*
  store %"adt$main.bytecode.Instruction.265"* %instr, %"adt$main.bytecode.Instruction.265"** %bake.instr
  store %"adt$main.bytecode.BasicBlock.264"* %bb, %"adt$main.bytecode.BasicBlock.264"** %bake.bb
  br label %51

; <label>:0:                                      ; preds = %19
  %1 = load %"adt$main.bytecode.BasicBlock.264"*, %"adt$main.bytecode.BasicBlock.264"** %bake.bb
  %2 = load i32, i32* %newCapacity
  %3 = getelementptr inbounds %"adt$main.bytecode.BasicBlock.264", %"adt$main.bytecode.BasicBlock.264"* %1, i32 0, i32 3
  store i32 %2, i32* %3
  %4 = load %"adt$main.bytecode.BasicBlock.264"*, %"adt$main.bytecode.BasicBlock.264"** %bake.bb
  %5 = load %"adt$main.bytecode.Instruction.265"**, %"adt$main.bytecode.Instruction.265"*** %arr
  %6 = getelementptr inbounds %"adt$main.bytecode.BasicBlock.264", %"adt$main.bytecode.BasicBlock.264"* %4, i32 0, i32 1
  store %"adt$main.bytecode.Instruction.265"** %5, %"adt$main.bytecode.Instruction.265"*** %6
  br label %25

; <label>:7:                                      ; preds = %19
  %8 = load %"adt$main.bytecode.Instruction.265"**, %"adt$main.bytecode.Instruction.265"*** %arr
  %9 = load i32, i32* %i
  %10 = load %"adt$main.bytecode.BasicBlock.264"*, %"adt$main.bytecode.BasicBlock.264"** %bake.bb
  %11 = getelementptr inbounds %"adt$main.bytecode.BasicBlock.264", %"adt$main.bytecode.BasicBlock.264"* %10, i32 0, i32 1
  %12 = load %"adt$main.bytecode.Instruction.265"**, %"adt$main.bytecode.Instruction.265"*** %11
  %13 = load i32, i32* %i
  %14 = getelementptr inbounds %"adt$main.bytecode.Instruction.265"*, %"adt$main.bytecode.Instruction.265"** %12, i32 %13
  %15 = load %"adt$main.bytecode.Instruction.265"*, %"adt$main.bytecode.Instruction.265"** %14
  %16 = getelementptr inbounds %"adt$main.bytecode.Instruction.265"*, %"adt$main.bytecode.Instruction.265"** %8, i32 %9
  store %"adt$main.bytecode.Instruction.265"* %15, %"adt$main.bytecode.Instruction.265"** %16
  %17 = load i32, i32* %i
  %18 = add i32 %17, 1
  store i32 %18, i32* %i
  br label %19

; <label>:19:                                     ; preds = %7, %41
  %20 = load i32, i32* %i
  %21 = load %"adt$main.bytecode.BasicBlock.264"*, %"adt$main.bytecode.BasicBlock.264"** %bake.bb
  %22 = getelementptr inbounds %"adt$main.bytecode.BasicBlock.264", %"adt$main.bytecode.BasicBlock.264"* %21, i32 0, i32 2
  %23 = load i32, i32* %22
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %7, label %0

; <label>:25:                                     ; preds = %0, %40
  %26 = load %"adt$main.bytecode.BasicBlock.264"*, %"adt$main.bytecode.BasicBlock.264"** %bake.bb
  %27 = getelementptr inbounds %"adt$main.bytecode.BasicBlock.264", %"adt$main.bytecode.BasicBlock.264"* %26, i32 0, i32 1
  %28 = load %"adt$main.bytecode.Instruction.265"**, %"adt$main.bytecode.Instruction.265"*** %27
  %29 = load %"adt$main.bytecode.BasicBlock.264"*, %"adt$main.bytecode.BasicBlock.264"** %bake.bb
  %30 = getelementptr inbounds %"adt$main.bytecode.BasicBlock.264", %"adt$main.bytecode.BasicBlock.264"* %29, i32 0, i32 2
  %31 = load i32, i32* %30
  %32 = load %"adt$main.bytecode.Instruction.265"*, %"adt$main.bytecode.Instruction.265"** %bake.instr
  %33 = getelementptr inbounds %"adt$main.bytecode.Instruction.265"*, %"adt$main.bytecode.Instruction.265"** %28, i32 %31
  store %"adt$main.bytecode.Instruction.265"* %32, %"adt$main.bytecode.Instruction.265"** %33
  %34 = load %"adt$main.bytecode.BasicBlock.264"*, %"adt$main.bytecode.BasicBlock.264"** %bake.bb
  %35 = load %"adt$main.bytecode.BasicBlock.264"*, %"adt$main.bytecode.BasicBlock.264"** %bake.bb
  %36 = getelementptr inbounds %"adt$main.bytecode.BasicBlock.264", %"adt$main.bytecode.BasicBlock.264"* %35, i32 0, i32 2
  %37 = load i32, i32* %36
  %38 = add i32 %37, 1
  %39 = getelementptr inbounds %"adt$main.bytecode.BasicBlock.264", %"adt$main.bytecode.BasicBlock.264"* %34, i32 0, i32 2
  store i32 %38, i32* %39
  ret void

; <label>:40:                                     ; preds = %51
  br label %25

; <label>:41:                                     ; preds = %51
  %42 = load %"adt$main.bytecode.BasicBlock.264"*, %"adt$main.bytecode.BasicBlock.264"** %bake.bb
  %43 = getelementptr inbounds %"adt$main.bytecode.BasicBlock.264", %"adt$main.bytecode.BasicBlock.264"* %42, i32 0, i32 3
  %44 = load i32, i32* %43
  %45 = mul i32 %44, 2
  %46 = add i32 %45, 1
  store i32 %46, i32* %newCapacity
  %47 = load i32, i32* %newCapacity
  %48 = mul i32 %47, ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32)
  %49 = call i8* @jf_allocate(i32 %48)
  %50 = bitcast i8* %49 to %"adt$main.bytecode.Instruction.265"**
  store %"adt$main.bytecode.Instruction.265"** %50, %"adt$main.bytecode.Instruction.265"*** %arr
  store i32 0, i32* %i
  br label %19

; <label>:51:                                     ; preds = %entry
  %52 = load %"adt$main.bytecode.BasicBlock.264"*, %"adt$main.bytecode.BasicBlock.264"** %bake.bb
  %53 = getelementptr inbounds %"adt$main.bytecode.BasicBlock.264", %"adt$main.bytecode.BasicBlock.264"* %52, i32 0, i32 3
  %54 = load i32, i32* %53
  %55 = load %"adt$main.bytecode.BasicBlock.264"*, %"adt$main.bytecode.BasicBlock.264"** %bake.bb
  %56 = getelementptr inbounds %"adt$main.bytecode.BasicBlock.264", %"adt$main.bytecode.BasicBlock.264"* %55, i32 0, i32 2
  %57 = load i32, i32* %56
  %58 = icmp eq i32 %54, %57
  br i1 %58, label %41, label %40
}

declare i8* @jf_allocate(i32)

define %"adt$main.ir.IRType.267"* @"fn$main.bytecode.CallableRefGetType"(%"adt$main.bytecode.CallableRef.266"* %value) {
entry:
  %bake.value = alloca %"adt$main.bytecode.CallableRef.266"*
  store %"adt$main.bytecode.CallableRef.266"* %value, %"adt$main.bytecode.CallableRef.266"** %bake.value
  br label %13

; <label>:0:                                      ; preds = %13
  %1 = bitcast %"adt$main.bytecode.CallableRef.266"* %14 to %"adtc$main.bytecode.CallableRef.ADTConstructor.274"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.CallableRef.ADTConstructor.274", %"adtc$main.bytecode.CallableRef.ADTConstructor.274"* %1, i32 0, i32 1
  %3 = load %"adt$main.ir.IRADTCons.275"*, %"adt$main.ir.IRADTCons.275"** %2
  %4 = getelementptr inbounds %"adt$main.ir.IRADTCons.275", %"adt$main.ir.IRADTCons.275"* %3, i32 0, i32 6
  %5 = load %"adt$main.ir.IRType.267"*, %"adt$main.ir.IRType.267"** %4
  ret %"adt$main.ir.IRType.267"* %5

; <label>:6:                                      ; preds = %13
  %7 = bitcast %"adt$main.bytecode.CallableRef.266"* %14 to %"adtc$main.bytecode.CallableRef.Function.268"*
  %8 = getelementptr inbounds %"adtc$main.bytecode.CallableRef.Function.268", %"adtc$main.bytecode.CallableRef.Function.268"* %7, i32 0, i32 1
  %9 = load %"adt$main.ir.IRFunctionDecl.269"*, %"adt$main.ir.IRFunctionDecl.269"** %8
  %10 = getelementptr inbounds %"adt$main.ir.IRFunctionDecl.269", %"adt$main.ir.IRFunctionDecl.269"* %9, i32 0, i32 4
  %11 = load %"adt$main.ir.IRType.267"*, %"adt$main.ir.IRType.267"** %10
  ret %"adt$main.ir.IRType.267"* %11

; <label>:12:                                     ; preds = %13
  unreachable

; <label>:13:                                     ; preds = %entry
  %14 = load %"adt$main.bytecode.CallableRef.266"*, %"adt$main.bytecode.CallableRef.266"** %bake.value
  %15 = getelementptr inbounds %"adt$main.bytecode.CallableRef.266", %"adt$main.bytecode.CallableRef.266"* %14, i32 0, i32 0
  %16 = load i32, i32* %15
  switch i32 %16, label %12 [
    i32 1, label %0
    i32 0, label %6
  ]
}

define %"adt$main.ir.IRType.267"* @"fn$main.bytecode.ValueRefGetType"(%"adt$main.bytecode.ValueRef.278"* %value) {
entry:
  %bake.value = alloca %"adt$main.bytecode.ValueRef.278"*
  store %"adt$main.bytecode.ValueRef.278"* %value, %"adt$main.bytecode.ValueRef.278"** %bake.value
  br label %35

; <label>:0:                                      ; preds = %35
  %1 = bitcast %"adt$main.bytecode.ValueRef.278"* %36 to %"adtc$main.bytecode.ValueRef.Undef"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.ValueRef.Undef", %"adtc$main.bytecode.ValueRef.Undef"* %1, i32 0, i32 1
  %3 = load %"adt$main.ir.IRType.267"*, %"adt$main.ir.IRType.267"** %2
  ret %"adt$main.ir.IRType.267"* %3

; <label>:4:                                      ; preds = %35
  %5 = bitcast %"adt$main.bytecode.ValueRef.278"* %36 to %"adtc$main.bytecode.ValueRef.ConstBool.284"*
  %6 = getelementptr inbounds %"adtc$main.bytecode.ValueRef.ConstBool.284", %"adtc$main.bytecode.ValueRef.ConstBool.284"* %5, i32 0, i32 1
  %7 = load i1, i1* %6
  %8 = bitcast %"adt$main.bytecode.ValueRef.278"* %36 to %"adtc$main.bytecode.ValueRef.ConstBool.284"*
  %9 = getelementptr inbounds %"adtc$main.bytecode.ValueRef.ConstBool.284", %"adtc$main.bytecode.ValueRef.ConstBool.284"* %8, i32 0, i32 2
  %10 = load %"adt$main.ir.IRType.267"*, %"adt$main.ir.IRType.267"** %9
  ret %"adt$main.ir.IRType.267"* %10

; <label>:11:                                     ; preds = %35
  %12 = call %"adt$main.ir.IRPrimType.283"* @"adtcfn$adtc$main.ir.IRPrimType.Unit"()
  %13 = call %"adt$main.ir.IRType.267"* @"adtcfn$adtc$main.ir.IRType.Prim"(%"adt$main.ir.IRPrimType.283"* %12)
  ret %"adt$main.ir.IRType.267"* %13

; <label>:14:                                     ; preds = %35
  %15 = bitcast %"adt$main.bytecode.ValueRef.278"* %36 to %"adtc$main.bytecode.ValueRef.ConstString.282"*
  %16 = getelementptr inbounds %"adtc$main.bytecode.ValueRef.ConstString.282", %"adtc$main.bytecode.ValueRef.ConstString.282"* %15, i32 0, i32 1
  %17 = load i8*, i8** %16
  %18 = bitcast %"adt$main.bytecode.ValueRef.278"* %36 to %"adtc$main.bytecode.ValueRef.ConstString.282"*
  %19 = getelementptr inbounds %"adtc$main.bytecode.ValueRef.ConstString.282", %"adtc$main.bytecode.ValueRef.ConstString.282"* %18, i32 0, i32 2
  %20 = load %"adt$main.ir.IRType.267"*, %"adt$main.ir.IRType.267"** %19
  ret %"adt$main.ir.IRType.267"* %20

; <label>:21:                                     ; preds = %35
  %22 = bitcast %"adt$main.bytecode.ValueRef.278"* %36 to %"adtc$main.bytecode.ValueRef.ConstNum.281"*
  %23 = getelementptr inbounds %"adtc$main.bytecode.ValueRef.ConstNum.281", %"adtc$main.bytecode.ValueRef.ConstNum.281"* %22, i32 0, i32 1
  %24 = load i32, i32* %23
  %25 = bitcast %"adt$main.bytecode.ValueRef.278"* %36 to %"adtc$main.bytecode.ValueRef.ConstNum.281"*
  %26 = getelementptr inbounds %"adtc$main.bytecode.ValueRef.ConstNum.281", %"adtc$main.bytecode.ValueRef.ConstNum.281"* %25, i32 0, i32 2
  %27 = load %"adt$main.ir.IRType.267"*, %"adt$main.ir.IRType.267"** %26
  ret %"adt$main.ir.IRType.267"* %27

; <label>:28:                                     ; preds = %35
  %29 = bitcast %"adt$main.bytecode.ValueRef.278"* %36 to %"adtc$main.bytecode.ValueRef.Instr.279"*
  %30 = getelementptr inbounds %"adtc$main.bytecode.ValueRef.Instr.279", %"adtc$main.bytecode.ValueRef.Instr.279"* %29, i32 0, i32 1
  %31 = load %"adt$main.bytecode.Instruction.265"*, %"adt$main.bytecode.Instruction.265"** %30
  %32 = getelementptr inbounds %"adt$main.bytecode.Instruction.265", %"adt$main.bytecode.Instruction.265"* %31, i32 0, i32 2
  %33 = load %"adt$main.ir.IRType.267"*, %"adt$main.ir.IRType.267"** %32
  ret %"adt$main.ir.IRType.267"* %33

; <label>:34:                                     ; preds = %35
  unreachable

; <label>:35:                                     ; preds = %entry
  %36 = load %"adt$main.bytecode.ValueRef.278"*, %"adt$main.bytecode.ValueRef.278"** %bake.value
  %37 = getelementptr inbounds %"adt$main.bytecode.ValueRef.278", %"adt$main.bytecode.ValueRef.278"* %36, i32 0, i32 0
  %38 = load i32, i32* %37
  switch i32 %38, label %34 [
    i32 5, label %0
    i32 3, label %4
    i32 4, label %11
    i32 2, label %14
    i32 1, label %21
    i32 0, label %28
  ]
}

declare %"adt$main.ir.IRPrimType.283"* @"adtcfn$adtc$main.ir.IRPrimType.Unit"()

declare %"adt$main.ir.IRType.267"* @"adtcfn$adtc$main.ir.IRType.Prim"(%"adt$main.ir.IRPrimType.283"*)

define %"adt$main.ir.IRType.267"* @"fn$main.bytecode.WritableReferenceGetType"(%"adt$main.bytecode.WritableReference.285"* %ref) {
entry:
  %bake.ref = alloca %"adt$main.bytecode.WritableReference.285"*
  store %"adt$main.bytecode.WritableReference.285"* %ref, %"adt$main.bytecode.WritableReference.285"** %bake.ref
  br label %36

; <label>:0:                                      ; preds = %36
  %1 = bitcast %"adt$main.bytecode.WritableReference.285"* %37 to %"adtc$main.bytecode.WritableReference.ArrayIndex.293"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.WritableReference.ArrayIndex.293", %"adtc$main.bytecode.WritableReference.ArrayIndex.293"* %1, i32 0, i32 1
  %3 = load %"adt$main.bytecode.ValueRef.278"*, %"adt$main.bytecode.ValueRef.278"** %2
  %4 = bitcast %"adt$main.bytecode.WritableReference.285"* %37 to %"adtc$main.bytecode.WritableReference.ArrayIndex.293"*
  %5 = getelementptr inbounds %"adtc$main.bytecode.WritableReference.ArrayIndex.293", %"adtc$main.bytecode.WritableReference.ArrayIndex.293"* %4, i32 0, i32 2
  %6 = load %"adt$main.bytecode.ValueRef.278"*, %"adt$main.bytecode.ValueRef.278"** %5
  %7 = bitcast %"adt$main.bytecode.WritableReference.285"* %37 to %"adtc$main.bytecode.WritableReference.ArrayIndex.293"*
  %8 = getelementptr inbounds %"adtc$main.bytecode.WritableReference.ArrayIndex.293", %"adtc$main.bytecode.WritableReference.ArrayIndex.293"* %7, i32 0, i32 3
  %9 = load %"adt$main.ir.IRType.267"*, %"adt$main.ir.IRType.267"** %8
  ret %"adt$main.ir.IRType.267"* %9

; <label>:10:                                     ; preds = %36
  %11 = bitcast %"adt$main.bytecode.WritableReference.285"* %37 to %"adtc$main.bytecode.WritableReference.ADTField.291"*
  %12 = getelementptr inbounds %"adtc$main.bytecode.WritableReference.ADTField.291", %"adtc$main.bytecode.WritableReference.ADTField.291"* %11, i32 0, i32 1
  %13 = load %"adt$main.bytecode.ValueRef.278"*, %"adt$main.bytecode.ValueRef.278"** %12
  %14 = bitcast %"adt$main.bytecode.WritableReference.285"* %37 to %"adtc$main.bytecode.WritableReference.ADTField.291"*
  %15 = getelementptr inbounds %"adtc$main.bytecode.WritableReference.ADTField.291", %"adtc$main.bytecode.WritableReference.ADTField.291"* %14, i32 0, i32 2
  %16 = load %"adt$main.ir.IRADTField.292"*, %"adt$main.ir.IRADTField.292"** %15
  %17 = getelementptr inbounds %"adt$main.ir.IRADTField.292", %"adt$main.ir.IRADTField.292"* %16, i32 0, i32 4
  %18 = load %"adt$main.ir.IRTypeNode.272"*, %"adt$main.ir.IRTypeNode.272"** %17
  %19 = getelementptr inbounds %"adt$main.ir.IRTypeNode.272", %"adt$main.ir.IRTypeNode.272"* %18, i32 0, i32 3
  %20 = load %"adt$main.ir.IRType.267"*, %"adt$main.ir.IRType.267"** %19
  ret %"adt$main.ir.IRType.267"* %20

; <label>:21:                                     ; preds = %36
  %22 = bitcast %"adt$main.bytecode.WritableReference.285"* %37 to %"adtc$main.bytecode.WritableReference.Global.288"*
  %23 = getelementptr inbounds %"adtc$main.bytecode.WritableReference.Global.288", %"adtc$main.bytecode.WritableReference.Global.288"* %22, i32 0, i32 1
  %24 = load %"adt$main.ir.IRGlobalDecl.289"*, %"adt$main.ir.IRGlobalDecl.289"** %23
  %25 = getelementptr inbounds %"adt$main.ir.IRGlobalDecl.289", %"adt$main.ir.IRGlobalDecl.289"* %24, i32 0, i32 2
  %26 = load %"adt$main.ir.IRTypeNode.272"*, %"adt$main.ir.IRTypeNode.272"** %25
  %27 = getelementptr inbounds %"adt$main.ir.IRTypeNode.272", %"adt$main.ir.IRTypeNode.272"* %26, i32 0, i32 3
  %28 = load %"adt$main.ir.IRType.267"*, %"adt$main.ir.IRType.267"** %27
  ret %"adt$main.ir.IRType.267"* %28

; <label>:29:                                     ; preds = %36
  %30 = bitcast %"adt$main.bytecode.WritableReference.285"* %37 to %"adtc$main.bytecode.WritableReference.Variable.286"*
  %31 = getelementptr inbounds %"adtc$main.bytecode.WritableReference.Variable.286", %"adtc$main.bytecode.WritableReference.Variable.286"* %30, i32 0, i32 1
  %32 = load %"adt$main.bytecode.Variable.287"*, %"adt$main.bytecode.Variable.287"** %31
  %33 = getelementptr inbounds %"adt$main.bytecode.Variable.287", %"adt$main.bytecode.Variable.287"* %32, i32 0, i32 1
  %34 = load %"adt$main.ir.IRType.267"*, %"adt$main.ir.IRType.267"** %33
  ret %"adt$main.ir.IRType.267"* %34

; <label>:35:                                     ; preds = %36
  unreachable

; <label>:36:                                     ; preds = %entry
  %37 = load %"adt$main.bytecode.WritableReference.285"*, %"adt$main.bytecode.WritableReference.285"** %bake.ref
  %38 = getelementptr inbounds %"adt$main.bytecode.WritableReference.285", %"adt$main.bytecode.WritableReference.285"* %37, i32 0, i32 0
  %39 = load i32, i32* %38
  switch i32 %39, label %35 [
    i32 2, label %0
    i32 3, label %10
    i32 1, label %21
    i32 0, label %29
  ]
}

define %"adt$main.bytecode.BasicBlock.264"* @"fn$main.bytecode.BasicBlockCreate"(%"adt$main.bytecode.FunctionFrame.294"* %frame) {
entry:
  %bb = alloca %"adt$main.bytecode.BasicBlock.264"*
  %bake.frame = alloca %"adt$main.bytecode.FunctionFrame.294"*
  store %"adt$main.bytecode.FunctionFrame.294"* %frame, %"adt$main.bytecode.FunctionFrame.294"** %bake.frame
  br label %0

; <label>:0:                                      ; preds = %entry
  %1 = call %"adt$main.bytecode.BasicBlock.264"* @"adtcfn$adtc$main.bytecode.BasicBlock.New"()
  store %"adt$main.bytecode.BasicBlock.264"* %1, %"adt$main.bytecode.BasicBlock.264"** %bb
  %2 = load %"adt$main.bytecode.BasicBlock.264"*, %"adt$main.bytecode.BasicBlock.264"** %bb
  %3 = getelementptr inbounds %"adt$main.bytecode.BasicBlock.264", %"adt$main.bytecode.BasicBlock.264"* %2, i32 0, i32 2
  store i32 0, i32* %3
  %4 = load %"adt$main.bytecode.BasicBlock.264"*, %"adt$main.bytecode.BasicBlock.264"** %bb
  %5 = getelementptr inbounds %"adt$main.bytecode.BasicBlock.264", %"adt$main.bytecode.BasicBlock.264"* %4, i32 0, i32 3
  store i32 0, i32* %5
  %6 = load %"adt$main.bytecode.FunctionFrame.294"*, %"adt$main.bytecode.FunctionFrame.294"** %bake.frame
  %7 = load %"adt$main.bytecode.BasicBlock.264"*, %"adt$main.bytecode.BasicBlock.264"** %bb
  %8 = load %"adt$main.bytecode.FunctionFrame.294"*, %"adt$main.bytecode.FunctionFrame.294"** %bake.frame
  %9 = getelementptr inbounds %"adt$main.bytecode.FunctionFrame.294", %"adt$main.bytecode.FunctionFrame.294"* %8, i32 0, i32 3
  %10 = load %"adt$main.bytecode.BasicBlockList.296"*, %"adt$main.bytecode.BasicBlockList.296"** %9
  %11 = call %"adt$main.bytecode.BasicBlockList.296"* @"adtcfn$adtc$main.bytecode.BasicBlockList.Cons"(%"adt$main.bytecode.BasicBlock.264"* %7, %"adt$main.bytecode.BasicBlockList.296"* %10)
  %12 = getelementptr inbounds %"adt$main.bytecode.FunctionFrame.294", %"adt$main.bytecode.FunctionFrame.294"* %6, i32 0, i32 3
  store %"adt$main.bytecode.BasicBlockList.296"* %11, %"adt$main.bytecode.BasicBlockList.296"** %12
  %13 = load %"adt$main.bytecode.BasicBlock.264"*, %"adt$main.bytecode.BasicBlock.264"** %bb
  ret %"adt$main.bytecode.BasicBlock.264"* %13
}

define %"adt$main.bytecode.BasicBlock.264"* @"adtcfn$adtc$main.bytecode.BasicBlock.New"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode.BasicBlock.New"* getelementptr (%"adtc$main.bytecode.BasicBlock.New", %"adtc$main.bytecode.BasicBlock.New"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.BasicBlock.New"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.BasicBlock.New", %"adtc$main.bytecode.BasicBlock.New"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.bytecode.BasicBlock.New"* %1 to %"adt$main.bytecode.BasicBlock.264"*
  ret %"adt$main.bytecode.BasicBlock.264"* %3
}

define %"adt$main.bytecode.BasicBlockList.296"* @"adtcfn$adtc$main.bytecode.BasicBlockList.Cons"(%"adt$main.bytecode.BasicBlock.264"* %block, %"adt$main.bytecode.BasicBlockList.296"* %tail) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode.BasicBlockList.Cons.332"* getelementptr (%"adtc$main.bytecode.BasicBlockList.Cons.332", %"adtc$main.bytecode.BasicBlockList.Cons.332"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.BasicBlockList.Cons.332"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.BasicBlockList.Cons.332", %"adtc$main.bytecode.BasicBlockList.Cons.332"* %1, i32 0, i32 0
  store i32 1, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode.BasicBlockList.Cons.332", %"adtc$main.bytecode.BasicBlockList.Cons.332"* %1, i32 0, i32 1
  store %"adt$main.bytecode.BasicBlock.264"* %block, %"adt$main.bytecode.BasicBlock.264"** %3
  %4 = getelementptr inbounds %"adtc$main.bytecode.BasicBlockList.Cons.332", %"adtc$main.bytecode.BasicBlockList.Cons.332"* %1, i32 0, i32 2
  store %"adt$main.bytecode.BasicBlockList.296"* %tail, %"adt$main.bytecode.BasicBlockList.296"** %4
  %5 = bitcast %"adtc$main.bytecode.BasicBlockList.Cons.332"* %1 to %"adt$main.bytecode.BasicBlockList.296"*
  ret %"adt$main.bytecode.BasicBlockList.296"* %5
}

define void @"fn$main.bytecode.FunctionFrameAddVar"(%"adt$main.bytecode.FunctionFrame.294"* %frame, %"adt$main.bytecode.Variable.287"* %var_) {
entry:
  %bake.var_ = alloca %"adt$main.bytecode.Variable.287"*
  %bake.frame = alloca %"adt$main.bytecode.FunctionFrame.294"*
  store %"adt$main.bytecode.Variable.287"* %var_, %"adt$main.bytecode.Variable.287"** %bake.var_
  store %"adt$main.bytecode.FunctionFrame.294"* %frame, %"adt$main.bytecode.FunctionFrame.294"** %bake.frame
  br label %0

; <label>:0:                                      ; preds = %entry
  %1 = load %"adt$main.bytecode.FunctionFrame.294"*, %"adt$main.bytecode.FunctionFrame.294"** %bake.frame
  %2 = load %"adt$main.bytecode.Variable.287"*, %"adt$main.bytecode.Variable.287"** %bake.var_
  %3 = load %"adt$main.bytecode.FunctionFrame.294"*, %"adt$main.bytecode.FunctionFrame.294"** %bake.frame
  %4 = getelementptr inbounds %"adt$main.bytecode.FunctionFrame.294", %"adt$main.bytecode.FunctionFrame.294"* %3, i32 0, i32 1
  %5 = load %"adt$main.bytecode.VariableList.295"*, %"adt$main.bytecode.VariableList.295"** %4
  %6 = call %"adt$main.bytecode.VariableList.295"* @"adtcfn$adtc$main.bytecode.VariableList.Cons"(%"adt$main.bytecode.Variable.287"* %2, %"adt$main.bytecode.VariableList.295"* %5)
  %7 = getelementptr inbounds %"adt$main.bytecode.FunctionFrame.294", %"adt$main.bytecode.FunctionFrame.294"* %1, i32 0, i32 1
  store %"adt$main.bytecode.VariableList.295"* %6, %"adt$main.bytecode.VariableList.295"** %7
  ret void
}

define %"adt$main.bytecode.VariableList.295"* @"adtcfn$adtc$main.bytecode.VariableList.Cons"(%"adt$main.bytecode.Variable.287"* %var_, %"adt$main.bytecode.VariableList.295"* %tail) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode.VariableList.Cons.333"* getelementptr (%"adtc$main.bytecode.VariableList.Cons.333", %"adtc$main.bytecode.VariableList.Cons.333"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.VariableList.Cons.333"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.VariableList.Cons.333", %"adtc$main.bytecode.VariableList.Cons.333"* %1, i32 0, i32 0
  store i32 1, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode.VariableList.Cons.333", %"adtc$main.bytecode.VariableList.Cons.333"* %1, i32 0, i32 1
  store %"adt$main.bytecode.Variable.287"* %var_, %"adt$main.bytecode.Variable.287"** %3
  %4 = getelementptr inbounds %"adtc$main.bytecode.VariableList.Cons.333", %"adtc$main.bytecode.VariableList.Cons.333"* %1, i32 0, i32 2
  store %"adt$main.bytecode.VariableList.295"* %tail, %"adt$main.bytecode.VariableList.295"** %4
  %5 = bitcast %"adtc$main.bytecode.VariableList.Cons.333"* %1 to %"adt$main.bytecode.VariableList.295"*
  ret %"adt$main.bytecode.VariableList.295"* %5
}

define %"adt$main.bytecode.Coerce.297"* @"adtcfn$adtc$main.bytecode.Coerce.None"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.Coerce.None"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.Coerce.None", %"adtc$main.bytecode.Coerce.None"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.bytecode.Coerce.None"* %1 to %"adt$main.bytecode.Coerce.297"*
  ret %"adt$main.bytecode.Coerce.297"* %3
}

define %"adt$main.bytecode.Coerce.297"* @"adtcfn$adtc$main.bytecode.Coerce.FromUndef"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.Coerce.FromUndef"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.Coerce.FromUndef", %"adtc$main.bytecode.Coerce.FromUndef"* %1, i32 0, i32 0
  store i32 1, i32* %2
  %3 = bitcast %"adtc$main.bytecode.Coerce.FromUndef"* %1 to %"adt$main.bytecode.Coerce.297"*
  ret %"adt$main.bytecode.Coerce.297"* %3
}

define %"adt$main.bytecode.Coerce.297"* @"adtcfn$adtc$main.bytecode.Coerce.ID"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.Coerce.ID"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.Coerce.ID", %"adtc$main.bytecode.Coerce.ID"* %1, i32 0, i32 0
  store i32 2, i32* %2
  %3 = bitcast %"adtc$main.bytecode.Coerce.ID"* %1 to %"adt$main.bytecode.Coerce.297"*
  ret %"adt$main.bytecode.Coerce.297"* %3
}

define %"adt$main.bytecode.FunctionFrame.294"* @"fn$main.bytecode.FunctionFrameCreate"() {
entry:
  %frame = alloca %"adt$main.bytecode.FunctionFrame.294"*
  br label %0

; <label>:0:                                      ; preds = %entry
  %1 = call %"adt$main.bytecode.FunctionFrame.294"* @"adtcfn$adtc$main.bytecode.FunctionFrame.New"()
  store %"adt$main.bytecode.FunctionFrame.294"* %1, %"adt$main.bytecode.FunctionFrame.294"** %frame
  %2 = load %"adt$main.bytecode.FunctionFrame.294"*, %"adt$main.bytecode.FunctionFrame.294"** %frame
  %3 = call %"adt$main.bytecode.VariableList.295"* @"adtcfn$adtc$main.bytecode.VariableList.Nil"()
  %4 = getelementptr inbounds %"adt$main.bytecode.FunctionFrame.294", %"adt$main.bytecode.FunctionFrame.294"* %2, i32 0, i32 1
  store %"adt$main.bytecode.VariableList.295"* %3, %"adt$main.bytecode.VariableList.295"** %4
  %5 = load %"adt$main.bytecode.FunctionFrame.294"*, %"adt$main.bytecode.FunctionFrame.294"** %frame
  %6 = call %"adt$main.bytecode.BasicBlockList.296"* @"adtcfn$adtc$main.bytecode.BasicBlockList.Nil"()
  %7 = getelementptr inbounds %"adt$main.bytecode.FunctionFrame.294", %"adt$main.bytecode.FunctionFrame.294"* %5, i32 0, i32 3
  store %"adt$main.bytecode.BasicBlockList.296"* %6, %"adt$main.bytecode.BasicBlockList.296"** %7
  %8 = load %"adt$main.bytecode.FunctionFrame.294"*, %"adt$main.bytecode.FunctionFrame.294"** %frame
  %9 = load %"adt$main.bytecode.FunctionFrame.294"*, %"adt$main.bytecode.FunctionFrame.294"** %frame
  %10 = call %"adt$main.bytecode.BasicBlock.264"* @"fn$main.bytecode.BasicBlockCreate"(%"adt$main.bytecode.FunctionFrame.294"* %9)
  %11 = getelementptr inbounds %"adt$main.bytecode.FunctionFrame.294", %"adt$main.bytecode.FunctionFrame.294"* %8, i32 0, i32 2
  store %"adt$main.bytecode.BasicBlock.264"* %10, %"adt$main.bytecode.BasicBlock.264"** %11
  %12 = load %"adt$main.bytecode.FunctionFrame.294"*, %"adt$main.bytecode.FunctionFrame.294"** %frame
  ret %"adt$main.bytecode.FunctionFrame.294"* %12
}

define %"adt$main.bytecode.FunctionFrame.294"* @"adtcfn$adtc$main.bytecode.FunctionFrame.New"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode.FunctionFrame.New"* getelementptr (%"adtc$main.bytecode.FunctionFrame.New", %"adtc$main.bytecode.FunctionFrame.New"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.FunctionFrame.New"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.FunctionFrame.New", %"adtc$main.bytecode.FunctionFrame.New"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.bytecode.FunctionFrame.New"* %1 to %"adt$main.bytecode.FunctionFrame.294"*
  ret %"adt$main.bytecode.FunctionFrame.294"* %3
}

define %"adt$main.bytecode.VariableList.295"* @"adtcfn$adtc$main.bytecode.VariableList.Nil"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.VariableList.Nil"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.VariableList.Nil", %"adtc$main.bytecode.VariableList.Nil"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.bytecode.VariableList.Nil"* %1 to %"adt$main.bytecode.VariableList.295"*
  ret %"adt$main.bytecode.VariableList.295"* %3
}

define %"adt$main.bytecode.BasicBlockList.296"* @"adtcfn$adtc$main.bytecode.BasicBlockList.Nil"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.BasicBlockList.Nil"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.BasicBlockList.Nil", %"adtc$main.bytecode.BasicBlockList.Nil"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.bytecode.BasicBlockList.Nil"* %1 to %"adt$main.bytecode.BasicBlockList.296"*
  ret %"adt$main.bytecode.BasicBlockList.296"* %3
}

define %"adt$main.bytecode.ValueRefList.298"* @"adtcfn$adtc$main.bytecode.ValueRefList.Nil"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.ValueRefList.Nil"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.ValueRefList.Nil", %"adtc$main.bytecode.ValueRefList.Nil"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.bytecode.ValueRefList.Nil"* %1 to %"adt$main.bytecode.ValueRefList.298"*
  ret %"adt$main.bytecode.ValueRefList.298"* %3
}

define %"adt$main.bytecode.ValueRefList.298"* @"adtcfn$adtc$main.bytecode.ValueRefList.Cons"(%"adt$main.bytecode.ValueRef.278"* %ref, %"adt$main.bytecode.ValueRefList.298"* %tail) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode.ValueRefList.Cons.299"* getelementptr (%"adtc$main.bytecode.ValueRefList.Cons.299", %"adtc$main.bytecode.ValueRefList.Cons.299"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.ValueRefList.Cons.299"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.ValueRefList.Cons.299", %"adtc$main.bytecode.ValueRefList.Cons.299"* %1, i32 0, i32 0
  store i32 1, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode.ValueRefList.Cons.299", %"adtc$main.bytecode.ValueRefList.Cons.299"* %1, i32 0, i32 1
  store %"adt$main.bytecode.ValueRef.278"* %ref, %"adt$main.bytecode.ValueRef.278"** %3
  %4 = getelementptr inbounds %"adtc$main.bytecode.ValueRefList.Cons.299", %"adtc$main.bytecode.ValueRefList.Cons.299"* %1, i32 0, i32 2
  store %"adt$main.bytecode.ValueRefList.298"* %tail, %"adt$main.bytecode.ValueRefList.298"** %4
  %5 = bitcast %"adtc$main.bytecode.ValueRefList.Cons.299"* %1 to %"adt$main.bytecode.ValueRefList.298"*
  ret %"adt$main.bytecode.ValueRefList.298"* %5
}

define %"adt$main.bytecode.Instruction.265"* @"adtcfn$adtc$main.bytecode.Instruction.WriteVariable"(%"adt$main.bytecode.Variable.287"* %var_, %"adt$main.bytecode.ValueRef.278"* %value) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode.Instruction.WriteVariable.300"* getelementptr (%"adtc$main.bytecode.Instruction.WriteVariable.300", %"adtc$main.bytecode.Instruction.WriteVariable.300"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.Instruction.WriteVariable.300"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.Instruction.WriteVariable.300", %"adtc$main.bytecode.Instruction.WriteVariable.300"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode.Instruction.WriteVariable.300", %"adtc$main.bytecode.Instruction.WriteVariable.300"* %1, i32 0, i32 5
  store %"adt$main.bytecode.Variable.287"* %var_, %"adt$main.bytecode.Variable.287"** %3
  %4 = getelementptr inbounds %"adtc$main.bytecode.Instruction.WriteVariable.300", %"adtc$main.bytecode.Instruction.WriteVariable.300"* %1, i32 0, i32 6
  store %"adt$main.bytecode.ValueRef.278"* %value, %"adt$main.bytecode.ValueRef.278"** %4
  %5 = bitcast %"adtc$main.bytecode.Instruction.WriteVariable.300"* %1 to %"adt$main.bytecode.Instruction.265"*
  ret %"adt$main.bytecode.Instruction.265"* %5
}

define %"adt$main.bytecode.Instruction.265"* @"adtcfn$adtc$main.bytecode.Instruction.ReadVariable"(%"adt$main.bytecode.Variable.287"* %var_) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode.Instruction.ReadVariable.301"* getelementptr (%"adtc$main.bytecode.Instruction.ReadVariable.301", %"adtc$main.bytecode.Instruction.ReadVariable.301"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.Instruction.ReadVariable.301"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.Instruction.ReadVariable.301", %"adtc$main.bytecode.Instruction.ReadVariable.301"* %1, i32 0, i32 0
  store i32 1, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode.Instruction.ReadVariable.301", %"adtc$main.bytecode.Instruction.ReadVariable.301"* %1, i32 0, i32 5
  store %"adt$main.bytecode.Variable.287"* %var_, %"adt$main.bytecode.Variable.287"** %3
  %4 = bitcast %"adtc$main.bytecode.Instruction.ReadVariable.301"* %1 to %"adt$main.bytecode.Instruction.265"*
  ret %"adt$main.bytecode.Instruction.265"* %4
}

define %"adt$main.bytecode.Instruction.265"* @"adtcfn$adtc$main.bytecode.Instruction.CallConstructor"(%"adt$main.ir.IRADTCons.275"* %cons, %"adt$main.bytecode.ValueRefList.298"* %args) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode.Instruction.CallConstructor.302"* getelementptr (%"adtc$main.bytecode.Instruction.CallConstructor.302", %"adtc$main.bytecode.Instruction.CallConstructor.302"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.Instruction.CallConstructor.302"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.Instruction.CallConstructor.302", %"adtc$main.bytecode.Instruction.CallConstructor.302"* %1, i32 0, i32 0
  store i32 2, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode.Instruction.CallConstructor.302", %"adtc$main.bytecode.Instruction.CallConstructor.302"* %1, i32 0, i32 5
  store %"adt$main.ir.IRADTCons.275"* %cons, %"adt$main.ir.IRADTCons.275"** %3
  %4 = getelementptr inbounds %"adtc$main.bytecode.Instruction.CallConstructor.302", %"adtc$main.bytecode.Instruction.CallConstructor.302"* %1, i32 0, i32 6
  store %"adt$main.bytecode.ValueRefList.298"* %args, %"adt$main.bytecode.ValueRefList.298"** %4
  %5 = bitcast %"adtc$main.bytecode.Instruction.CallConstructor.302"* %1 to %"adt$main.bytecode.Instruction.265"*
  ret %"adt$main.bytecode.Instruction.265"* %5
}

define %"adt$main.bytecode.Instruction.265"* @"adtcfn$adtc$main.bytecode.Instruction.CallFunction"(%"adt$main.ir.IRFunctionDecl.269"* %fun, %"adt$main.bytecode.ValueRefList.298"* %args) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode.Instruction.CallFunction.303"* getelementptr (%"adtc$main.bytecode.Instruction.CallFunction.303", %"adtc$main.bytecode.Instruction.CallFunction.303"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.Instruction.CallFunction.303"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.Instruction.CallFunction.303", %"adtc$main.bytecode.Instruction.CallFunction.303"* %1, i32 0, i32 0
  store i32 3, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode.Instruction.CallFunction.303", %"adtc$main.bytecode.Instruction.CallFunction.303"* %1, i32 0, i32 5
  store %"adt$main.ir.IRFunctionDecl.269"* %fun, %"adt$main.ir.IRFunctionDecl.269"** %3
  %4 = getelementptr inbounds %"adtc$main.bytecode.Instruction.CallFunction.303", %"adtc$main.bytecode.Instruction.CallFunction.303"* %1, i32 0, i32 6
  store %"adt$main.bytecode.ValueRefList.298"* %args, %"adt$main.bytecode.ValueRefList.298"** %4
  %5 = bitcast %"adtc$main.bytecode.Instruction.CallFunction.303"* %1 to %"adt$main.bytecode.Instruction.265"*
  ret %"adt$main.bytecode.Instruction.265"* %5
}

define %"adt$main.bytecode.Instruction.265"* @"adtcfn$adtc$main.bytecode.Instruction.CallIntrinsic"(%"adt$main.bytecode.Intrinsic.305"* %intrinsic, %"adt$main.bytecode.ValueRefList.298"* %args) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode.Instruction.CallIntrinsic.304"* getelementptr (%"adtc$main.bytecode.Instruction.CallIntrinsic.304", %"adtc$main.bytecode.Instruction.CallIntrinsic.304"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.Instruction.CallIntrinsic.304"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.Instruction.CallIntrinsic.304", %"adtc$main.bytecode.Instruction.CallIntrinsic.304"* %1, i32 0, i32 0
  store i32 4, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode.Instruction.CallIntrinsic.304", %"adtc$main.bytecode.Instruction.CallIntrinsic.304"* %1, i32 0, i32 5
  store %"adt$main.bytecode.Intrinsic.305"* %intrinsic, %"adt$main.bytecode.Intrinsic.305"** %3
  %4 = getelementptr inbounds %"adtc$main.bytecode.Instruction.CallIntrinsic.304", %"adtc$main.bytecode.Instruction.CallIntrinsic.304"* %1, i32 0, i32 6
  store %"adt$main.bytecode.ValueRefList.298"* %args, %"adt$main.bytecode.ValueRefList.298"** %4
  %5 = bitcast %"adtc$main.bytecode.Instruction.CallIntrinsic.304"* %1 to %"adt$main.bytecode.Instruction.265"*
  ret %"adt$main.bytecode.Instruction.265"* %5
}

define %"adt$main.bytecode.Instruction.265"* @"adtcfn$adtc$main.bytecode.Instruction.ReadGlobal"(%"adt$main.ir.IRGlobalDecl.289"* %global_) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode.Instruction.ReadGlobal.306"* getelementptr (%"adtc$main.bytecode.Instruction.ReadGlobal.306", %"adtc$main.bytecode.Instruction.ReadGlobal.306"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.Instruction.ReadGlobal.306"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.Instruction.ReadGlobal.306", %"adtc$main.bytecode.Instruction.ReadGlobal.306"* %1, i32 0, i32 0
  store i32 5, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode.Instruction.ReadGlobal.306", %"adtc$main.bytecode.Instruction.ReadGlobal.306"* %1, i32 0, i32 5
  store %"adt$main.ir.IRGlobalDecl.289"* %global_, %"adt$main.ir.IRGlobalDecl.289"** %3
  %4 = bitcast %"adtc$main.bytecode.Instruction.ReadGlobal.306"* %1 to %"adt$main.bytecode.Instruction.265"*
  ret %"adt$main.bytecode.Instruction.265"* %4
}

define %"adt$main.bytecode.Instruction.265"* @"adtcfn$adtc$main.bytecode.Instruction.WriteGlobal"(%"adt$main.ir.IRGlobalDecl.289"* %global_, %"adt$main.bytecode.ValueRef.278"* %value) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode.Instruction.WriteGlobal.307"* getelementptr (%"adtc$main.bytecode.Instruction.WriteGlobal.307", %"adtc$main.bytecode.Instruction.WriteGlobal.307"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.Instruction.WriteGlobal.307"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.Instruction.WriteGlobal.307", %"adtc$main.bytecode.Instruction.WriteGlobal.307"* %1, i32 0, i32 0
  store i32 6, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode.Instruction.WriteGlobal.307", %"adtc$main.bytecode.Instruction.WriteGlobal.307"* %1, i32 0, i32 5
  store %"adt$main.ir.IRGlobalDecl.289"* %global_, %"adt$main.ir.IRGlobalDecl.289"** %3
  %4 = getelementptr inbounds %"adtc$main.bytecode.Instruction.WriteGlobal.307", %"adtc$main.bytecode.Instruction.WriteGlobal.307"* %1, i32 0, i32 6
  store %"adt$main.bytecode.ValueRef.278"* %value, %"adt$main.bytecode.ValueRef.278"** %4
  %5 = bitcast %"adtc$main.bytecode.Instruction.WriteGlobal.307"* %1 to %"adt$main.bytecode.Instruction.265"*
  ret %"adt$main.bytecode.Instruction.265"* %5
}

define %"adt$main.bytecode.Instruction.265"* @"adtcfn$adtc$main.bytecode.Instruction.PHI"(%"adt$main.bytecode.PHIList.309"* %phi) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode.Instruction.PHI.308"* getelementptr (%"adtc$main.bytecode.Instruction.PHI.308", %"adtc$main.bytecode.Instruction.PHI.308"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.Instruction.PHI.308"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.Instruction.PHI.308", %"adtc$main.bytecode.Instruction.PHI.308"* %1, i32 0, i32 0
  store i32 7, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode.Instruction.PHI.308", %"adtc$main.bytecode.Instruction.PHI.308"* %1, i32 0, i32 5
  store %"adt$main.bytecode.PHIList.309"* %phi, %"adt$main.bytecode.PHIList.309"** %3
  %4 = bitcast %"adtc$main.bytecode.Instruction.PHI.308"* %1 to %"adt$main.bytecode.Instruction.265"*
  ret %"adt$main.bytecode.Instruction.265"* %4
}

define %"adt$main.bytecode.Instruction.265"* @"adtcfn$adtc$main.bytecode.Instruction.ArrayRead"(%"adt$main.bytecode.ValueRef.278"* %array, %"adt$main.bytecode.ValueRef.278"* %idx) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode.Instruction.ArrayRead.310"* getelementptr (%"adtc$main.bytecode.Instruction.ArrayRead.310", %"adtc$main.bytecode.Instruction.ArrayRead.310"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.Instruction.ArrayRead.310"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.Instruction.ArrayRead.310", %"adtc$main.bytecode.Instruction.ArrayRead.310"* %1, i32 0, i32 0
  store i32 8, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode.Instruction.ArrayRead.310", %"adtc$main.bytecode.Instruction.ArrayRead.310"* %1, i32 0, i32 5
  store %"adt$main.bytecode.ValueRef.278"* %array, %"adt$main.bytecode.ValueRef.278"** %3
  %4 = getelementptr inbounds %"adtc$main.bytecode.Instruction.ArrayRead.310", %"adtc$main.bytecode.Instruction.ArrayRead.310"* %1, i32 0, i32 6
  store %"adt$main.bytecode.ValueRef.278"* %idx, %"adt$main.bytecode.ValueRef.278"** %4
  %5 = bitcast %"adtc$main.bytecode.Instruction.ArrayRead.310"* %1 to %"adt$main.bytecode.Instruction.265"*
  ret %"adt$main.bytecode.Instruction.265"* %5
}

define %"adt$main.bytecode.Instruction.265"* @"adtcfn$adtc$main.bytecode.Instruction.ArrayWrite"(%"adt$main.bytecode.ValueRef.278"* %array, %"adt$main.bytecode.ValueRef.278"* %idx, %"adt$main.bytecode.ValueRef.278"* %value) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode.Instruction.ArrayWrite.311"* getelementptr (%"adtc$main.bytecode.Instruction.ArrayWrite.311", %"adtc$main.bytecode.Instruction.ArrayWrite.311"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.Instruction.ArrayWrite.311"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.Instruction.ArrayWrite.311", %"adtc$main.bytecode.Instruction.ArrayWrite.311"* %1, i32 0, i32 0
  store i32 9, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode.Instruction.ArrayWrite.311", %"adtc$main.bytecode.Instruction.ArrayWrite.311"* %1, i32 0, i32 5
  store %"adt$main.bytecode.ValueRef.278"* %array, %"adt$main.bytecode.ValueRef.278"** %3
  %4 = getelementptr inbounds %"adtc$main.bytecode.Instruction.ArrayWrite.311", %"adtc$main.bytecode.Instruction.ArrayWrite.311"* %1, i32 0, i32 6
  store %"adt$main.bytecode.ValueRef.278"* %idx, %"adt$main.bytecode.ValueRef.278"** %4
  %5 = getelementptr inbounds %"adtc$main.bytecode.Instruction.ArrayWrite.311", %"adtc$main.bytecode.Instruction.ArrayWrite.311"* %1, i32 0, i32 7
  store %"adt$main.bytecode.ValueRef.278"* %value, %"adt$main.bytecode.ValueRef.278"** %5
  %6 = bitcast %"adtc$main.bytecode.Instruction.ArrayWrite.311"* %1 to %"adt$main.bytecode.Instruction.265"*
  ret %"adt$main.bytecode.Instruction.265"* %6
}

define %"adt$main.bytecode.Instruction.265"* @"adtcfn$adtc$main.bytecode.Instruction.ADTExtract"(%"adt$main.bytecode.ValueRef.278"* %owner, %"adt$main.ir.IRADTCons.275"* %cons, %"adt$main.ir.IRParam.313"* %param) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode.Instruction.ADTExtract.312"* getelementptr (%"adtc$main.bytecode.Instruction.ADTExtract.312", %"adtc$main.bytecode.Instruction.ADTExtract.312"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.Instruction.ADTExtract.312"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.Instruction.ADTExtract.312", %"adtc$main.bytecode.Instruction.ADTExtract.312"* %1, i32 0, i32 0
  store i32 10, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode.Instruction.ADTExtract.312", %"adtc$main.bytecode.Instruction.ADTExtract.312"* %1, i32 0, i32 5
  store %"adt$main.bytecode.ValueRef.278"* %owner, %"adt$main.bytecode.ValueRef.278"** %3
  %4 = getelementptr inbounds %"adtc$main.bytecode.Instruction.ADTExtract.312", %"adtc$main.bytecode.Instruction.ADTExtract.312"* %1, i32 0, i32 6
  store %"adt$main.ir.IRADTCons.275"* %cons, %"adt$main.ir.IRADTCons.275"** %4
  %5 = getelementptr inbounds %"adtc$main.bytecode.Instruction.ADTExtract.312", %"adtc$main.bytecode.Instruction.ADTExtract.312"* %1, i32 0, i32 7
  store %"adt$main.ir.IRParam.313"* %param, %"adt$main.ir.IRParam.313"** %5
  %6 = bitcast %"adtc$main.bytecode.Instruction.ADTExtract.312"* %1 to %"adt$main.bytecode.Instruction.265"*
  ret %"adt$main.bytecode.Instruction.265"* %6
}

define %"adt$main.bytecode.Instruction.265"* @"adtcfn$adtc$main.bytecode.Instruction.ReadADTField"(%"adt$main.bytecode.ValueRef.278"* %owner, %"adt$main.ir.IRADTField.292"* %field_) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode.Instruction.ReadADTField.314"* getelementptr (%"adtc$main.bytecode.Instruction.ReadADTField.314", %"adtc$main.bytecode.Instruction.ReadADTField.314"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.Instruction.ReadADTField.314"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.Instruction.ReadADTField.314", %"adtc$main.bytecode.Instruction.ReadADTField.314"* %1, i32 0, i32 0
  store i32 11, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode.Instruction.ReadADTField.314", %"adtc$main.bytecode.Instruction.ReadADTField.314"* %1, i32 0, i32 5
  store %"adt$main.bytecode.ValueRef.278"* %owner, %"adt$main.bytecode.ValueRef.278"** %3
  %4 = getelementptr inbounds %"adtc$main.bytecode.Instruction.ReadADTField.314", %"adtc$main.bytecode.Instruction.ReadADTField.314"* %1, i32 0, i32 6
  store %"adt$main.ir.IRADTField.292"* %field_, %"adt$main.ir.IRADTField.292"** %4
  %5 = bitcast %"adtc$main.bytecode.Instruction.ReadADTField.314"* %1 to %"adt$main.bytecode.Instruction.265"*
  ret %"adt$main.bytecode.Instruction.265"* %5
}

define %"adt$main.bytecode.Instruction.265"* @"adtcfn$adtc$main.bytecode.Instruction.WriteADTField"(%"adt$main.bytecode.ValueRef.278"* %owner, %"adt$main.ir.IRADTField.292"* %field_, %"adt$main.bytecode.ValueRef.278"* %value) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode.Instruction.WriteADTField.315"* getelementptr (%"adtc$main.bytecode.Instruction.WriteADTField.315", %"adtc$main.bytecode.Instruction.WriteADTField.315"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.Instruction.WriteADTField.315"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.Instruction.WriteADTField.315", %"adtc$main.bytecode.Instruction.WriteADTField.315"* %1, i32 0, i32 0
  store i32 12, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode.Instruction.WriteADTField.315", %"adtc$main.bytecode.Instruction.WriteADTField.315"* %1, i32 0, i32 5
  store %"adt$main.bytecode.ValueRef.278"* %owner, %"adt$main.bytecode.ValueRef.278"** %3
  %4 = getelementptr inbounds %"adtc$main.bytecode.Instruction.WriteADTField.315", %"adtc$main.bytecode.Instruction.WriteADTField.315"* %1, i32 0, i32 6
  store %"adt$main.ir.IRADTField.292"* %field_, %"adt$main.ir.IRADTField.292"** %4
  %5 = getelementptr inbounds %"adtc$main.bytecode.Instruction.WriteADTField.315", %"adtc$main.bytecode.Instruction.WriteADTField.315"* %1, i32 0, i32 7
  store %"adt$main.bytecode.ValueRef.278"* %value, %"adt$main.bytecode.ValueRef.278"** %5
  %6 = bitcast %"adtc$main.bytecode.Instruction.WriteADTField.315"* %1 to %"adt$main.bytecode.Instruction.265"*
  ret %"adt$main.bytecode.Instruction.265"* %6
}

define %"adt$main.bytecode.Instruction.265"* @"adtcfn$adtc$main.bytecode.Instruction.Unreachable"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode.Instruction.Unreachable"* getelementptr (%"adtc$main.bytecode.Instruction.Unreachable", %"adtc$main.bytecode.Instruction.Unreachable"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.Instruction.Unreachable"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.Instruction.Unreachable", %"adtc$main.bytecode.Instruction.Unreachable"* %1, i32 0, i32 0
  store i32 13, i32* %2
  %3 = bitcast %"adtc$main.bytecode.Instruction.Unreachable"* %1 to %"adt$main.bytecode.Instruction.265"*
  ret %"adt$main.bytecode.Instruction.265"* %3
}

define %"adt$main.bytecode.Instruction.265"* @"adtcfn$adtc$main.bytecode.Instruction.Jump"(%"adt$main.bytecode.BasicBlock.264"* %target) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode.Instruction.Jump.316"* getelementptr (%"adtc$main.bytecode.Instruction.Jump.316", %"adtc$main.bytecode.Instruction.Jump.316"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.Instruction.Jump.316"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.Instruction.Jump.316", %"adtc$main.bytecode.Instruction.Jump.316"* %1, i32 0, i32 0
  store i32 14, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode.Instruction.Jump.316", %"adtc$main.bytecode.Instruction.Jump.316"* %1, i32 0, i32 5
  store %"adt$main.bytecode.BasicBlock.264"* %target, %"adt$main.bytecode.BasicBlock.264"** %3
  %4 = bitcast %"adtc$main.bytecode.Instruction.Jump.316"* %1 to %"adt$main.bytecode.Instruction.265"*
  ret %"adt$main.bytecode.Instruction.265"* %4
}

define %"adt$main.bytecode.Instruction.265"* @"adtcfn$adtc$main.bytecode.Instruction.CondJump"(%"adt$main.bytecode.ValueRef.278"* %val, %"adt$main.bytecode.BasicBlock.264"* %ifTrue, %"adt$main.bytecode.BasicBlock.264"* %ifFalse) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode.Instruction.CondJump.317"* getelementptr (%"adtc$main.bytecode.Instruction.CondJump.317", %"adtc$main.bytecode.Instruction.CondJump.317"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.Instruction.CondJump.317"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.Instruction.CondJump.317", %"adtc$main.bytecode.Instruction.CondJump.317"* %1, i32 0, i32 0
  store i32 15, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode.Instruction.CondJump.317", %"adtc$main.bytecode.Instruction.CondJump.317"* %1, i32 0, i32 5
  store %"adt$main.bytecode.ValueRef.278"* %val, %"adt$main.bytecode.ValueRef.278"** %3
  %4 = getelementptr inbounds %"adtc$main.bytecode.Instruction.CondJump.317", %"adtc$main.bytecode.Instruction.CondJump.317"* %1, i32 0, i32 6
  store %"adt$main.bytecode.BasicBlock.264"* %ifTrue, %"adt$main.bytecode.BasicBlock.264"** %4
  %5 = getelementptr inbounds %"adtc$main.bytecode.Instruction.CondJump.317", %"adtc$main.bytecode.Instruction.CondJump.317"* %1, i32 0, i32 7
  store %"adt$main.bytecode.BasicBlock.264"* %ifFalse, %"adt$main.bytecode.BasicBlock.264"** %5
  %6 = bitcast %"adtc$main.bytecode.Instruction.CondJump.317"* %1 to %"adt$main.bytecode.Instruction.265"*
  ret %"adt$main.bytecode.Instruction.265"* %6
}

define %"adt$main.bytecode.Instruction.265"* @"adtcfn$adtc$main.bytecode.Instruction.ADTJump"(%"adt$main.bytecode.ValueRef.278"* %val, %"adt$main.ir.IRADTDecl.276"* %adt_, %"adt$main.bytecode.ADTJumpCase.319"* %branches, %"adt$main.bytecode.BasicBlock.264"* %def) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode.Instruction.ADTJump.318"* getelementptr (%"adtc$main.bytecode.Instruction.ADTJump.318", %"adtc$main.bytecode.Instruction.ADTJump.318"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.Instruction.ADTJump.318"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.Instruction.ADTJump.318", %"adtc$main.bytecode.Instruction.ADTJump.318"* %1, i32 0, i32 0
  store i32 16, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode.Instruction.ADTJump.318", %"adtc$main.bytecode.Instruction.ADTJump.318"* %1, i32 0, i32 5
  store %"adt$main.bytecode.ValueRef.278"* %val, %"adt$main.bytecode.ValueRef.278"** %3
  %4 = getelementptr inbounds %"adtc$main.bytecode.Instruction.ADTJump.318", %"adtc$main.bytecode.Instruction.ADTJump.318"* %1, i32 0, i32 6
  store %"adt$main.ir.IRADTDecl.276"* %adt_, %"adt$main.ir.IRADTDecl.276"** %4
  %5 = getelementptr inbounds %"adtc$main.bytecode.Instruction.ADTJump.318", %"adtc$main.bytecode.Instruction.ADTJump.318"* %1, i32 0, i32 7
  store %"adt$main.bytecode.ADTJumpCase.319"* %branches, %"adt$main.bytecode.ADTJumpCase.319"** %5
  %6 = getelementptr inbounds %"adtc$main.bytecode.Instruction.ADTJump.318", %"adtc$main.bytecode.Instruction.ADTJump.318"* %1, i32 0, i32 8
  store %"adt$main.bytecode.BasicBlock.264"* %def, %"adt$main.bytecode.BasicBlock.264"** %6
  %7 = bitcast %"adtc$main.bytecode.Instruction.ADTJump.318"* %1 to %"adt$main.bytecode.Instruction.265"*
  ret %"adt$main.bytecode.Instruction.265"* %7
}

define %"adt$main.bytecode.Instruction.265"* @"adtcfn$adtc$main.bytecode.Instruction.Return"(%"adt$main.bytecode.ValueRef.278"* %ref) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode.Instruction.Return.320"* getelementptr (%"adtc$main.bytecode.Instruction.Return.320", %"adtc$main.bytecode.Instruction.Return.320"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.Instruction.Return.320"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.Instruction.Return.320", %"adtc$main.bytecode.Instruction.Return.320"* %1, i32 0, i32 0
  store i32 17, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode.Instruction.Return.320", %"adtc$main.bytecode.Instruction.Return.320"* %1, i32 0, i32 5
  store %"adt$main.bytecode.ValueRef.278"* %ref, %"adt$main.bytecode.ValueRef.278"** %3
  %4 = bitcast %"adtc$main.bytecode.Instruction.Return.320"* %1 to %"adt$main.bytecode.Instruction.265"*
  ret %"adt$main.bytecode.Instruction.265"* %4
}

define %"adt$main.bytecode.ADTJumpCase.319"* @"adtcfn$adtc$main.bytecode.ADTJumpCase.Nil"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.ADTJumpCase.Nil"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.ADTJumpCase.Nil", %"adtc$main.bytecode.ADTJumpCase.Nil"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.bytecode.ADTJumpCase.Nil"* %1 to %"adt$main.bytecode.ADTJumpCase.319"*
  ret %"adt$main.bytecode.ADTJumpCase.319"* %3
}

define %"adt$main.bytecode.ADTJumpCase.319"* @"adtcfn$adtc$main.bytecode.ADTJumpCase.Cons"(%"adt$main.ir.IRADTCons.275"* %cons, %"adt$main.bytecode.BasicBlock.264"* %bb, %"adt$main.bytecode.ADTJumpCase.319"* %tail) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode.ADTJumpCase.Cons.321"* getelementptr (%"adtc$main.bytecode.ADTJumpCase.Cons.321", %"adtc$main.bytecode.ADTJumpCase.Cons.321"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.ADTJumpCase.Cons.321"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.ADTJumpCase.Cons.321", %"adtc$main.bytecode.ADTJumpCase.Cons.321"* %1, i32 0, i32 0
  store i32 1, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode.ADTJumpCase.Cons.321", %"adtc$main.bytecode.ADTJumpCase.Cons.321"* %1, i32 0, i32 1
  store %"adt$main.ir.IRADTCons.275"* %cons, %"adt$main.ir.IRADTCons.275"** %3
  %4 = getelementptr inbounds %"adtc$main.bytecode.ADTJumpCase.Cons.321", %"adtc$main.bytecode.ADTJumpCase.Cons.321"* %1, i32 0, i32 2
  store %"adt$main.bytecode.BasicBlock.264"* %bb, %"adt$main.bytecode.BasicBlock.264"** %4
  %5 = getelementptr inbounds %"adtc$main.bytecode.ADTJumpCase.Cons.321", %"adtc$main.bytecode.ADTJumpCase.Cons.321"* %1, i32 0, i32 3
  store %"adt$main.bytecode.ADTJumpCase.319"* %tail, %"adt$main.bytecode.ADTJumpCase.319"** %5
  %6 = bitcast %"adtc$main.bytecode.ADTJumpCase.Cons.321"* %1 to %"adt$main.bytecode.ADTJumpCase.319"*
  ret %"adt$main.bytecode.ADTJumpCase.319"* %6
}

define %"adt$main.bytecode.Intrinsic.305"* @"adtcfn$adtc$main.bytecode.Intrinsic.Arith"(%"adt$main.bytecode.ArithOp.323"* %op) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode.Intrinsic.Arith.322"* getelementptr (%"adtc$main.bytecode.Intrinsic.Arith.322", %"adtc$main.bytecode.Intrinsic.Arith.322"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.Intrinsic.Arith.322"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.Intrinsic.Arith.322", %"adtc$main.bytecode.Intrinsic.Arith.322"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode.Intrinsic.Arith.322", %"adtc$main.bytecode.Intrinsic.Arith.322"* %1, i32 0, i32 1
  store %"adt$main.bytecode.ArithOp.323"* %op, %"adt$main.bytecode.ArithOp.323"** %3
  %4 = bitcast %"adtc$main.bytecode.Intrinsic.Arith.322"* %1 to %"adt$main.bytecode.Intrinsic.305"*
  ret %"adt$main.bytecode.Intrinsic.305"* %4
}

define %"adt$main.bytecode.Intrinsic.305"* @"adtcfn$adtc$main.bytecode.Intrinsic.CompareBool"(%"adt$main.bytecode.Comparison.325"* %op) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode.Intrinsic.CompareBool.324"* getelementptr (%"adtc$main.bytecode.Intrinsic.CompareBool.324", %"adtc$main.bytecode.Intrinsic.CompareBool.324"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.Intrinsic.CompareBool.324"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.Intrinsic.CompareBool.324", %"adtc$main.bytecode.Intrinsic.CompareBool.324"* %1, i32 0, i32 0
  store i32 1, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode.Intrinsic.CompareBool.324", %"adtc$main.bytecode.Intrinsic.CompareBool.324"* %1, i32 0, i32 1
  store %"adt$main.bytecode.Comparison.325"* %op, %"adt$main.bytecode.Comparison.325"** %3
  %4 = bitcast %"adtc$main.bytecode.Intrinsic.CompareBool.324"* %1 to %"adt$main.bytecode.Intrinsic.305"*
  ret %"adt$main.bytecode.Intrinsic.305"* %4
}

define %"adt$main.bytecode.Intrinsic.305"* @"adtcfn$adtc$main.bytecode.Intrinsic.CompareI32"(%"adt$main.bytecode.Comparison.325"* %op) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode.Intrinsic.CompareI32.326"* getelementptr (%"adtc$main.bytecode.Intrinsic.CompareI32.326", %"adtc$main.bytecode.Intrinsic.CompareI32.326"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.Intrinsic.CompareI32.326"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.Intrinsic.CompareI32.326", %"adtc$main.bytecode.Intrinsic.CompareI32.326"* %1, i32 0, i32 0
  store i32 2, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode.Intrinsic.CompareI32.326", %"adtc$main.bytecode.Intrinsic.CompareI32.326"* %1, i32 0, i32 1
  store %"adt$main.bytecode.Comparison.325"* %op, %"adt$main.bytecode.Comparison.325"** %3
  %4 = bitcast %"adtc$main.bytecode.Intrinsic.CompareI32.326"* %1 to %"adt$main.bytecode.Intrinsic.305"*
  ret %"adt$main.bytecode.Intrinsic.305"* %4
}

define %"adt$main.bytecode.Intrinsic.305"* @"adtcfn$adtc$main.bytecode.Intrinsic.CompareString"(%"adt$main.bytecode.Comparison.325"* %op) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode.Intrinsic.CompareString.327"* getelementptr (%"adtc$main.bytecode.Intrinsic.CompareString.327", %"adtc$main.bytecode.Intrinsic.CompareString.327"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.Intrinsic.CompareString.327"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.Intrinsic.CompareString.327", %"adtc$main.bytecode.Intrinsic.CompareString.327"* %1, i32 0, i32 0
  store i32 3, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode.Intrinsic.CompareString.327", %"adtc$main.bytecode.Intrinsic.CompareString.327"* %1, i32 0, i32 1
  store %"adt$main.bytecode.Comparison.325"* %op, %"adt$main.bytecode.Comparison.325"** %3
  %4 = bitcast %"adtc$main.bytecode.Intrinsic.CompareString.327"* %1 to %"adt$main.bytecode.Intrinsic.305"*
  ret %"adt$main.bytecode.Intrinsic.305"* %4
}

define %"adt$main.bytecode.Intrinsic.305"* @"adtcfn$adtc$main.bytecode.Intrinsic.ComparePointer"(%"adt$main.bytecode.Comparison.325"* %op) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode.Intrinsic.ComparePointer.328"* getelementptr (%"adtc$main.bytecode.Intrinsic.ComparePointer.328", %"adtc$main.bytecode.Intrinsic.ComparePointer.328"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.Intrinsic.ComparePointer.328"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.Intrinsic.ComparePointer.328", %"adtc$main.bytecode.Intrinsic.ComparePointer.328"* %1, i32 0, i32 0
  store i32 4, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode.Intrinsic.ComparePointer.328", %"adtc$main.bytecode.Intrinsic.ComparePointer.328"* %1, i32 0, i32 1
  store %"adt$main.bytecode.Comparison.325"* %op, %"adt$main.bytecode.Comparison.325"** %3
  %4 = bitcast %"adtc$main.bytecode.Intrinsic.ComparePointer.328"* %1 to %"adt$main.bytecode.Intrinsic.305"*
  ret %"adt$main.bytecode.Intrinsic.305"* %4
}

define %"adt$main.bytecode.Intrinsic.305"* @"adtcfn$adtc$main.bytecode.Intrinsic.CompareRefEq"(%"adt$main.bytecode.Comparison.325"* %op) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode.Intrinsic.CompareRefEq.329"* getelementptr (%"adtc$main.bytecode.Intrinsic.CompareRefEq.329", %"adtc$main.bytecode.Intrinsic.CompareRefEq.329"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.Intrinsic.CompareRefEq.329"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.Intrinsic.CompareRefEq.329", %"adtc$main.bytecode.Intrinsic.CompareRefEq.329"* %1, i32 0, i32 0
  store i32 5, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode.Intrinsic.CompareRefEq.329", %"adtc$main.bytecode.Intrinsic.CompareRefEq.329"* %1, i32 0, i32 1
  store %"adt$main.bytecode.Comparison.325"* %op, %"adt$main.bytecode.Comparison.325"** %3
  %4 = bitcast %"adtc$main.bytecode.Intrinsic.CompareRefEq.329"* %1 to %"adt$main.bytecode.Intrinsic.305"*
  ret %"adt$main.bytecode.Intrinsic.305"* %4
}

define %"adt$main.bytecode.Intrinsic.305"* @"adtcfn$adtc$main.bytecode.Intrinsic.StringConcat"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.Intrinsic.StringConcat"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.Intrinsic.StringConcat", %"adtc$main.bytecode.Intrinsic.StringConcat"* %1, i32 0, i32 0
  store i32 6, i32* %2
  %3 = bitcast %"adtc$main.bytecode.Intrinsic.StringConcat"* %1 to %"adt$main.bytecode.Intrinsic.305"*
  ret %"adt$main.bytecode.Intrinsic.305"* %3
}

define %"adt$main.bytecode.Intrinsic.305"* @"adtcfn$adtc$main.bytecode.Intrinsic.NewArray"(%"adt$main.ir.IRType.267"* %elTy) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode.Intrinsic.NewArray.330"* getelementptr (%"adtc$main.bytecode.Intrinsic.NewArray.330", %"adtc$main.bytecode.Intrinsic.NewArray.330"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.Intrinsic.NewArray.330"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.Intrinsic.NewArray.330", %"adtc$main.bytecode.Intrinsic.NewArray.330"* %1, i32 0, i32 0
  store i32 7, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode.Intrinsic.NewArray.330", %"adtc$main.bytecode.Intrinsic.NewArray.330"* %1, i32 0, i32 1
  store %"adt$main.ir.IRType.267"* %elTy, %"adt$main.ir.IRType.267"** %3
  %4 = bitcast %"adtc$main.bytecode.Intrinsic.NewArray.330"* %1 to %"adt$main.bytecode.Intrinsic.305"*
  ret %"adt$main.bytecode.Intrinsic.305"* %4
}

define %"adt$main.bytecode.Comparison.325"* @"adtcfn$adtc$main.bytecode.Comparison.EQ"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.Comparison.EQ"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.Comparison.EQ", %"adtc$main.bytecode.Comparison.EQ"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.bytecode.Comparison.EQ"* %1 to %"adt$main.bytecode.Comparison.325"*
  ret %"adt$main.bytecode.Comparison.325"* %3
}

define %"adt$main.bytecode.Comparison.325"* @"adtcfn$adtc$main.bytecode.Comparison.NE"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.Comparison.NE"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.Comparison.NE", %"adtc$main.bytecode.Comparison.NE"* %1, i32 0, i32 0
  store i32 1, i32* %2
  %3 = bitcast %"adtc$main.bytecode.Comparison.NE"* %1 to %"adt$main.bytecode.Comparison.325"*
  ret %"adt$main.bytecode.Comparison.325"* %3
}

define %"adt$main.bytecode.Comparison.325"* @"adtcfn$adtc$main.bytecode.Comparison.LE"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.Comparison.LE"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.Comparison.LE", %"adtc$main.bytecode.Comparison.LE"* %1, i32 0, i32 0
  store i32 2, i32* %2
  %3 = bitcast %"adtc$main.bytecode.Comparison.LE"* %1 to %"adt$main.bytecode.Comparison.325"*
  ret %"adt$main.bytecode.Comparison.325"* %3
}

define %"adt$main.bytecode.Comparison.325"* @"adtcfn$adtc$main.bytecode.Comparison.LT"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.Comparison.LT"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.Comparison.LT", %"adtc$main.bytecode.Comparison.LT"* %1, i32 0, i32 0
  store i32 3, i32* %2
  %3 = bitcast %"adtc$main.bytecode.Comparison.LT"* %1 to %"adt$main.bytecode.Comparison.325"*
  ret %"adt$main.bytecode.Comparison.325"* %3
}

define %"adt$main.bytecode.Comparison.325"* @"adtcfn$adtc$main.bytecode.Comparison.GE"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.Comparison.GE"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.Comparison.GE", %"adtc$main.bytecode.Comparison.GE"* %1, i32 0, i32 0
  store i32 4, i32* %2
  %3 = bitcast %"adtc$main.bytecode.Comparison.GE"* %1 to %"adt$main.bytecode.Comparison.325"*
  ret %"adt$main.bytecode.Comparison.325"* %3
}

define %"adt$main.bytecode.Comparison.325"* @"adtcfn$adtc$main.bytecode.Comparison.GT"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.Comparison.GT"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.Comparison.GT", %"adtc$main.bytecode.Comparison.GT"* %1, i32 0, i32 0
  store i32 5, i32* %2
  %3 = bitcast %"adtc$main.bytecode.Comparison.GT"* %1 to %"adt$main.bytecode.Comparison.325"*
  ret %"adt$main.bytecode.Comparison.325"* %3
}

define %"adt$main.bytecode.ArithOp.323"* @"adtcfn$adtc$main.bytecode.ArithOp.Plus"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.ArithOp.Plus"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.ArithOp.Plus", %"adtc$main.bytecode.ArithOp.Plus"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.bytecode.ArithOp.Plus"* %1 to %"adt$main.bytecode.ArithOp.323"*
  ret %"adt$main.bytecode.ArithOp.323"* %3
}

define %"adt$main.bytecode.ArithOp.323"* @"adtcfn$adtc$main.bytecode.ArithOp.Minus"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.ArithOp.Minus"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.ArithOp.Minus", %"adtc$main.bytecode.ArithOp.Minus"* %1, i32 0, i32 0
  store i32 1, i32* %2
  %3 = bitcast %"adtc$main.bytecode.ArithOp.Minus"* %1 to %"adt$main.bytecode.ArithOp.323"*
  ret %"adt$main.bytecode.ArithOp.323"* %3
}

define %"adt$main.bytecode.ArithOp.323"* @"adtcfn$adtc$main.bytecode.ArithOp.Divide"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.ArithOp.Divide"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.ArithOp.Divide", %"adtc$main.bytecode.ArithOp.Divide"* %1, i32 0, i32 0
  store i32 2, i32* %2
  %3 = bitcast %"adtc$main.bytecode.ArithOp.Divide"* %1 to %"adt$main.bytecode.ArithOp.323"*
  ret %"adt$main.bytecode.ArithOp.323"* %3
}

define %"adt$main.bytecode.ArithOp.323"* @"adtcfn$adtc$main.bytecode.ArithOp.Multiply"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.ArithOp.Multiply"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.ArithOp.Multiply", %"adtc$main.bytecode.ArithOp.Multiply"* %1, i32 0, i32 0
  store i32 3, i32* %2
  %3 = bitcast %"adtc$main.bytecode.ArithOp.Multiply"* %1 to %"adt$main.bytecode.ArithOp.323"*
  ret %"adt$main.bytecode.ArithOp.323"* %3
}

define %"adt$main.bytecode.PHIList.309"* @"adtcfn$adtc$main.bytecode.PHIList.Nil"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.PHIList.Nil"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.PHIList.Nil", %"adtc$main.bytecode.PHIList.Nil"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.bytecode.PHIList.Nil"* %1 to %"adt$main.bytecode.PHIList.309"*
  ret %"adt$main.bytecode.PHIList.309"* %3
}

define %"adt$main.bytecode.PHIList.309"* @"adtcfn$adtc$main.bytecode.PHIList.Cons"(%"adt$main.bytecode.BasicBlock.264"* %bb, %"adt$main.bytecode.ValueRef.278"* %value, %"adt$main.bytecode.PHIList.309"* %tail) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode.PHIList.Cons.331"* getelementptr (%"adtc$main.bytecode.PHIList.Cons.331", %"adtc$main.bytecode.PHIList.Cons.331"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.PHIList.Cons.331"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.PHIList.Cons.331", %"adtc$main.bytecode.PHIList.Cons.331"* %1, i32 0, i32 0
  store i32 1, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode.PHIList.Cons.331", %"adtc$main.bytecode.PHIList.Cons.331"* %1, i32 0, i32 1
  store %"adt$main.bytecode.BasicBlock.264"* %bb, %"adt$main.bytecode.BasicBlock.264"** %3
  %4 = getelementptr inbounds %"adtc$main.bytecode.PHIList.Cons.331", %"adtc$main.bytecode.PHIList.Cons.331"* %1, i32 0, i32 2
  store %"adt$main.bytecode.ValueRef.278"* %value, %"adt$main.bytecode.ValueRef.278"** %4
  %5 = getelementptr inbounds %"adtc$main.bytecode.PHIList.Cons.331", %"adtc$main.bytecode.PHIList.Cons.331"* %1, i32 0, i32 3
  store %"adt$main.bytecode.PHIList.309"* %tail, %"adt$main.bytecode.PHIList.309"** %5
  %6 = bitcast %"adtc$main.bytecode.PHIList.Cons.331"* %1 to %"adt$main.bytecode.PHIList.309"*
  ret %"adt$main.bytecode.PHIList.309"* %6
}

define %"adt$main.bytecode.Variable.287"* @"adtcfn$adtc$main.bytecode.Variable.Parameter"(%"adt$main.ir.IRParam.313"* %param) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode.Variable.Parameter.334"* getelementptr (%"adtc$main.bytecode.Variable.Parameter.334", %"adtc$main.bytecode.Variable.Parameter.334"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.Variable.Parameter.334"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.Variable.Parameter.334", %"adtc$main.bytecode.Variable.Parameter.334"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode.Variable.Parameter.334", %"adtc$main.bytecode.Variable.Parameter.334"* %1, i32 0, i32 3
  store %"adt$main.ir.IRParam.313"* %param, %"adt$main.ir.IRParam.313"** %3
  %4 = bitcast %"adtc$main.bytecode.Variable.Parameter.334"* %1 to %"adt$main.bytecode.Variable.287"*
  ret %"adt$main.bytecode.Variable.287"* %4
}

define %"adt$main.bytecode.Variable.287"* @"adtcfn$adtc$main.bytecode.Variable.Var"(i8* %name) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode.Variable.Var.335"* getelementptr (%"adtc$main.bytecode.Variable.Var.335", %"adtc$main.bytecode.Variable.Var.335"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.Variable.Var.335"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.Variable.Var.335", %"adtc$main.bytecode.Variable.Var.335"* %1, i32 0, i32 0
  store i32 1, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode.Variable.Var.335", %"adtc$main.bytecode.Variable.Var.335"* %1, i32 0, i32 3
  store i8* %name, i8** %3
  %4 = bitcast %"adtc$main.bytecode.Variable.Var.335"* %1 to %"adt$main.bytecode.Variable.287"*
  ret %"adt$main.bytecode.Variable.287"* %4
}

define %"adt$main.bytecode.Variable.287"* @"adtcfn$adtc$main.bytecode.Variable.Temporary"(i8* %name) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode.Variable.Temporary"* getelementptr (%"adtc$main.bytecode.Variable.Temporary", %"adtc$main.bytecode.Variable.Temporary"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.Variable.Temporary"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.Variable.Temporary", %"adtc$main.bytecode.Variable.Temporary"* %1, i32 0, i32 0
  store i32 2, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode.Variable.Temporary", %"adtc$main.bytecode.Variable.Temporary"* %1, i32 0, i32 3
  store i8* %name, i8** %3
  %4 = bitcast %"adtc$main.bytecode.Variable.Temporary"* %1 to %"adt$main.bytecode.Variable.287"*
  ret %"adt$main.bytecode.Variable.287"* %4
}

define %"adt$main.bytecode.DebugLoc.280"* @"adtcfn$adtc$main.bytecode.DebugLoc.None"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.DebugLoc.None"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.DebugLoc.None", %"adtc$main.bytecode.DebugLoc.None"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.bytecode.DebugLoc.None"* %1 to %"adt$main.bytecode.DebugLoc.280"*
  ret %"adt$main.bytecode.DebugLoc.280"* %3
}

define %"adt$main.bytecode.DebugLoc.280"* @"adtcfn$adtc$main.bytecode.DebugLoc.At"(%"adt$main.ir.SourceFileRef.337"* %source, %"adt$main.ast.SrcLoc.277"* %loc) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode.DebugLoc.At.336"* getelementptr (%"adtc$main.bytecode.DebugLoc.At.336", %"adtc$main.bytecode.DebugLoc.At.336"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.DebugLoc.At.336"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.DebugLoc.At.336", %"adtc$main.bytecode.DebugLoc.At.336"* %1, i32 0, i32 0
  store i32 1, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode.DebugLoc.At.336", %"adtc$main.bytecode.DebugLoc.At.336"* %1, i32 0, i32 1
  store %"adt$main.ir.SourceFileRef.337"* %source, %"adt$main.ir.SourceFileRef.337"** %3
  %4 = getelementptr inbounds %"adtc$main.bytecode.DebugLoc.At.336", %"adtc$main.bytecode.DebugLoc.At.336"* %1, i32 0, i32 2
  store %"adt$main.ast.SrcLoc.277"* %loc, %"adt$main.ast.SrcLoc.277"** %4
  %5 = bitcast %"adtc$main.bytecode.DebugLoc.At.336"* %1 to %"adt$main.bytecode.DebugLoc.280"*
  ret %"adt$main.bytecode.DebugLoc.280"* %5
}

define %"adt$main.bytecode.CallableRef.266"* @"adtcfn$adtc$main.bytecode.CallableRef.Function"(%"adt$main.ir.IRFunctionDecl.269"* %fun) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode.CallableRef.Function.268"* getelementptr (%"adtc$main.bytecode.CallableRef.Function.268", %"adtc$main.bytecode.CallableRef.Function.268"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.CallableRef.Function.268"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.CallableRef.Function.268", %"adtc$main.bytecode.CallableRef.Function.268"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode.CallableRef.Function.268", %"adtc$main.bytecode.CallableRef.Function.268"* %1, i32 0, i32 1
  store %"adt$main.ir.IRFunctionDecl.269"* %fun, %"adt$main.ir.IRFunctionDecl.269"** %3
  %4 = bitcast %"adtc$main.bytecode.CallableRef.Function.268"* %1 to %"adt$main.bytecode.CallableRef.266"*
  ret %"adt$main.bytecode.CallableRef.266"* %4
}

define %"adt$main.bytecode.CallableRef.266"* @"adtcfn$adtc$main.bytecode.CallableRef.ADTConstructor"(%"adt$main.ir.IRADTCons.275"* %cons) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode.CallableRef.ADTConstructor.274"* getelementptr (%"adtc$main.bytecode.CallableRef.ADTConstructor.274", %"adtc$main.bytecode.CallableRef.ADTConstructor.274"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.CallableRef.ADTConstructor.274"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.CallableRef.ADTConstructor.274", %"adtc$main.bytecode.CallableRef.ADTConstructor.274"* %1, i32 0, i32 0
  store i32 1, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode.CallableRef.ADTConstructor.274", %"adtc$main.bytecode.CallableRef.ADTConstructor.274"* %1, i32 0, i32 1
  store %"adt$main.ir.IRADTCons.275"* %cons, %"adt$main.ir.IRADTCons.275"** %3
  %4 = bitcast %"adtc$main.bytecode.CallableRef.ADTConstructor.274"* %1 to %"adt$main.bytecode.CallableRef.266"*
  ret %"adt$main.bytecode.CallableRef.266"* %4
}

define %"adt$main.bytecode.IndexableRef.338"* @"adtcfn$adtc$main.bytecode.IndexableRef.Symbol"(%"adt$main.ir.IRSymbol.270"* %symbol) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode.IndexableRef.Symbol.339"* getelementptr (%"adtc$main.bytecode.IndexableRef.Symbol.339", %"adtc$main.bytecode.IndexableRef.Symbol.339"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.IndexableRef.Symbol.339"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.IndexableRef.Symbol.339", %"adtc$main.bytecode.IndexableRef.Symbol.339"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode.IndexableRef.Symbol.339", %"adtc$main.bytecode.IndexableRef.Symbol.339"* %1, i32 0, i32 1
  store %"adt$main.ir.IRSymbol.270"* %symbol, %"adt$main.ir.IRSymbol.270"** %3
  %4 = bitcast %"adtc$main.bytecode.IndexableRef.Symbol.339"* %1 to %"adt$main.bytecode.IndexableRef.338"*
  ret %"adt$main.bytecode.IndexableRef.338"* %4
}

define %"adt$main.bytecode.IndexableRef.338"* @"adtcfn$adtc$main.bytecode.IndexableRef.Value"(%"adt$main.bytecode.ValueRef.278"* %val) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode.IndexableRef.Value.340"* getelementptr (%"adtc$main.bytecode.IndexableRef.Value.340", %"adtc$main.bytecode.IndexableRef.Value.340"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.IndexableRef.Value.340"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.IndexableRef.Value.340", %"adtc$main.bytecode.IndexableRef.Value.340"* %1, i32 0, i32 0
  store i32 1, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode.IndexableRef.Value.340", %"adtc$main.bytecode.IndexableRef.Value.340"* %1, i32 0, i32 1
  store %"adt$main.bytecode.ValueRef.278"* %val, %"adt$main.bytecode.ValueRef.278"** %3
  %4 = bitcast %"adtc$main.bytecode.IndexableRef.Value.340"* %1 to %"adt$main.bytecode.IndexableRef.338"*
  ret %"adt$main.bytecode.IndexableRef.338"* %4
}

define %"adt$main.bytecode.WritableReference.285"* @"adtcfn$adtc$main.bytecode.WritableReference.Variable"(%"adt$main.bytecode.Variable.287"* %var_) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode.WritableReference.Variable.286"* getelementptr (%"adtc$main.bytecode.WritableReference.Variable.286", %"adtc$main.bytecode.WritableReference.Variable.286"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.WritableReference.Variable.286"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.WritableReference.Variable.286", %"adtc$main.bytecode.WritableReference.Variable.286"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode.WritableReference.Variable.286", %"adtc$main.bytecode.WritableReference.Variable.286"* %1, i32 0, i32 1
  store %"adt$main.bytecode.Variable.287"* %var_, %"adt$main.bytecode.Variable.287"** %3
  %4 = bitcast %"adtc$main.bytecode.WritableReference.Variable.286"* %1 to %"adt$main.bytecode.WritableReference.285"*
  ret %"adt$main.bytecode.WritableReference.285"* %4
}

define %"adt$main.bytecode.WritableReference.285"* @"adtcfn$adtc$main.bytecode.WritableReference.Global"(%"adt$main.ir.IRGlobalDecl.289"* %global_) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode.WritableReference.Global.288"* getelementptr (%"adtc$main.bytecode.WritableReference.Global.288", %"adtc$main.bytecode.WritableReference.Global.288"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.WritableReference.Global.288"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.WritableReference.Global.288", %"adtc$main.bytecode.WritableReference.Global.288"* %1, i32 0, i32 0
  store i32 1, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode.WritableReference.Global.288", %"adtc$main.bytecode.WritableReference.Global.288"* %1, i32 0, i32 1
  store %"adt$main.ir.IRGlobalDecl.289"* %global_, %"adt$main.ir.IRGlobalDecl.289"** %3
  %4 = bitcast %"adtc$main.bytecode.WritableReference.Global.288"* %1 to %"adt$main.bytecode.WritableReference.285"*
  ret %"adt$main.bytecode.WritableReference.285"* %4
}

define %"adt$main.bytecode.WritableReference.285"* @"adtcfn$adtc$main.bytecode.WritableReference.ArrayIndex"(%"adt$main.bytecode.ValueRef.278"* %value, %"adt$main.bytecode.ValueRef.278"* %index, %"adt$main.ir.IRType.267"* %type) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode.WritableReference.ArrayIndex.293"* getelementptr (%"adtc$main.bytecode.WritableReference.ArrayIndex.293", %"adtc$main.bytecode.WritableReference.ArrayIndex.293"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.WritableReference.ArrayIndex.293"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.WritableReference.ArrayIndex.293", %"adtc$main.bytecode.WritableReference.ArrayIndex.293"* %1, i32 0, i32 0
  store i32 2, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode.WritableReference.ArrayIndex.293", %"adtc$main.bytecode.WritableReference.ArrayIndex.293"* %1, i32 0, i32 1
  store %"adt$main.bytecode.ValueRef.278"* %value, %"adt$main.bytecode.ValueRef.278"** %3
  %4 = getelementptr inbounds %"adtc$main.bytecode.WritableReference.ArrayIndex.293", %"adtc$main.bytecode.WritableReference.ArrayIndex.293"* %1, i32 0, i32 2
  store %"adt$main.bytecode.ValueRef.278"* %index, %"adt$main.bytecode.ValueRef.278"** %4
  %5 = getelementptr inbounds %"adtc$main.bytecode.WritableReference.ArrayIndex.293", %"adtc$main.bytecode.WritableReference.ArrayIndex.293"* %1, i32 0, i32 3
  store %"adt$main.ir.IRType.267"* %type, %"adt$main.ir.IRType.267"** %5
  %6 = bitcast %"adtc$main.bytecode.WritableReference.ArrayIndex.293"* %1 to %"adt$main.bytecode.WritableReference.285"*
  ret %"adt$main.bytecode.WritableReference.285"* %6
}

define %"adt$main.bytecode.WritableReference.285"* @"adtcfn$adtc$main.bytecode.WritableReference.ADTField"(%"adt$main.bytecode.ValueRef.278"* %value, %"adt$main.ir.IRADTField.292"* %field_) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode.WritableReference.ADTField.291"* getelementptr (%"adtc$main.bytecode.WritableReference.ADTField.291", %"adtc$main.bytecode.WritableReference.ADTField.291"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.WritableReference.ADTField.291"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.WritableReference.ADTField.291", %"adtc$main.bytecode.WritableReference.ADTField.291"* %1, i32 0, i32 0
  store i32 3, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode.WritableReference.ADTField.291", %"adtc$main.bytecode.WritableReference.ADTField.291"* %1, i32 0, i32 1
  store %"adt$main.bytecode.ValueRef.278"* %value, %"adt$main.bytecode.ValueRef.278"** %3
  %4 = getelementptr inbounds %"adtc$main.bytecode.WritableReference.ADTField.291", %"adtc$main.bytecode.WritableReference.ADTField.291"* %1, i32 0, i32 2
  store %"adt$main.ir.IRADTField.292"* %field_, %"adt$main.ir.IRADTField.292"** %4
  %5 = bitcast %"adtc$main.bytecode.WritableReference.ADTField.291"* %1 to %"adt$main.bytecode.WritableReference.285"*
  ret %"adt$main.bytecode.WritableReference.285"* %5
}

define %"adt$main.bytecode.MaybeValueRef.341"* @"adtcfn$adtc$main.bytecode.MaybeValueRef.Nothing"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.MaybeValueRef.Nothing"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.MaybeValueRef.Nothing", %"adtc$main.bytecode.MaybeValueRef.Nothing"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.bytecode.MaybeValueRef.Nothing"* %1 to %"adt$main.bytecode.MaybeValueRef.341"*
  ret %"adt$main.bytecode.MaybeValueRef.341"* %3
}

define %"adt$main.bytecode.MaybeValueRef.341"* @"adtcfn$adtc$main.bytecode.MaybeValueRef.Just"(%"adt$main.bytecode.ValueRef.278"* %val) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode.MaybeValueRef.Just.342"* getelementptr (%"adtc$main.bytecode.MaybeValueRef.Just.342", %"adtc$main.bytecode.MaybeValueRef.Just.342"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.MaybeValueRef.Just.342"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.MaybeValueRef.Just.342", %"adtc$main.bytecode.MaybeValueRef.Just.342"* %1, i32 0, i32 0
  store i32 1, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode.MaybeValueRef.Just.342", %"adtc$main.bytecode.MaybeValueRef.Just.342"* %1, i32 0, i32 1
  store %"adt$main.bytecode.ValueRef.278"* %val, %"adt$main.bytecode.ValueRef.278"** %3
  %4 = bitcast %"adtc$main.bytecode.MaybeValueRef.Just.342"* %1 to %"adt$main.bytecode.MaybeValueRef.341"*
  ret %"adt$main.bytecode.MaybeValueRef.341"* %4
}

define %"adt$main.bytecode.ValueRef.278"* @"adtcfn$adtc$main.bytecode.ValueRef.Instr"(%"adt$main.bytecode.Instruction.265"* %instr) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode.ValueRef.Instr.279"* getelementptr (%"adtc$main.bytecode.ValueRef.Instr.279", %"adtc$main.bytecode.ValueRef.Instr.279"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.ValueRef.Instr.279"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.ValueRef.Instr.279", %"adtc$main.bytecode.ValueRef.Instr.279"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode.ValueRef.Instr.279", %"adtc$main.bytecode.ValueRef.Instr.279"* %1, i32 0, i32 1
  store %"adt$main.bytecode.Instruction.265"* %instr, %"adt$main.bytecode.Instruction.265"** %3
  %4 = bitcast %"adtc$main.bytecode.ValueRef.Instr.279"* %1 to %"adt$main.bytecode.ValueRef.278"*
  ret %"adt$main.bytecode.ValueRef.278"* %4
}

define %"adt$main.bytecode.ValueRef.278"* @"adtcfn$adtc$main.bytecode.ValueRef.ConstNum"(i32 %val, %"adt$main.ir.IRType.267"* %type) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode.ValueRef.ConstNum.281"* getelementptr (%"adtc$main.bytecode.ValueRef.ConstNum.281", %"adtc$main.bytecode.ValueRef.ConstNum.281"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.ValueRef.ConstNum.281"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.ValueRef.ConstNum.281", %"adtc$main.bytecode.ValueRef.ConstNum.281"* %1, i32 0, i32 0
  store i32 1, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode.ValueRef.ConstNum.281", %"adtc$main.bytecode.ValueRef.ConstNum.281"* %1, i32 0, i32 1
  store i32 %val, i32* %3
  %4 = getelementptr inbounds %"adtc$main.bytecode.ValueRef.ConstNum.281", %"adtc$main.bytecode.ValueRef.ConstNum.281"* %1, i32 0, i32 2
  store %"adt$main.ir.IRType.267"* %type, %"adt$main.ir.IRType.267"** %4
  %5 = bitcast %"adtc$main.bytecode.ValueRef.ConstNum.281"* %1 to %"adt$main.bytecode.ValueRef.278"*
  ret %"adt$main.bytecode.ValueRef.278"* %5
}

define %"adt$main.bytecode.ValueRef.278"* @"adtcfn$adtc$main.bytecode.ValueRef.ConstString"(i8* %val, %"adt$main.ir.IRType.267"* %type) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode.ValueRef.ConstString.282"* getelementptr (%"adtc$main.bytecode.ValueRef.ConstString.282", %"adtc$main.bytecode.ValueRef.ConstString.282"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.ValueRef.ConstString.282"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.ValueRef.ConstString.282", %"adtc$main.bytecode.ValueRef.ConstString.282"* %1, i32 0, i32 0
  store i32 2, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode.ValueRef.ConstString.282", %"adtc$main.bytecode.ValueRef.ConstString.282"* %1, i32 0, i32 1
  store i8* %val, i8** %3
  %4 = getelementptr inbounds %"adtc$main.bytecode.ValueRef.ConstString.282", %"adtc$main.bytecode.ValueRef.ConstString.282"* %1, i32 0, i32 2
  store %"adt$main.ir.IRType.267"* %type, %"adt$main.ir.IRType.267"** %4
  %5 = bitcast %"adtc$main.bytecode.ValueRef.ConstString.282"* %1 to %"adt$main.bytecode.ValueRef.278"*
  ret %"adt$main.bytecode.ValueRef.278"* %5
}

define %"adt$main.bytecode.ValueRef.278"* @"adtcfn$adtc$main.bytecode.ValueRef.ConstBool"(i1 %val, %"adt$main.ir.IRType.267"* %type) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode.ValueRef.ConstBool.284"* getelementptr (%"adtc$main.bytecode.ValueRef.ConstBool.284", %"adtc$main.bytecode.ValueRef.ConstBool.284"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.ValueRef.ConstBool.284"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.ValueRef.ConstBool.284", %"adtc$main.bytecode.ValueRef.ConstBool.284"* %1, i32 0, i32 0
  store i32 3, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode.ValueRef.ConstBool.284", %"adtc$main.bytecode.ValueRef.ConstBool.284"* %1, i32 0, i32 1
  store i1 %val, i1* %3
  %4 = getelementptr inbounds %"adtc$main.bytecode.ValueRef.ConstBool.284", %"adtc$main.bytecode.ValueRef.ConstBool.284"* %1, i32 0, i32 2
  store %"adt$main.ir.IRType.267"* %type, %"adt$main.ir.IRType.267"** %4
  %5 = bitcast %"adtc$main.bytecode.ValueRef.ConstBool.284"* %1 to %"adt$main.bytecode.ValueRef.278"*
  ret %"adt$main.bytecode.ValueRef.278"* %5
}

define %"adt$main.bytecode.ValueRef.278"* @"adtcfn$adtc$main.bytecode.ValueRef.ConstUnit"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.ValueRef.ConstUnit"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.ValueRef.ConstUnit", %"adtc$main.bytecode.ValueRef.ConstUnit"* %1, i32 0, i32 0
  store i32 4, i32* %2
  %3 = bitcast %"adtc$main.bytecode.ValueRef.ConstUnit"* %1 to %"adt$main.bytecode.ValueRef.278"*
  ret %"adt$main.bytecode.ValueRef.278"* %3
}

define %"adt$main.bytecode.ValueRef.278"* @"adtcfn$adtc$main.bytecode.ValueRef.Undef"(%"adt$main.ir.IRType.267"* %type) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.bytecode.ValueRef.Undef"* getelementptr (%"adtc$main.bytecode.ValueRef.Undef", %"adtc$main.bytecode.ValueRef.Undef"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.bytecode.ValueRef.Undef"*
  %2 = getelementptr inbounds %"adtc$main.bytecode.ValueRef.Undef", %"adtc$main.bytecode.ValueRef.Undef"* %1, i32 0, i32 0
  store i32 5, i32* %2
  %3 = getelementptr inbounds %"adtc$main.bytecode.ValueRef.Undef", %"adtc$main.bytecode.ValueRef.Undef"* %1, i32 0, i32 1
  store %"adt$main.ir.IRType.267"* %type, %"adt$main.ir.IRType.267"** %3
  %4 = bitcast %"adtc$main.bytecode.ValueRef.Undef"* %1 to %"adt$main.bytecode.ValueRef.278"*
  ret %"adt$main.bytecode.ValueRef.278"* %4
}
