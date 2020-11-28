function[hx]=h(x)
% Condiciones para que un pol�gono de n v�rtices tenga di�metro menor o
% igual a 1.
% Entradas:
% x.- un vector de coordenadas polares de la forma
% (r1,...,rn,theta1,...,thetan) con ri la magnitud de i-�simo punto y
% thetai su �ngulo. El primer punto es el (0,0).
% Salidas
% hx.- el valor de las restricciones en el punto

% Numero de puntos
n=(1/2)*length(x);

% Distancia con respecto al (0,0)
hx=x(1:n);

% Calculamos la distancia entre puntos vi y vj con i<>j
% dij<=1
for i=1:n-1
    ri=x(i);
    angi=x(n+i);
    for j=i+1:n
        rj=x(j);
        angj=x(n+j);
        d=distanciaP(ri, angi, rj, angj);
        hx=[hx; 1-d];
        hx=[hx; d-0.4];
    end
end

% Restricci�n sobre los radios 0<=ri<=1
hx=[hx; x(1:n); 1-x(1:n)];

% Restricci�n sobre los �ngulos 0<=thetai<=pi
hx=[hx; x(n+1:2*n); pi-x(n+1:2*n)];

% �ngulos crecientes thetai<=thethai+1
for k=1:n
    hx=[hx; x(n+k+1)-x(n+k)];
end

end

    

