/*Determinar si un texto es un isograma, sin contar los espacios ni guiones*/
isogram(L):-
    string_lower(L, Low),       
    string_chars(Low, Chars),      
    include(is_alpha, Chars, Letters),    
    is_set(Letters).
