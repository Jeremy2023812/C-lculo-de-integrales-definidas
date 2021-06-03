% Titulo: Cálculo de integrales definidas
% Autor: Irving Jeremy Martinez Avila 
% Fecha: Jueves 03 de junio del 2021
%Limpia la pantalla y las variables.
clc, clear  
%Paquete Symbolic
pkg load symbolic

syms t;
TFC=1.197*t.^2+58.68 ;
int(TFC)
ans = (sym)

%Se aplica la ley de los exponentes (57.473t^3/3)
%La respuesta de la operacion no ha sido asignado a ninguna variable y por defecto es ans
a= 0;
b= 7;
%Operacion es igual a la velocidad(pies/seg) 
operacion=(2*7.^3)-(2*0.^3);

%Imprime el valor de la operacion
fprintf('El valor de la velocidad (distancia/tiempo) al utilizar el T.F.C. es:%2.1f\n',operacion)

%Aplicamos el Movimiento Rectilineo Uniforme Desacelerado 
%La formula para la distancia recorrida=(v1+v2/2)*t
%Los valores de las variables
v2=6.71;
v1=58.67;
t=7;
%Sutituimos letras por numeros
dr=(v1+v2/2)*t;
%Converción de pies a metros
conversion=dr*0.3048000;
fprintf('Distancia que rrecorre el vehiculo (en mts) mientras el coductor estaba frenando, es:%2.1f\n',conversion)

%Define los intervalos y el numero de rectangulos.
a = 0;
b = 7;
n = 100;

%Determina la longitud de la base de x.
base = (b-a)/n;

%Definicion de la funcion.
x =a:base:(b-base);

%Representa la altura
altura=(57.473*x.^2);

%Calcula el valor de cada uno de los rectangulos.
area = base*altura;

%Establece    la    linea   que   forma  la funcion
x2 = linspace(0,7,100);
y2 = (57.473*x.^2);

%Inicio del  intervalo, fin del intervalo, numero de rectangulos.
xa = linspace(0,7,100);
yab = (57.473*x.^2);

%Dibuja una  grafica de barras sin espacios
g = bar(xa,yab,'histc');

%Permite continuar  graficando
hold on

%Grafica la funcion
plot(x2,y2);

%Asigna un nombre a la grafica 
title(Ejericicio 2: );

%Etiquetas de x,y
xlabel('Tiempo en (segundos)') 
ylabel('Velocidad en (metros)')

%Ajusta la grafica a los datos.
axis tight
