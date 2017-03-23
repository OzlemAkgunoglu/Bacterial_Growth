figure();
K=300;
cells_in_culture = @(t, N) (log(2)/30)*N*(1-(N/K)); % what is dN/dt?

% the code to produce datas from ode
% the code to produce 4 plots in the same graph here
tspan = 0:5:600; 
hold on;
N_1=1;
N_10=10;
N_300=300;
N_400=400;
[T_1,N_1]=ode45(cells_in_culture,tspan,N_1);
plot(T_1,N_1,'b:o');
[T_10,N_10]=ode45(cells_in_culture,tspan,N_10);
plot(T_10,N_10,'r-*');
[T_300,N_300]=ode45(cells_in_culture,tspan,N_300);
plot(T_300,N_300,'g:o');
[T_400,N_400]=ode45(cells_in_culture,tspan,N_400);
plot(T_400,N_400,'y-*');


% label the axes
xlabel('time(minutes)');
ylabel('cells per unit volume');
