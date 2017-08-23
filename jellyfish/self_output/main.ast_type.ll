; ModuleID = 'main.ast_type'
source_filename = "main.ast_type"

%"adt$main.ast_type.AstType.343" = type { i32, %"adt$main.ast.SrcLoc.344"* }
%"adt$main.ast.SrcLoc.344" = type opaque
%"adt$main.ast.Binder.346" = type opaque
%"adtc$main.ast_type.AstType.Ref.345" = type { i32, %"adt$main.ast.SrcLoc.344"*, %"adt$main.ast.Binder.346"* }
%"adt$main.ast_expr.MaybeAstExpr.348" = type opaque
%"adtc$main.ast_type.AstType.Array.347" = type { i32, %"adt$main.ast.SrcLoc.344"*, %"adt$main.ast_type.AstType.343"*, %"adt$main.ast_expr.MaybeAstExpr.348"* }
%"adt$main.ast_type.MaybeAstType.349" = type { i32 }
%"adtc$main.ast_type.MaybeAstType.Nothing" = type { i32 }
%"adtc$main.ast_type.MaybeAstType.Just.350" = type { i32, %"adt$main.ast_type.AstType.343"* }

define %"adt$main.ast_type.AstType.343"* @"adtcfn$adtc$main.ast_type.AstType.Ref"(%"adt$main.ast.Binder.346"* %binder) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.ast_type.AstType.Ref.345"* getelementptr (%"adtc$main.ast_type.AstType.Ref.345", %"adtc$main.ast_type.AstType.Ref.345"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ast_type.AstType.Ref.345"*
  %2 = getelementptr inbounds %"adtc$main.ast_type.AstType.Ref.345", %"adtc$main.ast_type.AstType.Ref.345"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = getelementptr inbounds %"adtc$main.ast_type.AstType.Ref.345", %"adtc$main.ast_type.AstType.Ref.345"* %1, i32 0, i32 2
  store %"adt$main.ast.Binder.346"* %binder, %"adt$main.ast.Binder.346"** %3
  %4 = bitcast %"adtc$main.ast_type.AstType.Ref.345"* %1 to %"adt$main.ast_type.AstType.343"*
  ret %"adt$main.ast_type.AstType.343"* %4
}

declare i8* @jf_allocate(i32)

define %"adt$main.ast_type.AstType.343"* @"adtcfn$adtc$main.ast_type.AstType.Array"(%"adt$main.ast_type.AstType.343"* %elementType, %"adt$main.ast_expr.MaybeAstExpr.348"* %size) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.ast_type.AstType.Array.347"* getelementptr (%"adtc$main.ast_type.AstType.Array.347", %"adtc$main.ast_type.AstType.Array.347"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ast_type.AstType.Array.347"*
  %2 = getelementptr inbounds %"adtc$main.ast_type.AstType.Array.347", %"adtc$main.ast_type.AstType.Array.347"* %1, i32 0, i32 0
  store i32 1, i32* %2
  %3 = getelementptr inbounds %"adtc$main.ast_type.AstType.Array.347", %"adtc$main.ast_type.AstType.Array.347"* %1, i32 0, i32 2
  store %"adt$main.ast_type.AstType.343"* %elementType, %"adt$main.ast_type.AstType.343"** %3
  %4 = getelementptr inbounds %"adtc$main.ast_type.AstType.Array.347", %"adtc$main.ast_type.AstType.Array.347"* %1, i32 0, i32 3
  store %"adt$main.ast_expr.MaybeAstExpr.348"* %size, %"adt$main.ast_expr.MaybeAstExpr.348"** %4
  %5 = bitcast %"adtc$main.ast_type.AstType.Array.347"* %1 to %"adt$main.ast_type.AstType.343"*
  ret %"adt$main.ast_type.AstType.343"* %5
}

define %"adt$main.ast_type.MaybeAstType.349"* @"adtcfn$adtc$main.ast_type.MaybeAstType.Nothing"() {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ast_type.MaybeAstType.Nothing"*
  %2 = getelementptr inbounds %"adtc$main.ast_type.MaybeAstType.Nothing", %"adtc$main.ast_type.MaybeAstType.Nothing"* %1, i32 0, i32 0
  store i32 0, i32* %2
  %3 = bitcast %"adtc$main.ast_type.MaybeAstType.Nothing"* %1 to %"adt$main.ast_type.MaybeAstType.349"*
  ret %"adt$main.ast_type.MaybeAstType.349"* %3
}

define %"adt$main.ast_type.MaybeAstType.349"* @"adtcfn$adtc$main.ast_type.MaybeAstType.Just"(%"adt$main.ast_type.AstType.343"* %type) {
entry:
  %0 = call i8* @jf_allocate(i32 ptrtoint (%"adtc$main.ast_type.MaybeAstType.Just.350"* getelementptr (%"adtc$main.ast_type.MaybeAstType.Just.350", %"adtc$main.ast_type.MaybeAstType.Just.350"* null, i32 1) to i32))
  %1 = bitcast i8* %0 to %"adtc$main.ast_type.MaybeAstType.Just.350"*
  %2 = getelementptr inbounds %"adtc$main.ast_type.MaybeAstType.Just.350", %"adtc$main.ast_type.MaybeAstType.Just.350"* %1, i32 0, i32 0
  store i32 1, i32* %2
  %3 = getelementptr inbounds %"adtc$main.ast_type.MaybeAstType.Just.350", %"adtc$main.ast_type.MaybeAstType.Just.350"* %1, i32 0, i32 1
  store %"adt$main.ast_type.AstType.343"* %type, %"adt$main.ast_type.AstType.343"** %3
  %4 = bitcast %"adtc$main.ast_type.MaybeAstType.Just.350"* %1 to %"adt$main.ast_type.MaybeAstType.349"*
  ret %"adt$main.ast_type.MaybeAstType.349"* %4
}
