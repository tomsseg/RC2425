tvalido(A, B, C) :- A > 0, B > 0, C > 0, A + B >= C, A + C >= B, B + C >= A.
es(A, B, C) :- tvalido(A, B, C), A =:= B, B =:= C.
i(A, B, C) :- ladovalido(A, B, C), A =:= B.
i(A, B, C) :- ladovalido(A, B, C), C =:= B.
i(A, B, C) :- ladovalido(A, B, C), A =:= C.
eq(A, B, C) :- ladovalido(A, B, C), A \= B, A \= C, B \= C.

triangulo(A,B,C,R) :- la
