suma_nodos([],0).
suma_nodos(a(etiq,AI,AD),R):-
    suma_nodos(AI,etiqI),
    suma_nodos(AD,etiqD),
    etiq is etiq + etiqD + etiqI.

pertenece(Elem,a(Elem,AI,AD)).
pertenece(Elem,a(_,AI,_)):- pertenece(Elem,AI).
pertenece(Elem,a(_,_,AD)):- pertenece(Elem,AD).

inorden(nil,[])
inorden(a(etiq,AI,AD),ListaRecorrido):-
    
