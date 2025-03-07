triangulo (A,B,C,tipo).
ladovalido (A, B, C) :- A > 0, B > 0, C > 0, A + B > C, A + C > B, B + C > A.
triangulo (A, B, C, equilatero) :- ladovalido(A, B, C), A == B, B == C.
triangulo (A, B, C, isosceles) :- ladovalido(A, B, C), A == B.
triangulo (A, B, C, isosceles) :- ladovalido(A, B, C), C == B.
triangulo (A, B, C, isosceles) :- ladovalido(A, B, C), A == C.
triangulo (A, B, C, escaleno) :- ladovalido(A, B, C), A \= B, A \= C, B \= C.
