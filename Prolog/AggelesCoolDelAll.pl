%cool_delete_all
%Chris Aggeles

cool_delete_all(Ele, Ele, []).
cool_delete_all(_, [], []).

cool_delete_all(Ele, [Ele|Tail], Result):-
cool_delete_all(Ele, Tail, Result).

cool_delete_all(Ele, [Head|Tail], [DelHead|Result]):-
is_list(Head),
cool_delete_all(Ele, Head, DelHead),
cool_delete_all(Ele, Tail, Result).

cool_delete_all(Ele, [Head|Tail], [Head|Result]):-
Ele \== Head,
cool_delete_all(Ele, Tail, Result).
