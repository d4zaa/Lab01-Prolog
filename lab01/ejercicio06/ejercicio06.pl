lista([1, 3, 4, 2]).

es_miembro_lista(X, [X|_]).
es_miembro_lista(X, [_|Y]):- es_miembro_lista(X, Y).


longitud([], 0).
longitud([_|X], N):- longitud(X, N1), N is N1+1.

lista_concatenada([], L2, L2).
lista_concatenada([X|Y], L2, [X|Z]):- lista_concatenada(Y, L2, Z).


lista_inversa([]).
lista_inversa([X|Y]):- 
