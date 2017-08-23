; ModuleID = 'main.ast_expr'
source_filename = "main.ast_expr"

%"adt$main.ast_expr.AstExpr.379" = type { i32, %"adt$main.ast.SrcLoc.380"* }
%"adt$main.ast.SrcLoc.380" = type opaque
%"adtc$main.ast_expr.AstExpr.Id.381" = type { i32, %"adt$main.ast.SrcLoc.380"*, i8* }
%"adtc$main.ast_expr.AstExpr.Dot.382" = type { i32, %"adt$main.ast.SrcLoc.380"*, %"adt$main.ast_expr.AstExpr.379"*, i8* }
%"adt$main.ast_type.AstType.384" = type opaque
%"adtc$main.ast_expr.AstExpr.New.383" = type { i32, %"adt$main.ast.SrcLoc.380"*, %"adt$main.ast_type.AstType.384"* }
%"adt$main.ast_expr.AstExprList.386" = type { i32 }
%"adtc$main.ast_expr.AstExpr.Call.385" = type { i32, %"adt$main.ast.SrcLoc.380"*, %"adt$main.ast_expr.AstExpr.379"*, %"adt$main.ast_expr.AstExprList.386"* }
%"adtc$main.ast_expr.AstExpr.Index.387" = type { i32, %"adt$main.ast.SrcLoc.380"*, %"adt$main.ast_expr.AstExpr.379"*, %"adt$main.ast_expr.AstExpr.379"* }
%"adt$main.ast_expr.BinOp.389" = type { i32 }
%"adtc$main.ast_expr.AstExpr.BinOp.388" = type { i32, %"adt$main.ast.SrcLoc.380"*, %"adt$main.ast_expr.AstExpr.379"*, %"adt$main.ast_expr.BinOp.389"*, %"adt$main.ast_expr.AstExpr.379"* }
%"adtc$main.ast_expr.AstExpr.StringLit.390" = type { i32, %"adt$main.ast.SrcLoc.380"*, i8* }
%"adtc$main.ast_expr.AstExpr.NumberLit.391" = type { i32, %"adt$main.ast.SrcLoc.380"*, i8* }
%"adtc$main.ast_expr.BinOp.CmpEQ" = type { i32 }
%"adtc$main.ast_expr.BinOp.CmpNE" = type { i32 }
%"adtc$main.ast_expr.BinOp.CmpLT" = type { i32 }
%"adtc$main.ast_expr.BinOp.CmpGT" = type { i32 }
%"adtc$main.ast_expr.BinOp.CmpLE" = type { i32 }
%"adtc$main.ast_expr.BinOp.CmpGE" = type { i32 }
%"adtc$main.ast_expr.BinOp.Minus" = type { i32 }
%"adtc$main.ast_expr.BinOp.Plus" = type { i32 }
%"adtc$main.ast_expr.BinOp.Divide" = type { i32 }
%"adtc$main.ast_expr.BinOp.Multiply" = type { i32 }
%"adtc$main.ast_expr.BinOp.And" = type { i32 }
%"adtc$main.ast_expr.BinOp.Or" = type { i32 }
%"adtc$main.ast_expr.AstExprList.Nil" = type { i32 }
%"adtc$main.ast_expr.AstExprList.Cons.392" = type { i32, %"adt$main.ast_expr.AstExpr.379"*, %"adt$main.ast_expr.AstExprList.386"* }
%"adt$main.ast_expr.MaybeAstExpr.393" = type { i32 }
%"adtc$main.ast_expr.MaybeAstExpr.Nothing" = type { i32 }
%"adtc$main.ast_expr.MaybeAstExpr.Just.394" = type { i32, %"adt$main.ast_expr.AstExpr.379"* }

define %"adt$main.ast_expr.AstExpr.379"* @"adtcfn$adtc$main.ast_expr.AstExpr.Id"(i8* %id) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.ast_expr.AstExpr.Id.381"* getelementptr (%"adtc$main.ast_expr.AstExpr.Id.381", %"adtc$main.ast_expr.AstExpr.Id.381"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ast_expr.AstExpr.Id.381"*
  %2 = getelementptr inbounds %"adtc$main.ast_expr.AstExpr.Id.381", %"adtc$main.ast_expr.AstExpr.Id.381"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = getelementptr inbounds %"adtc$main.ast_expr.AstExpr.Id.381", %"adtc$main.ast_expr.AstExpr.Id.381"* %1, i32 0, i32 2
  store i8* %id, i8** %3
  %4 = bitcast %"adtc$main.ast_expr.AstExpr.Id.381"* %1 to %"adt$main.ast_expr.AstExpr.379"*
  ret %"adt$main.ast_expr.AstExpr.379"* %4
}

declare i8* @jf_allocate(i32)

define %"adt$main.ast_expr.AstExpr.379"* @"adtcfn$adtc$main.ast_expr.AstExpr.Dot"(%"adt$main.ast_expr.AstExpr.379"* %lhs, i8* %id) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.ast_expr.AstExpr.Dot.382"* getelementptr (%"adtc$main.ast_expr.AstExpr.Dot.382", %"adtc$main.ast_expr.AstExpr.Dot.382"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ast_expr.AstExpr.Dot.382"*
  %2 = getelementptr inbounds %"adtc$main.ast_expr.AstExpr.Dot.382", %"adtc$main.ast_expr.AstExpr.Dot.382"* %1, i32 0, i32 0
  store i32 1, i32* %2
  %3 = getelementptr inbounds %"adtc$main.ast_expr.AstExpr.Dot.382", %"adtc$main.ast_expr.AstExpr.Dot.382"* %1, i32 0, i32 2
  store %"adt$main.ast_expr.AstExpr.379"* %lhs, %"adt$main.ast_expr.AstExpr.379"** %3
  %4 = getelementptr inbounds %"adtc$main.ast_expr.AstExpr.Dot.382", %"adtc$main.ast_expr.AstExpr.Dot.382"* %1, i32 0, i32 3
  store i8* %id, i8** %4
  %5 = bitcast %"adtc$main.ast_expr.AstExpr.Dot.382"* %1 to %"adt$main.ast_expr.AstExpr.379"*
  ret %"adt$main.ast_expr.AstExpr.379"* %5
}

define %"adt$main.ast_expr.AstExpr.379"* @"adtcfn$adtc$main.ast_expr.AstExpr.New"(%"adt$main.ast_type.AstType.384"* %type) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.ast_expr.AstExpr.New.383"* getelementptr (%"adtc$main.ast_expr.AstExpr.New.383", %"adtc$main.ast_expr.AstExpr.New.383"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ast_expr.AstExpr.New.383"*
  %2 = getelementptr inbounds %"adtc$main.ast_expr.AstExpr.New.383", %"adtc$main.ast_expr.AstExpr.New.383"* %1, i32 0, i32 0
  store i32 2, i32* %2
  %3 = getelementptr inbounds %"adtc$main.ast_expr.AstExpr.New.383", %"adtc$main.ast_expr.AstExpr.New.383"* %1, i32 0, i32 2
  store %"adt$main.ast_type.AstType.384"* %type, %"adt$main.ast_type.AstType.384"** %3
  %4 = bitcast %"adtc$main.ast_expr.AstExpr.New.383"* %1 to %"adt$main.ast_expr.AstExpr.379"*
  ret %"adt$main.ast_expr.AstExpr.379"* %4
}

define %"adt$main.ast_expr.AstExpr.379"* @"adtcfn$adtc$main.ast_expr.AstExpr.Call"(%"adt$main.ast_expr.AstExpr.379"* %head, %"adt$main.ast_expr.AstExprList.386"* %args) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.ast_expr.AstExpr.Call.385"* getelementptr (%"adtc$main.ast_expr.AstExpr.Call.385", %"adtc$main.ast_expr.AstExpr.Call.385"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ast_expr.AstExpr.Call.385"*
  %2 = getelementptr inbounds %"adtc$main.ast_expr.AstExpr.Call.385", %"adtc$main.ast_expr.AstExpr.Call.385"* %1, i32 0, i32 0
  store i32 3, i32* %2
  %3 = getelementptr inbounds %"adtc$main.ast_expr.AstExpr.Call.385", %"adtc$main.ast_expr.AstExpr.Call.385"* %1, i32 0, i32 2
  store %"adt$main.ast_expr.AstExpr.379"* %head, %"adt$main.ast_expr.AstExpr.379"** %3
  %4 = getelementptr inbounds %"adtc$main.ast_expr.AstExpr.Call.385", %"adtc$main.ast_expr.AstExpr.Call.385"* %1, i32 0, i32 3
  store %"adt$main.ast_expr.AstExprList.386"* %args, %"adt$main.ast_expr.AstExprList.386"** %4
  %5 = bitcast %"adtc$main.ast_expr.AstExpr.Call.385"* %1 to %"adt$main.ast_expr.AstExpr.379"*
  ret %"adt$main.ast_expr.AstExpr.379"* %5
}

define %"adt$main.ast_expr.AstExpr.379"* @"adtcfn$adtc$main.ast_expr.AstExpr.Index"(%"adt$main.ast_expr.AstExpr.379"* %lhs, %"adt$main.ast_expr.AstExpr.379"* %rhs) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.ast_expr.AstExpr.Index.387"* getelementptr (%"adtc$main.ast_expr.AstExpr.Index.387", %"adtc$main.ast_expr.AstExpr.Index.387"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ast_expr.AstExpr.Index.387"*
  %2 = getelementptr inbounds %"adtc$main.ast_expr.AstExpr.Index.387", %"adtc$main.ast_expr.AstExpr.Index.387"* %1, i32 0, i32 0
  store i32 4, i32* %2
  %3 = getelementptr inbounds %"adtc$main.ast_expr.AstExpr.Index.387", %"adtc$main.ast_expr.AstExpr.Index.387"* %1, i32 0, i32 2
  store %"adt$main.ast_expr.AstExpr.379"* %lhs, %"adt$main.ast_expr.AstExpr.379"** %3
  %4 = getelementptr inbounds %"adtc$main.ast_expr.AstExpr.Index.387", %"adtc$main.ast_expr.AstExpr.Index.387"* %1, i32 0, i32 3
  store %"adt$main.ast_expr.AstExpr.379"* %rhs, %"adt$main.ast_expr.AstExpr.379"** %4
  %5 = bitcast %"adtc$main.ast_expr.AstExpr.Index.387"* %1 to %"adt$main.ast_expr.AstExpr.379"*
  ret %"adt$main.ast_expr.AstExpr.379"* %5
}

define %"adt$main.ast_expr.AstExpr.379"* @"adtcfn$adtc$main.ast_expr.AstExpr.BinOp"(%"adt$main.ast_expr.AstExpr.379"* %lhs, %"adt$main.ast_expr.BinOp.389"* %op, %"adt$main.ast_expr.AstExpr.379"* %rhs) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.ast_expr.AstExpr.BinOp.388"* getelementptr (%"adtc$main.ast_expr.AstExpr.BinOp.388", %"adtc$main.ast_expr.AstExpr.BinOp.388"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ast_expr.AstExpr.BinOp.388"*
  %2 = getelementptr inbounds %"adtc$main.ast_expr.AstExpr.BinOp.388", %"adtc$main.ast_expr.AstExpr.BinOp.388"* %1, i32 0, i32 0
  store i32 5, i32* %2
  %3 = getelementptr inbounds %"adtc$main.ast_expr.AstExpr.BinOp.388", %"adtc$main.ast_expr.AstExpr.BinOp.388"* %1, i32 0, i32 2
  store %"adt$main.ast_expr.AstExpr.379"* %lhs, %"adt$main.ast_expr.AstExpr.379"** %3
  %4 = getelementptr inbounds %"adtc$main.ast_expr.AstExpr.BinOp.388", %"adtc$main.ast_expr.AstExpr.BinOp.388"* %1, i32 0, i32 3
  store %"adt$main.ast_expr.BinOp.389"* %op, %"adt$main.ast_expr.BinOp.389"** %4
  %5 = getelementptr inbounds %"adtc$main.ast_expr.AstExpr.BinOp.388", %"adtc$main.ast_expr.AstExpr.BinOp.388"* %1, i32 0, i32 4
  store %"adt$main.ast_expr.AstExpr.379"* %rhs, %"adt$main.ast_expr.AstExpr.379"** %5
  %6 = bitcast %"adtc$main.ast_expr.AstExpr.BinOp.388"* %1 to %"adt$main.ast_expr.AstExpr.379"*
  ret %"adt$main.ast_expr.AstExpr.379"* %6
}

define %"adt$main.ast_expr.AstExpr.379"* @"adtcfn$adtc$main.ast_expr.AstExpr.StringLit"(i8* %content) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.ast_expr.AstExpr.StringLit.390"* getelementptr (%"adtc$main.ast_expr.AstExpr.StringLit.390", %"adtc$main.ast_expr.AstExpr.StringLit.390"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ast_expr.AstExpr.StringLit.390"*
  %2 = getelementptr inbounds %"adtc$main.ast_expr.AstExpr.StringLit.390", %"adtc$main.ast_expr.AstExpr.StringLit.390"* %1, i32 0, i32 0
  store i32 6, i32* %2
  %3 = getelementptr inbounds %"adtc$main.ast_expr.AstExpr.StringLit.390", %"adtc$main.ast_expr.AstExpr.StringLit.390"* %1, i32 0, i32 2
  store i8* %content, i8** %3
  %4 = bitcast %"adtc$main.ast_expr.AstExpr.StringLit.390"* %1 to %"adt$main.ast_expr.AstExpr.379"*
  ret %"adt$main.ast_expr.AstExpr.379"* %4
}

define %"adt$main.ast_expr.AstExpr.379"* @"adtcfn$adtc$main.ast_expr.AstExpr.NumberLit"(i8* %content) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.ast_expr.AstExpr.NumberLit.391"* getelementptr (%"adtc$main.ast_expr.AstExpr.NumberLit.391", %"adtc$main.ast_expr.AstExpr.NumberLit.391"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ast_expr.AstExpr.NumberLit.391"*
  %2 = getelementptr inbounds %"adtc$main.ast_expr.AstExpr.NumberLit.391", %"adtc$main.ast_expr.AstExpr.NumberLit.391"* %1, i32 0, i32 0
  store i32 7, i32* %2
  %3 = getelementptr inbounds %"adtc$main.ast_expr.AstExpr.NumberLit.391", %"adtc$main.ast_expr.AstExpr.NumberLit.391"* %1, i32 0, i32 2
  store i8* %content, i8** %3
  %4 = bitcast %"adtc$main.ast_expr.AstExpr.NumberLit.391"* %1 to %"adt$main.ast_expr.AstExpr.379"*
  ret %"adt$main.ast_expr.AstExpr.379"* %4
}

define %"adt$main.ast_expr.BinOp.389"* @"adtcfn$adtc$main.ast_expr.BinOp.CmpEQ"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ast_expr.BinOp.CmpEQ"*
  %2 = getelementptr inbounds %"adtc$main.ast_expr.BinOp.CmpEQ", %"adtc$main.ast_expr.BinOp.CmpEQ"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.ast_expr.BinOp.CmpEQ"* %1 to %"adt$main.ast_expr.BinOp.389"*
  ret %"adt$main.ast_expr.BinOp.389"* %3
}

define %"adt$main.ast_expr.BinOp.389"* @"adtcfn$adtc$main.ast_expr.BinOp.CmpNE"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ast_expr.BinOp.CmpNE"*
  %2 = getelementptr inbounds %"adtc$main.ast_expr.BinOp.CmpNE", %"adtc$main.ast_expr.BinOp.CmpNE"* %1, i32 0, i32 0
  store i32 1, i32* %2
  %3 = bitcast %"adtc$main.ast_expr.BinOp.CmpNE"* %1 to %"adt$main.ast_expr.BinOp.389"*
  ret %"adt$main.ast_expr.BinOp.389"* %3
}

define %"adt$main.ast_expr.BinOp.389"* @"adtcfn$adtc$main.ast_expr.BinOp.CmpLT"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ast_expr.BinOp.CmpLT"*
  %2 = getelementptr inbounds %"adtc$main.ast_expr.BinOp.CmpLT", %"adtc$main.ast_expr.BinOp.CmpLT"* %1, i32 0, i32 0
  store i32 2, i32* %2
  %3 = bitcast %"adtc$main.ast_expr.BinOp.CmpLT"* %1 to %"adt$main.ast_expr.BinOp.389"*
  ret %"adt$main.ast_expr.BinOp.389"* %3
}

define %"adt$main.ast_expr.BinOp.389"* @"adtcfn$adtc$main.ast_expr.BinOp.CmpGT"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ast_expr.BinOp.CmpGT"*
  %2 = getelementptr inbounds %"adtc$main.ast_expr.BinOp.CmpGT", %"adtc$main.ast_expr.BinOp.CmpGT"* %1, i32 0, i32 0
  store i32 3, i32* %2
  %3 = bitcast %"adtc$main.ast_expr.BinOp.CmpGT"* %1 to %"adt$main.ast_expr.BinOp.389"*
  ret %"adt$main.ast_expr.BinOp.389"* %3
}

define %"adt$main.ast_expr.BinOp.389"* @"adtcfn$adtc$main.ast_expr.BinOp.CmpLE"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ast_expr.BinOp.CmpLE"*
  %2 = getelementptr inbounds %"adtc$main.ast_expr.BinOp.CmpLE", %"adtc$main.ast_expr.BinOp.CmpLE"* %1, i32 0, i32 0
  store i32 4, i32* %2
  %3 = bitcast %"adtc$main.ast_expr.BinOp.CmpLE"* %1 to %"adt$main.ast_expr.BinOp.389"*
  ret %"adt$main.ast_expr.BinOp.389"* %3
}

define %"adt$main.ast_expr.BinOp.389"* @"adtcfn$adtc$main.ast_expr.BinOp.CmpGE"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ast_expr.BinOp.CmpGE"*
  %2 = getelementptr inbounds %"adtc$main.ast_expr.BinOp.CmpGE", %"adtc$main.ast_expr.BinOp.CmpGE"* %1, i32 0, i32 0
  store i32 5, i32* %2
  %3 = bitcast %"adtc$main.ast_expr.BinOp.CmpGE"* %1 to %"adt$main.ast_expr.BinOp.389"*
  ret %"adt$main.ast_expr.BinOp.389"* %3
}

define %"adt$main.ast_expr.BinOp.389"* @"adtcfn$adtc$main.ast_expr.BinOp.Minus"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ast_expr.BinOp.Minus"*
  %2 = getelementptr inbounds %"adtc$main.ast_expr.BinOp.Minus", %"adtc$main.ast_expr.BinOp.Minus"* %1, i32 0, i32 0
  store i32 6, i32* %2
  %3 = bitcast %"adtc$main.ast_expr.BinOp.Minus"* %1 to %"adt$main.ast_expr.BinOp.389"*
  ret %"adt$main.ast_expr.BinOp.389"* %3
}

define %"adt$main.ast_expr.BinOp.389"* @"adtcfn$adtc$main.ast_expr.BinOp.Plus"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ast_expr.BinOp.Plus"*
  %2 = getelementptr inbounds %"adtc$main.ast_expr.BinOp.Plus", %"adtc$main.ast_expr.BinOp.Plus"* %1, i32 0, i32 0
  store i32 7, i32* %2
  %3 = bitcast %"adtc$main.ast_expr.BinOp.Plus"* %1 to %"adt$main.ast_expr.BinOp.389"*
  ret %"adt$main.ast_expr.BinOp.389"* %3
}

define %"adt$main.ast_expr.BinOp.389"* @"adtcfn$adtc$main.ast_expr.BinOp.Divide"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ast_expr.BinOp.Divide"*
  %2 = getelementptr inbounds %"adtc$main.ast_expr.BinOp.Divide", %"adtc$main.ast_expr.BinOp.Divide"* %1, i32 0, i32 0
  store i32 8, i32* %2
  %3 = bitcast %"adtc$main.ast_expr.BinOp.Divide"* %1 to %"adt$main.ast_expr.BinOp.389"*
  ret %"adt$main.ast_expr.BinOp.389"* %3
}

define %"adt$main.ast_expr.BinOp.389"* @"adtcfn$adtc$main.ast_expr.BinOp.Multiply"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ast_expr.BinOp.Multiply"*
  %2 = getelementptr inbounds %"adtc$main.ast_expr.BinOp.Multiply", %"adtc$main.ast_expr.BinOp.Multiply"* %1, i32 0, i32 0
  store i32 9, i32* %2
  %3 = bitcast %"adtc$main.ast_expr.BinOp.Multiply"* %1 to %"adt$main.ast_expr.BinOp.389"*
  ret %"adt$main.ast_expr.BinOp.389"* %3
}

define %"adt$main.ast_expr.BinOp.389"* @"adtcfn$adtc$main.ast_expr.BinOp.And"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ast_expr.BinOp.And"*
  %2 = getelementptr inbounds %"adtc$main.ast_expr.BinOp.And", %"adtc$main.ast_expr.BinOp.And"* %1, i32 0, i32 0
  store i32 10, i32* %2
  %3 = bitcast %"adtc$main.ast_expr.BinOp.And"* %1 to %"adt$main.ast_expr.BinOp.389"*
  ret %"adt$main.ast_expr.BinOp.389"* %3
}

define %"adt$main.ast_expr.BinOp.389"* @"adtcfn$adtc$main.ast_expr.BinOp.Or"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ast_expr.BinOp.Or"*
  %2 = getelementptr inbounds %"adtc$main.ast_expr.BinOp.Or", %"adtc$main.ast_expr.BinOp.Or"* %1, i32 0, i32 0
  store i32 11, i32* %2
  %3 = bitcast %"adtc$main.ast_expr.BinOp.Or"* %1 to %"adt$main.ast_expr.BinOp.389"*
  ret %"adt$main.ast_expr.BinOp.389"* %3
}

define %"adt$main.ast_expr.AstExprList.386"* @"adtcfn$adtc$main.ast_expr.AstExprList.Nil"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ast_expr.AstExprList.Nil"*
  %2 = getelementptr inbounds %"adtc$main.ast_expr.AstExprList.Nil", %"adtc$main.ast_expr.AstExprList.Nil"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.ast_expr.AstExprList.Nil"* %1 to %"adt$main.ast_expr.AstExprList.386"*
  ret %"adt$main.ast_expr.AstExprList.386"* %3
}

define %"adt$main.ast_expr.AstExprList.386"* @"adtcfn$adtc$main.ast_expr.AstExprList.Cons"(%"adt$main.ast_expr.AstExpr.379"* %expr, %"adt$main.ast_expr.AstExprList.386"* %tail) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.ast_expr.AstExprList.Cons.392"* getelementptr (%"adtc$main.ast_expr.AstExprList.Cons.392", %"adtc$main.ast_expr.AstExprList.Cons.392"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ast_expr.AstExprList.Cons.392"*
  %2 = getelementptr inbounds %"adtc$main.ast_expr.AstExprList.Cons.392", %"adtc$main.ast_expr.AstExprList.Cons.392"* %1, i32 0, i32 0
  store i32 1, i32* %2
  %3 = getelementptr inbounds %"adtc$main.ast_expr.AstExprList.Cons.392", %"adtc$main.ast_expr.AstExprList.Cons.392"* %1, i32 0, i32 1
  store %"adt$main.ast_expr.AstExpr.379"* %expr, %"adt$main.ast_expr.AstExpr.379"** %3
  %4 = getelementptr inbounds %"adtc$main.ast_expr.AstExprList.Cons.392", %"adtc$main.ast_expr.AstExprList.Cons.392"* %1, i32 0, i32 2
  store %"adt$main.ast_expr.AstExprList.386"* %tail, %"adt$main.ast_expr.AstExprList.386"** %4
  %5 = bitcast %"adtc$main.ast_expr.AstExprList.Cons.392"* %1 to %"adt$main.ast_expr.AstExprList.386"*
  ret %"adt$main.ast_expr.AstExprList.386"* %5
}

define %"adt$main.ast_expr.MaybeAstExpr.393"* @"adtcfn$adtc$main.ast_expr.MaybeAstExpr.Nothing"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ast_expr.MaybeAstExpr.Nothing"*
  %2 = getelementptr inbounds %"adtc$main.ast_expr.MaybeAstExpr.Nothing", %"adtc$main.ast_expr.MaybeAstExpr.Nothing"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.ast_expr.MaybeAstExpr.Nothing"* %1 to %"adt$main.ast_expr.MaybeAstExpr.393"*
  ret %"adt$main.ast_expr.MaybeAstExpr.393"* %3
}

define %"adt$main.ast_expr.MaybeAstExpr.393"* @"adtcfn$adtc$main.ast_expr.MaybeAstExpr.Just"(%"adt$main.ast_expr.AstExpr.379"* %expr) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.ast_expr.MaybeAstExpr.Just.394"* getelementptr (%"adtc$main.ast_expr.MaybeAstExpr.Just.394", %"adtc$main.ast_expr.MaybeAstExpr.Just.394"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ast_expr.MaybeAstExpr.Just.394"*
  %2 = getelementptr inbounds %"adtc$main.ast_expr.MaybeAstExpr.Just.394", %"adtc$main.ast_expr.MaybeAstExpr.Just.394"* %1, i32 0, i32 0
  store i32 1, i32* %2
  %3 = getelementptr inbounds %"adtc$main.ast_expr.MaybeAstExpr.Just.394", %"adtc$main.ast_expr.MaybeAstExpr.Just.394"* %1, i32 0, i32 1
  store %"adt$main.ast_expr.AstExpr.379"* %expr, %"adt$main.ast_expr.AstExpr.379"** %3
  %4 = bitcast %"adtc$main.ast_expr.MaybeAstExpr.Just.394"* %1 to %"adt$main.ast_expr.MaybeAstExpr.393"*
  ret %"adt$main.ast_expr.MaybeAstExpr.393"* %4
}
