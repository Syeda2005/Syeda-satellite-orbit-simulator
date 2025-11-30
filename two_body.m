function dsdt = two_body(t, s, mu)
x = s(1); y = s(2);
vx = s(3); vy = s(4);

r = sqrt(x^2 + y^2);

ax = -mu * x / r^3;
ay = -mu * y / r^3;

dsdt = [vx; vy; ax; ay];
end
