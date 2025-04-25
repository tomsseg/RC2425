chatty(gustavo).
chatty(valeria).

likes(esteban, malena).
likes(malena, esteban).
likes(gustavo, valeria).

pairing(A, B) :- chatty(A), A\=B.% una persona habladora se empareja con cualquiera
pairing(B, A) :- chatty(A), A\=B.
pairing(A, B) :- likes(A, B) , likes(B, A). % a y b se gustan y se emparejan

seating(A, B, C, D, E) :- pairing(A, B), pairing(B, C), pairing(C, D), pairing(D, E), pairing(E, A).

