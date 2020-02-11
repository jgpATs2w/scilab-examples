//**************************************************************************
//FUNCIONES CON SCILAB.
//FUNCIONES INCORPARADAS EN SCILAB.
//Pongamos algunas; para ver su sintaxis
//utilizamos help o apropos
//**************************************************************************
//abs, acos, acosh, acoshm, acosm, addf, adj2sp, amell, and,
//asinh, asinhm, asinm, atan, atanh, atanhm, atanm, besseli,
//besselj, besselk, bessely, binomial, bloc2exp, bloc2ss, calerf,
//ceil, cmb_lin, conj, cos, cosh, coshm, cosm, cotg, coth, cothm,
//cumprod, cumsum, delip, diag, dlgamma, double, erf, erfc,
//erfcx, eval, eye, fix, floor, frexp, full, gamma, gammaln,
//gsort, imag, int, int16, int32, int8, integrate, interp,
//interpln, intersect, intsplin, inttrap, isdef, isinf, isnan,
//isreal, kron, ldivf, lex_sort, linspace, log, log10, log2,
//logm, logspace, max, maxi, mean, median, min, mini, minus,
//modulo, mps2linpro, mtlb_sparse, mulf, nnz, norm, not, ones,
//or, pen2ea, pertrans, pmodulo, prod, rand, rat, rdivf, real,
//round, sign, signm, sin, sinh, sinhm, sinm, size, smooth,
//solve, sort, sp2adj, sparse, spcompack, speye, spget, splin,
//spones, sprand, spzeros, sqrt, sqrtm, squarewave, ssprint,
//ssrand, st_deviation, subf, sum, sysconv, sysdiag, syslin, tan,
//tanh, tanhm, tanm, toeplitz, trfmod, trianfml, tril, trisolve,
//triu, typeof, uint16, uint32, uint8, union, unique, zeros.

//*************************************************************
//FUNCIONES BÁSICAS
//sin(x);cos(x);tan(x);cot(x);asin(x);acos(x);atan(x),acot(x)
//***************************************************************

//*************************************************************
//TRIGONOMETRICAS
//sin(x);cos(x);tan(x);cot(x);asin(x);acos(x);atan(x),acot(x)
//sind(x);cosd(x);tand(x);atand(x),etc
//***************************************************************
y=tan(2) //ten en cuenta que 2 está en radianes
y=tan(%pi/4)
sin(%pi),cos(%pi),tan(%pi)
z=[sin(%pi/3),cos(%pi/3),tan(%pi/3)]
z1=[sind(30),cosd(30),tand(30)]
t=[asin(0.5),acos(0.5),atan(0.5)]
t1=[asind(0.5),acosd(0.5),atand(0.5)]
//************************************************************
//COMPLEJOS CON SCILAB
//************************************************************
z1= 4-3*%i,
z2=3+4*%i,
[real(z1),imag(z1),conj(z1),abs(z1)]
z1*z2,
z1/z2
//*************************************************************
//POLINOMIOS
//definir a partir de coeficientes o raíces
//*************************************************************
polinomio1=poly([6,-7,0,1],'x','c')// Def polinomio por coeficientes (grado creciente)
raicespolinomio1=roots(polinomio1)// Calcular raíces de un polinomio
polinomio2=poly([1,2,-3],'x','r')// Def polinomio conociendo sus raices
raicespolinomio2=roots(polinomio2)
polinomio3=polinomio1*polinomio2
coeficientes=coeff(polinomio3)
polinomio3
horner(polinomio3,0) //valor numérico de un polinomio, función horner
horner(polinomio1,z1)
horner(polinomio1,polinomio2)//ampliación función horner
//********************************************************
//COMANDOS Y OTRAS FUNCIONES
//*********************************************************
// comandos help o apropos; clear, clc; pwd, quit
help format
apropos complex
//*********************************************************
// listar variables actuales
//***********************************************************
who
whos
//***********************************************************
//FUNCIONES DE ENTRADA SALIDA
//***************************************
//asignar entrada por consola a variable
x=input("cómo te llamas ","string"),
Cadena=input("introducir una cadena ","string"),
//muestra por pantalla
disp(x)
//escribe variable Cadena en fichero1
print('fichero1',Cadena)
//**************************************
//eliminar variables
//**************************************
//clear variable;
x=12; y=3;
x,y
clear y
x,y

//*****************************************
//OTRAS FUNCIONES
//*****************************************
clear;clc;

v=3:1.5:10 //vector formado por elementos inicio:incremento:final

w=linspace(1,10,5) //linspace(inicio, final, numero valores). Vector de 
// n valores equiespaciados entre inicio y final, inclusives.

//ndgrid y meshgrid
x=[11,12,13,14];//vector o matriz de tipo (4,1)
y=[4,5];//vector de tipo (2,1)
[X,Y]=meshgrid(x,y)//X e Y matrices de 2 x 4; se repite 2 veces el vector x
// se repite 4 veces el vector y' (4 columnas)

[A,B]=ndgrid(x,y)//A y B matrices de 4 x 2; se repite 2 veces el vector x'
// se repite 4 veces el vector y

// Valor absoluto t=abs(x), si x es complejo se obtiene el módulo
abs([5,5*%i,-5,-5*%i,3+4*%i])

int([1.3 1.5 1.7 2.5 3.7])//parte entera y=int(X)
int([-1.3 -1.5 -1.7 -2.5 -3.7])

//Redonder al entero más cercano y=round(x)
round([1.3 1.5 1.7 2.5 3.7])
round([-1.3 -1.5 -1.7 -2.5 -3.7])

//Exponencial, Logarílogtmica y=exp(X)
x=[1,2,3,10];
log(x),log10(x)
2^x
2^x'
exp(x)

//máximo y mínimo y=max(x) y=min(x)
max(x)
min(x)

//factorizar factor(x)
factor (48)
clear
clc

//********************************************************
//FUNCIONES CREADAS POR EL USUARIO
//Sintaxis 1:
//function [<salida1>,...]=<mi-funcion>(<entrada1>,...),
// <instrucciones>
// endfunction 
//Sintaxis 2:
//deff('[artumentos salida]=nombrefuncion(argumento entrada)',
//'instrucciones de la función') 
//********************************************************
// f1:RxR--->R
//********************************************************
function  [y1]=fun1(a,b), y1=a*b-5,endfunction
valor1=fun1(2,3);
disp(salida);
function [y2]=fun2(x), y2=2*x+1, endfunction
valor2=fun2(3)
disp(valor2)
//********************************************************
// f1:RxR--->RxR
//********************************************************
function [s1,s2]=fun3(a,b),
     //las variables a, b son locales.
     s1=a+b,
     s2=a-b,
endfunction
[s1,s2]=fun3(0,3)
disp(s1,s2)
clear
//********************************************************
// Otra sintaxis para definir las mismas funciones
//********************************************************
deff('[y1]=fun1(a,b)','y1=a*b-5')
y1=fun1(2,3)
disp(y1)

deff('[y2]=fun2(x)','y2=2*x+1')
y2=fun2(3)
disp(y2)

deff('[s1,s2]=fun4(a,b)','s1=a+b,s2=a-b')
[s1,s2]=fun4(0,3)
disp(s1,s2)
clear
clc
//*******************************************************
//GRAFICOS CON SCILAB
//Es conveniente selecciones renglón a renglón
//y copies con <contro>+c después con
// <contro>+p pegues en la consolla de scilab
// y con intro ves el resultado.
//*******************************************************
//funcion plot()
//Para realizar un gráfico con Scilab se utiliza el comando
//plot que tiene la siguiente sintaxis plot(x,y) siendo
//x es el vector que contiene los valores de x
//y es el valor de la funcion para los valores de x
// el vector x ha de estar concorde con el vector y
//si x en filas y en filas, si x columnas y columnas
//*********************************************************
//EJEMPLOS
//********************************************************
// Dibujar la poligonal 
//(1,1);(2,3);(3,2);(4,7);(5,2);(6,3)
//observa que por defecto x=1,2,3...
y=[1 3 2 7 2 3],plot(y)
//cierra el gráfico anterior
clf()
//********************************************************
//Dibujar la poligonal
//(1,-1);(3,3);(5,5);(6,4);(9,0)
x=[1,3,5,6,9],y=[-1,3,5,4,0],plot(x,y);
clf // borra el gráfico anterior
x=[-1,3,5,6,9]',y=[4,0,1,4,0]',plot(x,y)
clf
//*****************************************************
//EJEMPLO LINSPACE E INICIO:INCREMENTO:FINAL
//linspace(inicio, fin, valores)
//Observa la expresión  6:2:14 -->  6,8,10,12,14
//[6:2:14]; [6:2:14]'
//******************************************************
x=[6:2:15], y=2+x, plot(x,y)
clf,

x=6:2:15, y=2+x, plot(x',y')
clf,
//******************************************************
x=linspace(2,15,10), y=2+x, plot(x,y)
clf,
//******************************************************
x=linspace(-3,3,10), y=x.^2+1, plot(x,y)
clf,
//******************************************************
//Representar una circunferencia
//******************************************************
clf
t=[0:0.1:2*%pi];
x=cos(t);y=sin(t);plot(x,y)

//******************************************************
//representemos la función seno y mostrar rejilla

//*****************************************************
clf
x=0:0.01*%pi:2*%pi;y=sin(x); plot(x,y);xgrid

//*****************************************************
//dibujar gráfico y poner títulos
//xtitle(título,[x_label,[y_label,[z_label],<opts_args>)
//*******************************************************
clf
t=0:1:10; // valores del del tiempo
x=2*t; // movimiento en eje x
y=2*t-5*t^2; // movimiento en eje y
plot(x,y) // graficar
xgrid // poner rejilla
xtitle('GRAFICA PARÁBOLA','Distancia x','Distancia y')

//ALTERNATIVA A xtitle
//xlabel('Distancia x')
//ylabel('Distancia y')
//legend('GRAFICA PARÁBOLA')

//**************************************************
//multiple gráficos, espacio entre distintos gráficos
// Las funciones a reprsentar han de estar en columna
//
//******************************************************
clf
x=[0:0.1:2*%pi]';
plot(x,[sin(x) sin(2*x) sin(3*x)])
xtitle('varios gráficos','x','y')
legend('sin(x)','sin(2*x)','sin(3*x)',3);

//*****************************************************
//GRÁFICOS 3D
// FUNCIÓN plot3d (x,y,z)
//x:x1,..xm,; y=y1,...yn; z11....zmn (matriz mxn)
//ejemplo simple
//grafica (x,y,x*y)
//*****************************************************
clf
x=[1 2 3]',
y=[3,4,5],
z=x*y,
plot3d(x,y,z)
//******************************************************
//Por ejemplo para grafica la función z = sin(x)*cos(x)
//grafica (t,t,sin(t))
//******************************************************
clf
t=[0:0.2:2*%pi]';
z=sin(t)*cos(t');
plot3d(t,t,z)

//******************************************************
//función [a,b]=ndgrid(vector1,vector2)
//construye dos matrices de igual tamaño
//repite el vector1' la dimensión de vector2-->a matriz
//repite el vector2 la dimensión de vector1-->b matriz
//*****************************************************
x=[1,2,10]
y=[3,4,5,-1]
[a,b]=ndgrid(x,y)
//******************************************************
//ejemplo simple
//grafica (x,y,x*y)
//******************************************************
clf
x=[1 2 3];
y=[3,4,5];
[xm,ym]=ndgrid(x,y),
z=xm.*ym
plot3d(x,y,z)

//******************************************************
//grafica z=(x+y)^2
//observa la dificultad para conseguir z
//******************************************************
clf
x=[-2:0.1:2];
y=[-2:0.1:2];
[xm,ym]=ndgrid(x,y);
z=(xm+ym).^2;
plot3d(x,y,z)

//******************************************************
//grafica z=x^2+y^2
//******************************************************
clf
x=[-2:0.1:2];
y=[-2:0.1:2];
[xm,ym]=ndgrid(x,y);
z=xm.^2+ym.^2;
plot3d(x,y,z)

//*****************************************************
//gráficas con fplot3d
//fplot3d(vector1,vector2,f,[theta,alpha,leg,flag,ebox])
//theta, alpha =ángulo de observción en esféricas
//leg =etiquetar ejes
//flag=[mode,type, box]
//ebox=Especifica los límites de la gráfica [xmin, xmax, ymin, ymax, zmin, zmax].
//*****************************************************
//
clf
deff('z=fun(x,y)','z=x^2+y^2')
x=-2:0.1:2;  y=x ;
fplot3d(x,y,fun)
//*******************************************************
x=-2:0.1:2 ;y=x ;
clf
deff('z=f(x,y)','z=(x+y)^2')
x=-2:0.1:2 ;y=x ;
fplot3d(x,y,f,alpha=45,theta=45,leg='X@Y@Z')

clf
deff('z=f(x,y)','z=x^2+y^2')
x=[-2:0.1:2];y=x;
fplot3d(x,y,f,alpha=45,theta=45)



//*****************************************************
//CURVAS DE NIVEL
//contour(vector1,vector2,f,ncurvas)
//*****************************************************
clf
x=[-2:0.1:2];
y=[-2:0.1:2];
[xm,ym]=ndgrid(x,y);
z=xm.^2+ym.^2;
contour(x,y,z,10)
