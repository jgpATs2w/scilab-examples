A=500;
c=0.2777;
v0=150;
precision=0.01;

x=linspace(-5000, 5000, 200);

function y= y(x)
  y = A * %e^-(c*x/v0) / (1+%e^-(c*x/v0));
endfunction

function x2=biseccion(f, a, b, niteraciones, precision)
    n=0,x0=a,x1=b
    while n<niteraciones & abs(x1-x0)>precision
        n=n+1
        x2=(x0+x1)/2
        x=x0
        f0=evstr(f)
        x=x2
        f2=evstr(f)
        if f2==0 then
            return
        elseif f2*f0<0 then
            x1=x2
        else
            x0=x2
        end
    end
endfunction

plot(x,y);
xc= biseccion('A * %e^-(c*x/v0) / (1+%e^-(c*x/v0))-10', 2000, 3000, 50, precision);

printf('Valor de x cuando y = 10: %3.3f +- %3.3f\n', xc, precision);
