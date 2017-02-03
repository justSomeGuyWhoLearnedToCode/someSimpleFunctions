%flatten
%Chris Aggeles	


%empty list is already flat
flatten([],[]).

%if head is a list
flatten(Head|Tail), List):-
flatten(Tail, TailList),
flatten(Head, HeadList),
append(Headlist, TailList, List).

%if head is not a list
flatten([Head|Tail], [Head|Tail2]):-
Head \= [],
Head \= [_|_],
flatten(Tail, Tail2).