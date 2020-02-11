//**************************************************************
//ACTIVIDAD1
//Dado un número n, por ejemplo 5, obtener una matriz 
//cuadradaque represente las tablas de multiplicar de cualquier 
// número entre 1 y n.
//**************************************************************
n=input('introducir un número entre 1 y n: ')
x=1:1:n
resultado=x'*x
//*************************************************************
// Tabla que muestre operador *
//*************************************************************
tabla=cell(n+1,n+1)
tabla(1,1).entries='*';
for k=2:1:n+1
     tabla(1,k).entries=k-1;
end
for k=2:1:n+1
     tabla(k,1).entries=k-1;
end
tabla

for i=2:1:n+1
     for j=2:1:n+1
       tabla(i,j).entries=(i-1)*(j-1);   
     end
end
tabla
//***********************************************************
//ACTIVIDAD 2:
//***********************************************************
function [s1]=f(x,y)
    s1=cos(x^3+%e^(x-y))/(log(x^2*y));
    endfunction;
f(1,2)

/***************************************
//ACTIVIDAD 3.1: CIRCUNFERENCIA 
//**************************************
x1=linspace(-5,5,100);
x=x1';
y1=sqrt(25-x^2);
y2=-sqrt(25-x^2);
plot(x',[y1,y2])
//***************************************
//ACTIVIDAD 3.1: ESFERA. 
//se construye la matriz de puntos [x,y]
//**************************************
r=5; n=100; angulos=200;
radi=linspace(0,r,n);
alfa=linspace(0,2*%pi,angulos);
cosalfa=cos(alfa);
sinalfa=sin(alfa);
x=radi'*cosalfa;
y=radi'*sinalfa;
[x,y];
/* no funciona deff('z=f(x,y)','sqrt(r^2-x.^2-y.^2)')
z1=sqrt(r^2-x.^2-y.^2);
z2=-sqrt(r^2-x.^2-y.^2);
plot3d(x,y,z1),
plot3d(x,y,z2)

//****************************************
// Utilizando la función plot3d2
//****************************************
u = linspace(-%pi/2,%pi/2,40);
v = linspace(0,2*%pi,40);
X =5*cos(u)'*cos(v);
Y =5*cos(u)'*sin(v);
Z =5*sin(u)'*ones(v);
plot3d2(X,Y,Z);
plot3d3(X,Y,Z);



//*************************************************
//ACTIVIDAD 3
//*************************************************
// número aleatorio entre 1 y 100
// rand() número aleatorio en (0,1)
//round() redondeo
//ceil() redondeo por arriba
//floor() redondeo por abajo
//for contador sentencias; end;
//if expresión sentecias_1 else sentencias_2 end
//************************************************

b=ceil(100*rand())
n=10;
res=rand(1,n);
dados=ceil(6*res)
ncincos=0;
for i=1:1:10
    if dados(i)==5 ncincos=ncincos+1; end;
end
disp(ncincos)
suma=0
for i=1:1:n
    suma=suma+dados(i);
end
suma
media=suma/n
//*************************************
//ACTIVIDAD 5
//(V0(i(1+i)^n))/((1+i)^n-1)
//*************************************
V0=8000;
I=8.5/100;
i=I/12;
n=5*12;
c=V0*i*(1+i)^n/((1+i)^n-1);
disp(c)
//*********************************************************************
//ACTIVIDAD 6
//Se sabe que el campo eléctrico creado en un punto P(x,y) por dos cargas,
//q1 situada en (x1,y1) y q2 en (x2,y2) viene dado por la expresión:
//E =k(q1/|r1p|^2)u1p+k(q1/|r2P|^2)u2p
//Siendo r1p=rp-r1; u1p vector unitario en dirección y sentido r1p.
//r2p=rp-r2; u2p vector unitario en dirección y sentido r2p.
//K=9∙10^9 Nm^2/C^2
//Siendo q1 de 10 µC situada en (0,1)
//q2 de -30 µC situada en (2,0).
//Calcular el campo eléctrico en (1,1).
//*******************************************************************
k=9*10^9;
q1=10*10^(-6);
r1=[0,1];
q2=(-30)*10^(-6);
q3=(-20)*10^(-6);
r2=[2,0];
rp=[1,1];
r1p=rp-r1;
r2p=rp-r2;
function s=modul(vx,vy)
    s=sqrt(vx^2+vy^2);
endfunction;
function u1=ux(x,y)
    u1=x/sqrt(x^2+y^2);
    endfunction;
function u2=uy(x,y)
     u2=y/sqrt(x^2+y^2);
endfunction;

Ex=k*q1*ux(r1p(1),r1p(2))/(modul(r1p(1),r1p(2)))^2+...
k*q2*ux(r2p(1),r2p(2))/(modul(r2p(1),r2p(2)))^2;
Ey=k*q1*uy(r1p(1),r1p(2))/(modul(r1p(1),r1p(2)))^2+...
k*q2*uy(r2p(1),r2p(2))/(modul(r2p(1),r2p(2)))^2;
[Ex,Ey]
E=[Ex,Ey]
F=q3*E
x=representar(:,1)
y=representar(:,2)
fin=rp+F
horizontal=fin+[0.5,0]
vertical=fin+[0,-0.5]
representarh=[horizontal;rp+F]
representarv=[vertical;rp+F]
x1=representarh(:,1)
y1=representarh(:,2)
x2=representarv(:,1)
y2=representarv(:,2)
plot(x,y)
plot(x1,y1)
plot(x2,y2)
//***************************************************************
//ACTIVIDAD 7
//**********************************************************
//matriz datos
A=[0.6,0.1,0.3;0.2,0.55,0.25;0.1,0.15,0.75]
//Predicción metereológica a 3 días vista
//A^3
A3=A^3
// hoy llueve, predicción metereológica a 3 días
//fila 2 de A3
A3(2,:)
// Probabilidad de que haga sol dentro de 3 días,
//según esté el día hoy
//columna 3 de A3
A3(:,3)
//Hoy llueve, probabilidad sol dentro 3 días
//Elemento(2,3)
A3(2,3)
//Hoy hace sol, probabilidad sol dentro 3 días
//Elemento(3,3)
A3(3,3)
//Hoy está nublado, probabilidad sol dentro 3 días
//Elemento(1,3)
A3(1,3)
//Predicción para el sábado, hoy es lunes
A5=A^5
//Predicción para n días
//Asignamos desde el teclado el valor n
n=input("introduzca el valor de n dias:")
//Calculamos la predicción con A^n
prediccionAn=A^n
//Graficar la predicción
//x=1:1:n  es lo mismo que x=1:n
x=1:1:n
//Scilab admite A^x siendo x un vector,
//pero cuando A es una matriz, si x es vector, no adminte A^x
// en este caso habría que recurrir a una instruccion tipo for
//Hoy está nublado, probabilidad de sol en días sucesivos
y=A(1,3)
for s=2:1:n, B=A^s,y=[y,B(1,3)],end
plot(x,y)
//***************************************************************
//ACTIVIDAD 8
//***************************************************************
//Tres bancos (Banco1, banco 2 y banco 3) ofrecen
//tres productos financieros (P1, P2, P3) cada producto
//con una rentabilidad anual (valor unitario) que se indica abajo.
// Prod\Banc   B1      B2      B3
// P1      ! 0.06     0.04    0.05   !
// P2      ! 0.02     0.05    0.05   !
// P3      ! 0.03     0.02    0.01   !
//Si invertimos 1000 € en cada producto y cada banco
//¿Qué montante tendremos al cabo de 5 años de cada producto?
//*********************************************************************
//Definamos la matriz
I=[0.06,0.04,0.04;0.02,0.05,0.05;0.03,0.02,0.01]
//sumemos a cada elemento de la matriz 1
M1=1.+I
//Elevemos cada elemento de la matriz a 5
M5=M1.^5
//Calculemos el montante final de cada producto
M=1000*M5
// Si en lugar de invertir 1000 € se realizan cantidades diferentes
P=[1000,2000,3000;4000,5000,6000;7000,8000,9000]

//El montante final se obtendria multiplicando
//elemento a elemento P*M5
P.*M5
//************************************************************************
//ACTIVIDAD 9//
//Deseamos guardar información de alumnos, 
//domicilio de alumnos y nota que va obteniendo el alumno.
//Crea dos registros con los datos: 
//Juan Perez, 30 años, notas: 5,6,8,9.
//José García, 25 años, notas: 7,9,6,9
//Define una estructura de datos 
//para tratar de guardar información en forma de registros 
//muestra los registros y después añade una nota más (10) a José García.
//*********************************************************************
//definamos la estructura y los primeros datos
alumno=struct('nombre','Juan Pérez','edad',30,'notas','[5,6,8,9]')
alumno1=alumno
//Entremos nuevos datos a la estructura para alumno2
alumno.nombre='José García';
alumno.edad=25;
alumno.notas=[7,9,6,9];
alumno2=alumno
alumno.notas=[alumno.notas,10]
alumno2=alumno
valores=alumno2.notas
n=length(valores)
suma=sum(valores)
media=suma/n
//***********************************************************
//ACTIVIDAD 10
//***************************************************************
//Cierta magnitud I se amortigua en el plano según la siguiente
// ley I(x,y)=10*e^(0.2*(x^2+x^2)^(1/2))
//a)Dibuja un gráfico que refleje los valores
//de I en función de los puntos de la placa.
//b)Dibuja un gráfico de curvas de nivel que de la misma información del anterior.
//c)Dibuja un gráfico de densidad.
//**********************************************************************
//Definimos la función de cualquier de las dos siguientes formas.
//deff('[z]=f(x,y)', 'z=10*%e^(0.2*(x^2+x^2)^(1/2))')
//function z=f(x,y), z=10*%e^(0.2*(x^2+x^2)^(1/2)), endfunction
function z=f(x,y), z=10*%e^(-0.2*(x^2+y^2)^(1/2)); endfunction
//probemos la función.
f(2,1)
//Para representar la función necesitamos una matriz
//de valores (x,y) y los valores de la función en esa matriz
//Veamos alguna aclaracion antes de representar esta función
x=linspace(-10,10,100);
y=linspace(-10,10,100);
[xm,ym]=ndgrid(x,y);
z=10*%e^(-0.2*sqrt(xm.^2+ym.^2));
plot3d(xm,ym,z)
fplot3d(x,y,f)
//************************************************************
//Gráfico de contorno
//contour2d(x, y, z, nz, <opt_args>)
//***********************************************************
contour2d(x,y,z,20)
contour(x,y,z,20)
//************************************************************
//Gráfico de densidad
//************************************************************
grayplot(x,y,z)
//*************************************************************
x1=linspace(-2,1,100);
y1=1/(1+x1.^2);
plot(x1',y1)
x2=linspace(1,3,50);
y2=1-2.^x2;
plot(x2',y2)




//***********************************************************
//ACTIVIDAD 11
//***************************************************************
//Dado un triángulo de lados a, b, c dibujarlo. Calcular el valor 
//de sus ángulos. Repetir el problema si se conocen dos lados y 
//un ángulo o dos ángulos y un lado
//**************************************************************
triangulo=[6,8,12]
a=triangulo(1);b=triangulo(2);c=triangulo(3);
amasb=a+b
amasc=a+c
bmasc=b+c
condicion1=amasb>c
condicion2=amasc>b
condicion3=bmasc>a
condicion=condicion1&condicion2&condicion3
if condicion== %f then disp('no es posible dibujar el triangulo')
end
alfa=acos((b^2+c^2-a^2)/(2*b*c))
C=[b*cos(alfa),b*sin(alfa)]
A=[0,0];B=[c,0]
puntosAB=[A;B];xab=puntosAB(:,1);yab=puntosAB(:,2)
puntosAC=[A;C];xac=puntosAC(:,1);yac=puntosAC(:,2)
puntosBC=[B;C];xbc=puntosBC(:,1);ybc=puntosBC(:,2)
plot(xab',yab'),plot(xbc',ybc'),plot(xac',yac')
