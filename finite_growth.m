figure()
K=300;
cells_in_culture = @(t, N) (log(2)/30)*N*(1-(N/K)); % what is dN/dt?

% the code to produce datas from ode
tspan = 0:5:600; 
hold on;
N_1=1;
N_10=10;
N_300=300;
N_400=400;
[T_1,N_1]=ode45(cells_in_culture,tspan,N_1);
[T_10,N_10]=ode45(cells_in_culture,tspan,N_10);
[T_300,N_300]=ode45(cells_in_culture,tspan,N_300);
[T_400,N_400]=ode45(cells_in_culture,tspan,N_400);
% the code to produce 4 plots in the same graph here
plot(T_1,N_1,'b:o');
plot(T_10,N_10,'r-*');
plot(T_300,N_300,'g:o');
plot(T_300,N_300,'y-*')
% label the axes
xlabel('time(minutes)');
ylabel('cells per unit volume');

