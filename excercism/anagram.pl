is_anagram(A,B) :- 
  string_lower(A,A1),
  string_lower(B,B1),
  not(A1 == B1),
  string_codes(A1,Ac),
  string_codes(B1,Bc),
  permutation(Ac,Bc).

anagram(Word, Options, Matching) :- 
include(is_anagram(Word), Options, Matching).
% Esto se expande implícitamente así:
% include([X] >> is_anagram(Word, X), Options, Matching).
% Para cada X en option que cumpla is_anagram incluyelo en matching
