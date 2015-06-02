function Y1 = simple_loop 
    X1 = 1:1000; 
    Y1 = zeros(1, 100); 
    for i = 1:100 
        Y1(i) = X1(i); 
    end 
end
