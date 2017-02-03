%flat reverse
%Chris Aggeles

flat_reverse([], []).

flat_reverse([Head|Tail], Result):-
\+ is_list(Head),
flat_reverse(Tail, FRTail),
append(FRTail, [Head], Result).

flat_reverse([Head|Tail], Result):-
is_list(Head),
flat_reverse(Head, FRHead),
flat_reverse(Tail, FRTail),
append(FRTail, FRHead, Result).