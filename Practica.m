
%Problema 1 - Sección 1.11

%1.11-1
f= @(t) exp(-t).*cos(2*pi*t);
t = 0;
f(t)
f(0)
t = (-2:2);
f(t)
plot(t,f(t));
xlabel('t');
ylabel('f(t)');
grid;
t=(-2:0.01:2);
plot(t,f(t));
xlabel('t');
ylabel('f(t)');
grid;

%1.11-2

u=@(t) 1.0.*(t>=0);
t=(-2:2); 
plot(t,u(t));
xlabel('t');
ylabel('u(t)');
t=(-2:0.01:2);
plot(t,u(t));
xlabel('t');
ylabel('u(t)');
axis([-2 2 -0.1 1.1]);
p=@(t) 1.0.*((t>=0)&(t<1));
t = (-1:0.01:2);
plot(t,p(t));
xlabel('t');
ylabel('p(t) = u(t)-u(t-1)');
axis([-1 2 -0.1 1.1]);
p=@(t) u(t)-u(t-1);
t=(-1:0.01:2);
plot(t,p(t));
xlabel('t');
ylabel('p(t) = u(t)-u(t-1)');
axis([-1 2 -0.1 1.1]);

%1.11-3

g=@(t) f(t).*u(t);
t=(-2:0.01:2);
plot(t,g(2*t+1));
xlabel('t');
ylabel('g(2t+1)');
grid;
plot(t,g(-t+1));
xlabel('t');
ylabel('g(-t+1)');
grid;
plot(t,g(2*t+1)+g(-t+1));
xlabel('t');
ylabel('h(t)');
grid;

%1.11-4

x = @(t) exp(-t).*((t>=0)&(t<1));
t = (0:0.01:1);
E_x = sum(x(t).*x(t)*0.01)
x_squared = @(t) x(t).*x(t);
E_x = quad(x_squared,0,1)
g_squared = @(t) g(t).*g(t);
t = (0:0.001:100);
E_g = sum(g_squared(t)*0.001)
E_g = quad(g_squared,0,100)
h_squared=@(t) (g(2*t+1)+g(-t+1)).*(g(2*t+1)+g(-t+1));
E_h= quad(h_squared,-2,2)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Ejercicio 2
% *2.* Resuelve el problema 1.2-2 usando las herramientas del paso anterior.
% Primero definimos la funcion a trozos por medio de la funcion heaviside()

t = [-10:0.001:10];
x = @(t) -t.*(heaviside(t+4).*heaviside(-t))+t.*(heaviside(t).*heaviside(-t+2));
plot(t,x(t));
xlabel('t'); ylabel('x(t)'); 
grid;
axis([-8 8 -1 5]);
%% 
% Ya definida la funcion, simplemente la evaluamos en las diferentes transformaciones
%% Transformacion a)

plot(t,x(t-4));
xlabel('t'); ylabel('x(t-4)'); 
grid;
axis([-8 8 -1 5]);
%% Transformacion b)

plot(t,x(t/1.5));
xlabel('t'); ylabel('x(t/1.5)'); 
grid;
axis([-8 8 -1 5]);
%% Transformacion c)

plot(t,x(-t));
xlabel('t'); ylabel('x(-t)'); 
grid;
axis([-8 8 -1 5]);
%% Transformacion d)

plot(t,x(2*t-4));
xlabel('t'); ylabel('x(2*t-4)'); 
grid;
axis([-8 8 -1 5]);
%% Transformacion e)

plot(t,x(2-t));
xlabel('t'); ylabel('x(2-t)'); 
grid;
axis([-8 8 -1 5]);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


size(t1)
size(t2)

t1.*t1;

%%help sinc

%%sinc(t1)

f = @(t) exp(-t).*t+exp(-t).*cos(2*t);
u = @(t) t>=0;
p = @(t) (t>=0) & (t<1);

%plot([1,3],[5,-4])

%figure
%plot(t1,sinc(t1))

figure
plot(t2,sinc(t2))
