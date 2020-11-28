function [] = graficaPoligono(V)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
plot(V(1,:), V(2,:), 'rd', 'Linewidth', 2)
hold on
[m, n] = size(V);

for k = 1:n
    if (k==n)
        k1 = 1;
    else
        k1 = k+1;
    end
    u = V(:,k); w = V(:,k1);
    t = linspace(0,1,20)';
    z = [];
    for j = 1:20
        z = [z u+t(j)*(w-u)];
    end
    plot(z(1,:), z(2,:), 'r', 'Linewidth', 3)
    hold on
end
end

