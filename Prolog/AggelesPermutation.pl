%permutate
%Chris Aggeles


%removes a designated member from a given list and returns a list without the member

remove_member_from_list(Member, Member, []).

remove_member_from_list([], List, List).

remove_member_from_list(Member, [Head|Tail], Tail):-
Member == Head.

remove_member_from_list(Member, [Head|Tail], [Head|RestOfList]):-
Member \== Head,
remove_member_from_list(Member, Tail, RestOfList).



%gets the list's members

get_list_members([], []).

get_list_members([Head|_], Head).

get_list_members([_|Tail], X):-
get_list_members(Tail, X).


%appends an element to each element of an ever diminishing list

%base cases
permutate_list([],[],[]).
permutate_list(List, [], List).



/*this takes in some element X from the master list. it also takes a list which is the master list minus the element X.
it then appends one element from that new list to the first element, then takes the resulting piece and puts it
back into the function, replacing the initial X. The list is also updated (as it now should contain one less element, the one that was
appended to X) and reintroduced into the function, replacing the first list. eventually, all the elements will be gone from the list,
and the base case is reached.
*/

/*

permutate_list([X], List, PermutatedList):-

get_list_members(List, Y),
Y \== [],
remove_member_from_list(Y, List, NewList),
append([X], [Y], Appended),
permutate_list(Appended, NewList, PermutatedList).
*/




permutate_list(X, List, PermutatedList):-

get_list_members(List, Y),
Y \== [],
remove_member_from_list(Y, List, NewList),
append([X], [Y], Appended),
permutate_list(Appended, NewList, PermutatedList).






%use flatten to get the desired results

flatten([],[]).

flatten(Head|Tail, Head|FlatTail):-
Head \== [],
Head \==[_|_],
flatten(Tail, FlatTail).

flatten([Head|Tail], FlatList):-
flatten(Head, FlatHead),
flatten(Tail, FlatTail),
append(FlatHead, FlatTail, FlatList).


%this seems to work for the first iteration




%return the permutated list

return_list([], []).

return_list(List, PermutatedList):-

get_list_members(List, X),

X \== [],

remove_member_from_list(X, List, ListWithElementRemoved),

permutate_list(X, ListWithElementRemoved, PermutatedList).

%flatten(TempList, PermutatedList).








/*
permutate([Head|Tail], List, PermutatedList):-
get_list_members(List, Y),
Y \== [],
remove_member_from_list(Y, List, NewList),
append(Head|Tail, [Y], Appended),
permutate_list(Appended, NewList, PermutatedList).
*/











