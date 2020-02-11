function y=banana(x)
  y = 100*(x(2)-x(1)^2)^2 + (1-x(1))^2;
endfunction
opt = optimset ( "TolX" , 1.e-2 );
[x , fval , exitflag , output] = fminsearch ( banana , [-1.2 1] , opt )