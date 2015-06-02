for.cond:                     ; preds = %for.inc, %entry
  %0 = load i32* %i, align 4
  %cmp = icmp slt i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                     ; preds = %for.cond
  %1 = load i32* %i, align 4
  %add = add nsw i32 %1, 1
  %conv = sitofp i32 %add to double
  %2 = load i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load double** %Y1.addr, align 8
  %arrayidx = getelementptr inbounds double* %3, i64 %idxprom
  store double %conv, double* %arrayidx, align 8
  br label %for.inc
