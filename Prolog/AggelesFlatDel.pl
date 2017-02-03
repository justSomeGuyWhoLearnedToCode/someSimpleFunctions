%flat delete all
%Chris Aggeles


flat_delete_all(Ele, Ele, []).
flat_delete_all(_, [], []).


flat_delete_all(Ele, [Ele|Tail], Result):-
flat_delete_all(Ele, Tail, Result).

flat_delete_all(Ele, [Head|Tail], Result):-
is_list(Head),
flat_delete_all(Ele, Head, DelHead),
flat_delete_all(Ele, Tail, DelTail),
append(DelHead, [DelTail], Result).


flat_delete_all(Ele, [Head|Tail], [Head|Result]):-
Ele \== Head,
flat_delete_all(Ele, Tail, Result).

