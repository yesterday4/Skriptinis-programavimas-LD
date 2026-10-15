help farenh2cels
a = farenh2cels(-40)

%%
global x y

x = 2*pi:-0.1:-2*pi;
y = zeros(size(x));

a = length(x);
for i = 1:1:a
    if x(i)<0
        funk_1
    elseif x(i)>=0
        funk_2
    end
end

figure;
plot(x, y, 'k-.+');

%%
v = 2*pi:-0.1:-2*pi;
[a, b] = grafsincos(v, 1)
