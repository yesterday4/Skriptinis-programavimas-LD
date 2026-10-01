t = linspace(-pi, pi, 50);
y = sin(t);
figure(1);
grid on
stem(y, "r")
xlabel("x")
ylabel("y")
grid on

x = linspace(-pi, pi, 50);
y_2 = -x.^2 + 9;
y_3 = x.^3 - 2.*x.^2 - 9;
figure(2);
plot(x, y_2, x, y_3)

axis([-pi pi min(y_3) max(y_2)])
legend('y_2', 'y_3')
xlabel("x")
ylabel("y")
grid on
%%
A = [10, 9, 8, 6; 10, 10, 8, 7; 2, 3, 2, 1; 9, 6, 4, 4; 4, 0, 7, 5;
    9, 6, 8, 6];

figure();
subplot(2, 1, 1);
bar(A)
title("Studentu pazymiai")
xlabel("studentas")
ylabel("pazymys")
legend('1', '2', '3', '4')

a = mean(A(1, [1:4]));
b = mean(A(2, [1:4]));
c = mean(A(3, [1:4]));
d = mean(A(4, [1:4]));

B = [a, b, c, d];
subplot(2, 1, 2);
stem(B)
title("Darbu vidurkiai")
xlabel("darbas")
ylabel("pazymys")
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
s_new = s_new(s_new > U_1);

s_new2 = s;
s_new2(abs(s_new2) < U_2) = 0;

u_1 = repelem(U_1, length(t));
u_2 = repelem(U_2, length(t));
figure();
subplot(2, 1, 1);
plot(t, s, "b-o", t, s_new2, "y", t, u_2)
hold on
plot(t, u_1, "g", "LineWidth", 1.5)
grid on
title("Grafikas nr. 1")
xlabel("x", "color", "b", "FontSize", 12)
ylabel("y", "color", "b", "FontSize", 12)

subplot(2, 1, 2);
stem(s_new)
hold on
[Max_y, idx_1] = max(s_new);
[Min_y, idx_2] = min(s_new);
Max_x = t(idx_1)
Min_x = t(idx_2)
plot(Max_x, Max_y, "r^", Min_x, Min_y, "m^")
grid on
title("Grafikas nr. 2")
xlabel("x", "color", "b", "FontSize", 12)
ylabel("y", "color", "b", "FontSize", 12)