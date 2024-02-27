% Condiciones iniciales
x0 = [0; 0]; % [Q(0); I(0)]
% Resolver las ecuaciones diferenciales
[t,x] = ode45(@one, [0 0.0005], x0);
% Calcular el voltaje del capacitor
C = 0.1e-6; % Capacitancia (F)
Vc = x(:,1)/C;

figure(1)
plot(t,x(:,1),'LineWidth',1);
grid on
title("Posición de theta 1");
xlabel("Tiempo");
ylabel("Radianes");
%Figura 2
figure(2)
plot(t,x(:,2),'LineWidth',1);
grid on
title("Posición de theta 2");
xlabel("Tiempo");
ylabel("Radianes");

hold on