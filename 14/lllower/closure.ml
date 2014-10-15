let codegen_splice_env llenv fname args body =
  Hashtbl.clear bound_names;
  Array.iter (fun n -> Hashtbl.add bound_names n) args;
  let env_vars = extractl_env_vars body in
  List.iteri (fun i n ->
              let elptr = build_in_bounds_gep
                            llenv (idx i) "ptr" in
              let el = build_load elptr "el" builder in
              Hashtbl.add named_values n el;
             ) env_vars;
  Hashtbl.add function_envs fname env_vars
