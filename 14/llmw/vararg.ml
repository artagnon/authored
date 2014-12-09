let build_va_arg_x86 ap argtype =
  let el = build_alloca argtype "el" builder in
  let idxptr = build_gep ap (idx 0) "idxptr" builder in
  let idx0 = build_load idxptr "idx" builder in
  let magic_lim = const_int i32_type 40 in
  let elsptr = build_gep ap (idx 3) "elsptr" builder in
  let els = build_load elsptr "els" builder in
  let rawel = build_gep els [| idx0 |] "rawel" builder in
  let elptr = build_bitcast rawel (pointer_type argtype)  "elptr" builder in
  let newidx = build_add idx0 const_8 "newidx" builder in
  ignore (build_store newidx idxptr builder);
  let newval = build_load elptr "newval" builder in
  ignore (build_store newval el builder);
  build_load el "ret" builder

