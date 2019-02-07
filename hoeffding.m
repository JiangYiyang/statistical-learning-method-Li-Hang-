% hoeffding generation
num = 10;
ESN = 1*10 + 0.5*(1+10)*5;%37.5
SN_total = zeros(1,1000);

for j = 1:1000
    % % % % % % % % % % % % % % % % % one cycle % % % % % % % % % % % % % % % % 
    for i = 1:num
    % 变量X1-X9范围为[0.5*i,0.5*i+2]    
        eval(strcat('X',num2str(i),' = rand(1,1) * 2 + i * 0.5; '))
    end

    SN = 0;
    for i = 1:num
    % 变量X1-X9范围为[0.5*i,0.5*i+2]    
        eval(strcat('SN = SN + X',num2str(i)))
    end
    if mod(j,10) == 0
        fprintf('*');
    end
    
    SN_total(1,j) = SN;
end
hist(SN_total,20)
