  switch i32 %load19, label %default [
    i32 1, label %caseN
    i32 4, label %caseN24
  ]

default:                                          ; preds = %entry
  %load21 = load i1* %boxptr10
  br label %switchcont

caseN:                                            ; preds = %entry
  %boxptr22 = getelementptr inbounds %value_t* %malloc_value8, i32 0, i32 1
  %load23 = load i64* %boxptr22
  %intbool = icmp eq i64 %load23, 0
  %. = select i1 %intbool, i1 false, i1 true
  br label %switchcont


then103:                                          ; preds = %ifcont98
  %boxptr104 = getelementptr inbounds %value_t* %malloc_value3, i32 0, i32 6
  %load105 = load double* %boxptr104
  br label %ifcont110
