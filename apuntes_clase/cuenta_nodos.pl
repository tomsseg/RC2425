% Para probar el código:

a(1,
	a(2,a(4,nil,nil),a(5,nil,nil)),
	a(3,a(6,nil,nil),a(7,nil,nil))).

% Cuenta nodos:
cuenta_nodos(arbol_vacio,0).
cuenta_nodos(a(_,AI,AD),R),:-
	cuenta_nodos(AI,RI),
	cuenta_nodos(AD,RD),
	R is RI + RD + 1.
% Crea lista abol binario
crea_ab([],nil).
crea_ab(Lista, ArbolBinario):-
	length(Lista,L),
  	Med is L div 2,
	length(L1, Med),
 	append(L1,L3,Lista),
  	crea_ab(L1,A1),
   	crea_ab(L1,A2).

% Altura

altura_ab([],0).
altura_ab(a(_,AI,AD),altura):-
	altura_ab(AI,alturaI),
 	altura_ab(AD,alturaD),
  	(alturaI > alturaD ->        % if
        altura is alturaI + 1    % then
    ;
        altura is alturaD + 1    % else
    ).

% Balanceado

balanceado_ab([])
balanceado_ab(a(_,AI,AD)):-
	comprueba altura(AI,hi),altura(AD,hd),
 	dif is hi - hd,
 	dif<2 , dif>-2.
altura(nil,0).
altura(a(_,ai,ad),h):-
	altura(ai,hi), altura(ad,hd),
 	h is 1 + max(hi,hd).
  
