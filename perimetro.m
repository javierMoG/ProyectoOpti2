function [per] = perimetro(w)
% Calcula el perímetro del polígono formado al unir en orden los puntos de 
% w
% Entradas:
% w.- un vector de coordenadas polares de la forma
% (r1,...,rn,theta1,...,thetan) con ri la magnitud de i-ésimo punto y
% thetai su ángulo. El primer punto es el (0,0).
% Salidas
% per.- el perimetro del poligono formado al unir los puntos consecutivos 
% de w

per=0;
n=length(w)/2;
%per=w(1);
for i=1:n-1
    per=per+distanciaP(w(i), w(n+i), w(i+1), w(n+i+1));
end
%per=per+w(n)
per=per+distanciaP(w(1), w(n+1), w(n), w(2*n));
per = -per;
end

