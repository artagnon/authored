func.func @example(%arg0: !llvm<"float*">, ...) {
  ...
  llvm.call @pointwise_add(...) : (!llvm<"float*">, ...) -> ()
  return
}

llvm.func @pointwise_add(%arg0: !llvm<"float*">, ...) {
  ...
  llvm.call @_mlir_ciface_pointwise_add(%9, %19, %29) : (
    !llvm."{ float*, float*, i64, [2 x i64], [2 x i64] }*">,
    !llvm<"{ f32*, f32*, i64, [2 x i64], [2 x i64] }*">,
    !llvm<"{ float*, float*, i64, [2 x i64], [2 x i64] }
*">) -> ()
  llvm.return
}
llvm.func @_mlir_ciface_pointwise_add(
  !llvm<"{ float*, float*, i64, [2 x i64], [2 x i64] }*">,
  !llvm<"{ f32*, f32*, i64, [2 x i64], [2 x i64] }*">,
  !llvm<"{ f32*, f32*, i64, [2 x i64], [2 x i64] }*">)
