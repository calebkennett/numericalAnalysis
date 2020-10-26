function c = secant(x0, x1, delta)
%% 	
%% secant.m
%% 
%% Implements Secant's method
%%
%% Input: 	x0, x1	two points for the initial secant line
%%          delta	the tolerance/accuracy we desire
%%                      (Code runs until |f(c)| <= delta.)
%% 
%% Output:	c 	the approxmiation to the root of f
%% 
%% Syntax:	secant(x0, x1, delta)
%%
format long e
% 
% 
 fc0 = f(x1);                   
% 
% 
 c = x1 - (fc0 / fslope(x0,x1)); 
% 
 fc = f(c);% sep18
% 
fprintf('initial guess:  c=%d, fc=%d\n',c,fc)
if abs(x1-x0) <= delta             %% check to see if initial guess satisfies
  return;                       %% convergence criterion.
end;
% 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                                                                       %%
%% main routine                                                          %%
%%                                                                       %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

while abs(x1-x0) > delta,% sep18
  fslope_c = fslope(x0,x1);        

  if fslope_c==0,                    %% if fslope is 0, abort.
    error('fslope is 0')        %% the error function prints message and exits
  end;

  x2 = x1 - f(x1)/fslope_c;               %% Secant step
  

  x0 = x1;
  x1 = x2;
  
  fprintf('   c=%d, fc=%d\n', x1,f(x1));
  
end;
%%
%% put subroutines here
%%
%%
function fx = f(x)

	fx = (5-x)*exp(x) - 5;         %% Enter your function here.

    %fx = x^2 -3;
	return;
    
    
function fslopex = fslope(x0,x1)
 
    fslopex = (f(x1) - f(x0)) / ( x1 - x0 );

	return;

    
    
    
    
    
    
    
    
    
    
    
    