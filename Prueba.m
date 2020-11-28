% Puntos del poligono sin el (0,0)
x=[0 0; 2 1; 2 3;0 6;-2 3; -2 1];
% Puntos en coordenadas polares
[w]=coordPolares(x);
% Perimetro del polígono
[per] = perimetro(w);
[hx]=h(w);