%value_t = type {
	 i32,                                ; type of data
	 i64,                                ; integer
	 double,                             ; double
	 i1,                                 ; bool
	 i8                                  ; char
	 i8*,                                ; string
	 %value_t**,                         ; array/fenv
	 i64,                                ; array length
	 %value_t* (i32, %value_t**, ...)*,  ; function
}
