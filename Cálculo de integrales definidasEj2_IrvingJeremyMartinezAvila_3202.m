% Titulo: Cálculo de integrales definidas
% Autor: Irving Jeremy Martinez Avila 
% Fecha: Jueves 3 de junio del 2021

%Limpia la pantalla y las variables
clc, clear  

%Paquete Symbolic
pkg load symbolic
syms t; 
TFC=1.197*t.^2+58.68 ;
int(TFC)
ans = (sym)
a= 0;
b= 7;
%Velocidad pies sobre segundo.
operacion=(2*7.^3)-(2*0.^3);
%Valor de la operacion.
fprintf('Velocidad distancia sobre tiempo es:%2.1f\n',operacion)
%Distancia que recorre el auto mientras se estaba frenando en pies sobre segundo 
v2=6.71;
v1=58.67;
t=7;
%Se cambian las letras por numeros 
dr=(v1+v2/2)*t;
conversion=dr*0.3048000;
fprintf('La distanca que recorrio al frenar es:%2.1f\n',conversion)
%Numero de intervalos y rectangulos 
a = 0;
b = 7;
n = 50;
%Longitud de la base.
base = (b-a)/n;
%Funcion definida.
x =a:base:(b-base);
%Altura
altura=(57.473*x.^2);
%Valor de cada uno de los rectangulos.
area = base*altura;
x2 = linspace(0,7,50);
y2 = (57.473*x.^2);
%Fin e inicio de los intervalos.
xa = linspace(0,7,50);
yab = (57.473*x.^2);
g = bar(xa,yab,'histc');
hold on
%Grafica la funcion
plot(x2,y2);
%Titulo de la grafica. 
title("Ejercicio Numero 2");
axis tight
