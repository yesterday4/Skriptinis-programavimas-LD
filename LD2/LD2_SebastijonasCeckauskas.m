vektorius = 200:-10:10;
vektorius_2 = log10(vektorius);
vektorius_3 = 10 .^ vektorius_2;
vektorius_4 = vektorius_3 - vektorius
%%
A = [pi/2 3*1i exp(pi); log2(2) 2*pi log10(1); log(exp(1)) pi^pi cos(pi)];
A(1:3, 2) = rand(3, 1);
sum(A(1:3, 1))
sum(A(1:3, 2))
sum(A(1:3, 3))
%%
A = 4.5;
f = 6;
sigma = 1;
U_1 = 3;
U_2 = 1.5;
t = 0:0.001:1.5;
n = sigma * randn(size(t));
s = A * cos(2 * pi * f .* t) + n;

s_new = s;
s_new(s_new > U_1);

s_new2 = s;
s_new2(abs(s_new2) < U_2) = 0;

size(s);

size(s_new);

min(s_new2);
max(s_new2);
%%
prompt = "Iveskite vektoriu A turinti 10 elementu: ";
for a = 1:1:10
    A(1, a) = input(prompt);
end

fprintf("Vektorius B yra: ")
for a = 10:-1:6
    A(1, a)
end
for a = 1:1:5
    A(1, a)
end