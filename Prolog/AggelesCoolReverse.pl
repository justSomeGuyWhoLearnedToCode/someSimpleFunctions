%cool reverse
%Chris Aggeles

cool_reverse([], []).

cool_reverse([Head|Tail], Result):-
\+is_list(Head),
cool_reverse(Tail, RevTail),
append(RevTail, [Head], Result).

cool_reverse([Head|Tail], Result):-
is_list(Head),
cool_reverse(Head, RevHead),
cool_reverse(Tail, RevTail),
append(RevTail, [RevHead], Result).