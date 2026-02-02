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
