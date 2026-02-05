% Hechos: relación entre ciudades
ciudad(bogota).
ciudad(medellin).
ciudad(cali).
ciudad(cartagena).
ciudad(manizales).
ciudad(barranquilla).
ciudad(pasto).
ciudad(monteria).

% Hechos: vuelos directos
vuelo(bogota, medellin).
vuelo(medellin, cartagena).
vuelo(cali, bogota).
vuelo(bogota, cartagena).
vuelo(manizales, cartagena).
vuelo(medellin, barranquilla).
vuelo(pasto, bogota).
vuelo(bogota, pasto).

conexion_por_escala(X, Z):- vuelo(X, Y), vuelo(Y, Z).

viaje(X,Y):- vuelo(X, Y).
viaje(X,Y):- conexion_por_escala(X, Y).


% mascotas

perro(firulais).
perro(bruno).
perro(max).
gato(misu).
gato(luna).
gato(chanel).
gato(orion).
ave(piolin).

dueno(ana, firulais).
dueno(ana, misu).
dueno(luis, luna).
dueno(luis, orion).
dueno(luis, firulais).
dueno(maria, piolin).
dueno(julia, chanel).
dueno(pedro, bruno).

dueno_perro(X):- dueno(X, Y), perro(Y).

dueno_gato(X):- dueno(X, Y), gato(Y).

dueno_ave(X):- dueno(X, Y), ave(Y). % regla para tipo_mascota

dueno_multiple(X):- dueno(X, Y), dueno(X, Z), gato(Y), gato(Z), Y \= Z.
dueno_multiple(X):- dueno(X, Y), dueno(X, Z), perro(Y), perro(Z), Y \= Z.

amante_animales(X):- dueno_perro(X), dueno_gato(X).

mascota_compartida(X, Y):- dueno(X, Z), dueno(Y, Z) X \= Y.

tipo_mascota(X, perro):- dueno_perro(X).
tipo_mascota(X, gato):- dueno_gato(X).
tipo_mascota(X, ave):- dueno_ave(X).

