finobacci(0, 0).
finobacci(1, 1).

finobacci(X, N):- X1 is X-1, X2 is X-2, finobacci(X1, N1), finobacci(X2, N2), N is N1+N2.
