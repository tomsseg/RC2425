chatty(gustavo).
chatty(valeria).

likes(esteban, malena).
likes(malena, esteban).
likes(gustavo, valeria).

pairing(A, _) :- chatty(A). % una persona habladora se empareja con cualquiera
pairing(-, A) :- chatty(A).
pairing(A, B) :- likes(A, B) , likes(B, A). % a y b se gustan y se emparejan

seating(A, B, C, D, E) :- pairing(A, B), pairing(B, C), pairing(C, D), pairing(D, E). %se puede poner también pairing(E, A).

