tvalido(A, B, C) :- A > 0, B > 0, C > 0, X is A + B, X >= C, Y is A + C ,Y >= B,Z is B + C, Z >= A.

triangulo(A, B, C,"equilatero") :- A = B, C = B.
triangulo(A, B, C,"isosceles") :- tvalido(A, B, C), A = B.
triangulo(A, B, C,"isosceles") :- tvalido(A, B, C), C = B.
triangulo(A, B, C,"isosceles") :- tvalido(A, B, C), A = C.
triangulo(A, B, C,"escaleno") :- tvalido(A, B, C), A \= B, A \= C, B \= C.
