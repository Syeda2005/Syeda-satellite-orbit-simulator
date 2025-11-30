function plot_orbit(x, y)
figure;
plot(x, y, 'LineWidth', 2);
hold on;
theta = linspace(0, 2*pi, 500);
Re = 6371e3;
plot(Re*cos(theta), Re*sin(theta), 'b');
axis equal;
grid on;
xlabel('x (m)');
ylabel('y (m)');
title('Satellite Orbit Simulation');
end
