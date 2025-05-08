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
