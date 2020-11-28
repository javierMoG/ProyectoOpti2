function [d]=distanciaP(r1, theta1, r2, theta2)
    % Calcula la distancia entre dos puntos en coordenadas polares
    % Entradas:
    % r1.- Magnitud del primer punto
    % theta1.- Ángulo del primer punto
    % r2.- Magnitud del segundo punto
    % theta2.- Ángulo del segundo punto
    % Salidas:
    % d.- Distancia entre los puntos
    
    d=sqrt(r1^2+r2^2-2*r1*r2*cos(theta1-theta2));
end