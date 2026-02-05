% Hechos: estudiante y su nota final en un curso
nota(ana, 4.5).
nota(luis, 2.8).
nota(maria, 3.7).
nota(juan, 5.0).
nota(pedro, 2.3).

reprueba(X):- nota(X, Y), Y < 3.0.
aprueba(X):- nota(X, Y), Y >= 3.0.

rango(X, Min, Max):- nota(X, Y), Min =< Y, Y =< Max.

clasificacion(X, excelente):- nota(X, Y), 4.5 =< Y, Y =< 5.0.
clasificacion(X, notable):- nota(X, Y), 4.0 =< Y, Y =< 4.4.
clasificacion(X, aprobado):- nota(X, Y), 3.0 =< Y, Y =< 3.9.
clasificacion(X, reprobado):- nota(X, Y), 0.0 =< Y, Y =< 2.9.


distancia(X1, Y1, X2, Y2, D):- DX is X2 - X1, DY is Y2 - Y1, D is sqrt(DX*DX + DY*DY).
% Caso base: lista vacía o con un solo punto -> distancia 0

distancia_total([], 0).
distancia_total([_], 0).

distancia_total([[X1, Y1], [X2, Y2] | Resto], Total):- 
    distancia(X1, Y1, X2, Y2, D), 
    distancia_total([[X2, Y2] | Resto], Subtotal),
    Total is D + Subtotal.
