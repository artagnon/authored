@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

define i32 @main() {
  %1 = call i32 @add(i32 3, i32 4)
  %2 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str, i32 0, i32 0), i32 %1)
  ret i32 0
}

declare i32 @printf(i8*, ...)
