a=12;
function x= x(vc,t)
    x=-1/2*a*t^2+vc*t+xc;
endfunction

//velocity=-a*t+vc=0 -> t=vc/a
formatos=["o+", "o-","-"];
i=1;
for vc = [50 75 100]
    t_frenado=vc/a;
    t=linspace(0,t_frenado, 100);
    plot(t,x(vc,t), formatos(1,i));
    i=i+1;
    printf("Para vc=%d, el tiempo de frenado es %.3f y la distancia recorrida %.3f\n", vc, t_frenado, x(vc,t_frenado));
end
xtitle("Distancia de frenado", "t", "-1/2*a*t^2+vc*t+xc");
legend("vc=50","vc=75","vc=100", 2);
