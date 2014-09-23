define %value_t* @0() {
entry:
  %value = call i8* @malloc(i64 ptrtoint (%value_t* getelementptr (%value_t* null, i32 1) to i64))
  %malloc_value = bitcast i8* %value to %value_t*
  %boxptr = getelementptr inbounds %value_t* %malloc_value, i32 0, i32 0
  %boxptr1 = getelementptr inbounds %value_t* %malloc_value, i32 0, i32 1
  store i32 1, i32* %boxptr
  store i64 2, i64* %boxptr1
