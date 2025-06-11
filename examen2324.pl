/*
Ejercicio reverse:
*/
reverse([],[]).
reverse(L,R):-
append([L1,[E]],L),
reverse(L1,L1R),
append(E,L1R,R).

/*
Ejercicio mas_veces:
*/


comprime([], []).

comprime([E], [(E,1)]).

comprime([Cab,Cab|Resto],[(Cab,N2)|R]):-
    comprime([Cab|Resto],[(Cab,N)|R]),
    N2 is N + 1.

comprime([Cab1, Cab2|Resto], [(Cab1,1)|R]):- 
    Cab1 \= Cab2,
    comprime([Cab2|Resto],R).

mas_veces(L,E,N):-
    msort(L,LO),
    comprime(LO,C)
    esmayor(C,E,N).

esmayor([],_,0).

esmayor([(E,N2)|Resto],E,N):-
    esmayor(R,E,N),
    N2>=N.

esmayor([(_,N2)|Resto],E,N):-
    esmayor(Resto,E,N),
    N > N2.

/*
Ejercicio elimina_n:
*/

elimina_n([],_,[]).

elimina_n(L,N,R):- length(L,le), le>=N.

elimina_n(L,N,R):-
    N1 is N - 1,length(L1,N1),append(L1,[_|L2],L),
    elimina_n(L2,N,R2),append(L1,R2,R).


/*
Ejercicio lista_hojas:
*/

lista_hojas([], []).
lista_hojas(a(E,[]),[E]).

lista_hojas(a(_,[Cabeza|Resto]), R):-
    lista_hojas(Cabeza,RC),
    lista_hojas(Resto,RR)
    append(RC,RR,R).


/*
Ejercicio balanceado:
*/        

balanceado(nil).

balanceado(a(_,AI,AD)):-
    altura(AI,hi),altura(AD,hd)
    dif is hi - hd,
    dif > -2, dif < 2 .

altura(nil, 0).
altura(a(_,AI,AD),h):-
    altura(AI,hi),altura(AD,hd),
    h is 1 + max(hi,hd).


/*
Ejercicio balanceado:
*/  





    
