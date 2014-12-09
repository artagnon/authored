define %value_t* @0() {
entry:
  %value = call i8* @malloc(i64 ptrtoint (%value_t* getelementptr (%value_t* null, i32 1) to i64))
  %malloc_value = bitcast i8* %value to %value_t*
