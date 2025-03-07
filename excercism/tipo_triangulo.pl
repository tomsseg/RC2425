triangulo (A,B,C,tipo).
ladovalido (A, B, C, tipo) :- A > 0, B > 0, C > 0, A + B > C, A + C > B, B + C > A.
triangulo (A, B, C, equilatero) :- A == B, B == C.
triangulo (A, B, C, isosceles) :- A == B.
triangulo (A, B, C, isosceles) :- C == B.
triangulo (A, B, C, isosceles) :- A == C.
triangulo (A, B, C, escaleno) :- A \= B, A \= C, B \= C.
