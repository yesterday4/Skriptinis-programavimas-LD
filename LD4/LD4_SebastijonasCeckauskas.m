clear
close all
theta = linspace(0, 2*pi);
r = linspace(0, 1);
[Theta, R] = meshgrid(theta, r);
[X, Y] = pol2cart(Theta, R);
Z = 1 - 2.*X.^2 - 3.*Y.^2;
figure
surf(X, Y, Z)
colormap default
shading flat
view(50,50)
title("Graf_1")
xlabel("X")
ylabel("Y")
zlabel("Z")
%%
clear
close all
x = (2*rand(1,200)-1).*sqrt(pi/2);
y = (2*rand(1,200)-1).*sqrt(pi/2);
[X, Y] = meshgrid(x, y);
Z = sin((X.^2) + (Y.^2));
figure
surf (X, Y, Z)
colormap default
shading flat
view(30,30)
title("Graf_2")
xlabel("X")
ylabel("Y")
zlabel("Z")
%%
clear
close all
x = -5:0.1:5;
y = -5:0.1:5;
[X, Y] = meshgrid(x, y);
Z = 1 - (X.^2 + Y.^2);
figure

ax1 = subplot(3, 1, 1);
cmap = [0 0 1; 1 1 0; 1 0 0];
surf (X, Y, Z)
colormap(ax1, cmap)
shading flat
title("Graf_1")
xlabel("X")
ylabel("Y")
zlabel("Z")

ax2 = subplot(3, 1, 2);
cmap2 = [0 1 0; 0 1 1; 1 0 1];
surf (X, Y, Z)
colormap(ax2, cmap2)
shading faceted
title("Graf_2")
xlabel("X")
ylabel("Y")
zlabel("Z")

ax3 = subplot(3, 1, 3);
surf (X, Y, Z)
colormap(ax3, "default")
shading interp
title("Graf_3")
xlabel("X")
ylabel("Y")
zlabel("Z")