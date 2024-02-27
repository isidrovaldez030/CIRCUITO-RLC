%Erik Sánchez 222834371
function dx=one(t,x)   
% Parámetros del circuito
R = 100; % Resistencia (ohms)
L = 6e-3; % Inductancia (H)
C = 0.1e-6; % Capacitancia (F)
V = 4.7; % Voltaje de entrada (V)

Q = x(1); %Carga del capacitor
I = x(2); %Corriente (dQ/dt)

% Definir la función de las ecuaciones diferenciales
dx=zeros(2,1);
dx(1:2)=[I; (V - R*I - Q/C)/L];x