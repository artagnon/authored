; ModuleID = 'vaargs.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: nounwind ssp uwtable
define i32 @vaargf(i32 %nr, ...) #0 {
  %1 = alloca i32, align 4
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %ret = alloca i32, align 4
  store i32 %nr, i32* %1, align 4
  %2 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %3 = bitcast %struct.__va_list_tag* %2 to i8*
  call void @llvm.va_start(i8* %3)
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %5 = getelementptr inbounds %struct.__va_list_tag* %4, i32 0, i32 0
  %6 = load i32* %5
  %7 = icmp ule i32 %6, 40
  br i1 %7, label %8, label %14

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %struct.__va_list_tag* %4, i32 0, i32 3
  %10 = load i8** %9
  %11 = getelementptr i8* %10, i32 %6
  %12 = bitcast i8* %11 to i32*
  %13 = add i32 %6, 8
  store i32 %13, i32* %5
  br label %19

; <label>:14                                      ; preds = %0
  %15 = getelementptr inbounds %struct.__va_list_tag* %4, i32 0, i32 2
  %16 = load i8** %15
  %17 = bitcast i8* %16 to i32*
  %18 = getelementptr i8* %16, i32 8
  store i8* %18, i8** %15
  br label %19

; <label>:19                                      ; preds = %14, %8
  %20 = phi i32* [ %12, %8 ], [ %17, %14 ]
  %21 = load i32* %20
  store i32 %21, i32* %ret, align 4
  %22 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %23 = bitcast %struct.__va_list_tag* %22 to i8*
  call void @llvm.va_end(i8* %23)
  %24 = load i32* %ret, align 4
  ret i32 %24
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #1

attributes #0 = { nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Apple LLVM version 6.0 (clang-600.0.51) (based on LLVM 3.5svn)"}
