#map = affine_map<(i, j) -> (i, j)>

#attrs = {
  indexing_maps = [#map, #map, #map],
  iterator_types = ["parallel", "parallel"]
}

func.func @example(%A: memref<?x?xf32>, %B: memref<?x?xf32>,
                   %C: memref<?x?xf32>) {
  linalg.generic #attrs
  ins(%A, %B: memref<?x?xf32>, memref<?x?xf32>)
  outs(%C: memref<?x?xf32>) {
    ^bb0(%a: f32, %b: f32, %c: f32):
      %d = arith.addf %a, %b : f32
      linalg.yield %d : f32
  }
  return
}
