%perms
%Chris Aggeles


removeX(X, X, []).

removeX(X,[X|Tail],Tail).  

removeX(X,[Head|Tail],[Head|Result]):- 
X \== Head,
removeX(X,Tail,Result).


perms([Head|Tail],Result) :- perms(Tail,WithoutHead), removeX(Head,Result,WithoutHead).
perms([],[]).  

