  switch i32 %load19, label %default [
    i32 1, label %caseN
    i32 4, label %caseN24
  ]

default:                               ; preds = %entry
  %load21 = load i1* %boxptr10
  br label %switchcont

caseN:                                 ; preds = %entry
  %boxptr22 = getelementptr inbounds %value_t* %malloc_value8, i32 0, i32 1
  %load23 = load i64* %boxptr22
