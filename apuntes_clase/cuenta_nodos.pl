cuenta_nodos(arbol_vacio,0).
cuenta_nodos(a(_,AI,AD),R),:-
  cuenta_nodos(AI,RI),
  cuenta_nodos(AD,RD),
  R is RI + RD + 1.
