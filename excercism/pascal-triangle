pascal(0,[]).
pascal(NumRows, Rows):-
    numlist(1,NumRows,List),
    maplist(pascalRow,List,Rows).
    
pascalRow(1,[1]).
pascalRow(NRow,[H|T]):-
    succ(NRow1,NRow),
    pascalRow(NRow1,[H|T2]),
    build([H|T2],T).

build([X], [X]).
build([X,Y|Z],[H|T]):-
    H is X+Y,
    build([Y|Z],T).
