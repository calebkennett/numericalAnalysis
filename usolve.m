function x = usolve(U, y)

% the input U is an upper trianglar matrix
% in the form U*x = y 

% the solution returns x

n = length(y);              % Determine the size of the problem.


% using back substitution
for step = n: -1: 1            % Loop over equations (start from bottom)
        
    x(step) = y(step) / U(step,step);
    %    x(i) = y(i);           % solve for x(i) using previously computed x(j)
    
    % very important to divide by correct numbers (in diag)
    for row = step-1: -1: 1
        
    y(row) = y(row) - U(row,step)*x(step);
        
 %       x(j) = x(j) - U(j,i)*x(i);

    end
    
    
    
end

disp('x = ')


end