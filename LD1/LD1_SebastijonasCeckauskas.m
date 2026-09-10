x = 1:32;
y = x.^2;

plot(x, y, 'o-r', x, y/3, 'xb')
title('Dvi funkcijos')
xlabel('X-ai')
ylabel('F_1 [-o-]   |   F_2 [-x-]')
%% 
help sin
doc title
docsearch plot
%%
N = 7;
v = N+1:0.5:N+4
v2 = linspace(N,N+8,9)
A = reshape(v2, [3,3])'
a = A(3,2)
b = A([2,3],[1,2])
c = A([1,3],[1,3])
v3 = v(1,[1:6])
B = reshape(v3, [2,3])
C = [A;B]


