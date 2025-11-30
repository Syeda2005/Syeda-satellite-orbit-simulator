% main.m - Satellite Orbit Simulation
mu = 3.986e14;

R = 6371e3 + 400e3;
v = sqrt(mu / R);

state0 = [R, 0, 0, v];
tspan = [0 6000];

[t, state] = ode45(@(t,s) two_body(t,s,mu), tspan, state0);

x = state(:,1);
y = state(:,2);

plot_orbit(x,y);
