function [w]=coordPolares(x)
% Transforma un conjunto en coordenadas cartesianas a coordenadas polares
% Entrada: 
% x.- matriz de dimensi�n nx2, n es el n�mero de puntos con formato (x,y).
% Salida:
% w.- un vector de coordenadas polares de la forma 
%(r1,...,rn,theta1,...,thetan) con ri la magnitud de i-�simo punto y
% thetai su �ngulo
    n=length(x);
    w=zeros(2*n,1);
    for i=1:n
        [theta,rho] = cart2pol(x(i,1), x(i,2));
        w(i)=rho;
        w(i+n)=theta;
    end
end