es_miembro_lista(X, [X|_]).
es_miembro_lista(X, [_|Y]):- es_miembro_lista(X, Y).


longitud([], 0).
longitud([_|X], N):- longitud(X, N1), N is N1+1.


lista_concatenada([], L2, L2).
lista_concatenada([X|Y], L2, [X|Z]):- lista_concatenada(Y, L2, Z).


fib(0,0).
fib(1,1).
fib(X,R):- X1 is X-1, X2 is X-2, fib(X1, R1), fib(X2, R2), R is R1 + R2.
lista_fib(0, []).
lista_fib(N, L):- 
    N1 is N-1,
    lista_fib(N1, L1),
    fib(N1, R),
    append(L1, [R], L).
    

lista_inversa([], []).
lista_inversa([X], [X]).
lista_inversa([X|Y],R):- lista_inversa(Y, R1), append(R1, [X], R).


es_lista_palindroma(L):- lista_inversa(L,L).
