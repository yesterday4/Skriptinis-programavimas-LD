clear
info = {"Petras"; '1998-05-08'; '060950678'; [8, 9, 8, 9; 7, 8, 9, 8]};
info2 = {"Jonas"; '1999-07-02'; '060979654'; [9, 8, 6, 7; 7, 6, 8, 4]};
info3 = [info; info2];
cellplot(info3)
%%
clear
a = 1;
m_old = NaN;
while a ~= 0
    m = input("Iveskite skaiciu: ");
    if m == m_old
        a = 0;
    end
    if m<0
        ats = m^2 + 1;
    elseif m == 0
        ats = (m + 1)/2;
    elseif m>0
        ats = m^2 - 1;
    end
    disp(ats)
    m_old = m;
end
%%
a = 20;
x = input("Iveskite pirma skaiciu: ");
y = input("Iveskite antra skaiciu: ");
for i = 1:a
    m = randi(x);
    n = randi(y);
    A = zeros(x, y);
    A(m,n) = NaN;
    disp(A)
    pause(0.5)
    clc
end
