figure();
cells_in_culture = @(t,N) (log(2) / 30) * N; % enter your expression for dN/dt here
% the above is an "anonymous" function where t is for time, N is for the concentration.
% Hint: MATLAB does not call its natural logarithm function "ln"

tspan = 0:5:120; % define the appropriate row vector here
hold on; % this lets us plot three traces on the same plot
[ T_1, N_1 ] = ode23s(cells_in_culture, tspan, 1);
plot(T_1, N_1, 'b:o');
[ T_2,N_2 ] = ode23s(cells_in_culture, tspan, 2);
plot(T_2,N_2, 'g:*');
[ T_10,N_10 ] = ode23s(cells_in_culture, tspan, 10);
plot(T_10,N_10, 'r-*');
xlabel('Time (minutes)');
ylabel('Cells per unit volume');
% enter your code here to plot all three traces

% make sure to label your axes!
