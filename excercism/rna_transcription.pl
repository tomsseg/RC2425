rna_transcription(Rna, Dna) :-
    string_chars(Rna, RnaList),
    list_compare(RnaList, DnaList),
    string_chars(Dna, DnaList).

list_compare([], []).
list_compare([RnaBase | Rna], [DnaBase | Dna]) :-
    (RnaBase = 'C' ->
        DnaBase = 'G';
     RnaBase = 'G' ->
        DnaBase = 'C';
     RnaBase = 'T' ->
        DnaBase = 'A';
     RnaBase = 'A' ->
        DnaBase = 'U'
    ),
    list_compare(Rna, Dna).
