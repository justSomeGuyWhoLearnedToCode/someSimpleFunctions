%function to constrain the variable values to 1-9

f(1).
f(2).
f(3).
f(4).
f(5).
f(6).
f(7).
f(8).
f(9).


%solve function for each length list 

solve(Length, Sum, [X, Y]):-
Length == 2,
f(X),
f(Y),
constrain2Digits(Sum, X, Y),
X \= Y,
Sum is X + Y.

solve(Length, Sum, [X, Y, Z]):-
Length == 3,
f(X),
f(Y),
f(Z),
constrain3Digits(Sum, X, Y, Z),
X \= Y,
X \= Z,
Y \= Z,
Sum is X + Y + Z.



/*
solve(Length, Sum, [X, Y, Z, A]):-
Length == 4,
X \= [],
A \= [],
f(X),
f(Y),
f(Z),
f(A),
X \= Y,
X \= Z,
X \= A,
Y \= Z,
Y \= A,
Z \= A,
Sum is X + Y + Z + A.
*/

solve(Length, Sum, [A, B, C, D, E]):-
Length == 5,

f(A),
f(B),
f(C),
f(D),
f(E),
constrain5Digits(Sum, A, B, C, D, E),
A \= B,
A \= C,
A \= D, 
A \= E,
B \= C, 
B \= D,
B \= E,
C \= D,
C \= E,
D \= E,
Sum is A + B + C + D + E.

process([X1, X2, X4, X6, X7, X8,
X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,
X24,X25,X27,X28,X29,X30,X31,X33,X34,X35,X36,X37,
X38,X39,X40,X41,X42,X44,X45,X46,X47,X48,X49,X50,X51,X52,
X53,X54,X55,X56,X57,X58,X60,X61,X62,X64,X65,X66,X67,X68,
X69,X70,X71,X72,X73,X74,X75,X76,X77,X78,X79,X80,X81,X82,X83,X84,X85,X87,X88,X90,X91,X92]):-

%the board


% left top
solve(2, 17, [9, X14]),
solve(3, 10, [X1, X2, 7]),
solve(3, 10, [X1, 3, X19]),
solve(3, 9, [X2, X11, X20]),
solve(3, 9, [3, X11, X12]),
solve(5, 16, [X19, X20, X21, X22, 1]),
solve(3, 11, [X22, X30, X38]),
solve(3, 22, [X4, 9, X6]),
solve(3, 15, [X13, X14, X15]),
solve(3, 7, [X29,X30,X31]),
solve(5, 17, [7, X12, X21, X29, X37]),
solve(5, 18, [X4, X13, 1, X31, X39]),
solve(5, 15, [X35, X36, X37, X38, X39]),
solve(2, 16, [X45, X46]),
solve(3, 17, [X35, X45, X49]),
solve(3, 14, [X36, X46, X50]),

%right top
solve(5, 24, [X6, X15, X24, 5, X40]),
solve(3, 8,  [5,X33,X34]),
solve(3, 13, [X25, X33, X41]),
solve(5, 26, [X40, X41, X42, 2, X44]),
solve(5, 16, [X7, X16, 2, X34, X42]),
solve(3, 15, [X7, X8, 6]),
solve(3, 17, [X8, X17, X27]),
solve(3, 18, [6, X18, X28]),
solve(5, 15, [X24,X25,2,X27,X28]),
solve(3, 21, [X16, X17, X18]),


%bottom right
solve(2, 10, [X47, X48]),
solve(3, 19, [2, X47, X57]),
solve(3, 8, [X44, X48, X58]),
solve(3, 21, [X73, 7, X91]),
solve(3, 13, [X90, X91, X92]),
solve(3, 14, [X81, 7, X83]),
solve(3, 7, [X74, X83, X92]),
solve(3, 9, [X62, 4, X64]),
solve(5, 17, [X56, X64, X72, X81, X90]),
solve(3, 12, [X55, 4, X71]),
solve(5, 25, [X54, X55, X56, X57, X58]),
solve(5, 18, [X70, X71, X72, X73, X74]),
solve(5, 15, [X54, X62, X70, X80, 3]),

%bottom left
solve(3, 9, [X87, X88, 3]),
solve(2, 6, [X79, X88]),
solve(3, 6, [X78, X79, X80]),
solve(3, 18, [6, X60, X61]),
solve(3, 21, [X52, X60, X68]),
solve(5, 15, [X53, X61, X69, X78, X82]),
solve(3, 8, [X84, X85, 4]),
solve(3, 7, [X75, X76, X77]),
solve(3, 10, [X65, X75, X84]),
solve(3, 12, [X66, X76, X85]),
solve(5, 24, [X51, 6, X67, X77, 4]),
solve(5, 31, [X65, X66, X67, X68, X69]),
solve(5, 25, [X49, X50, X51, X52, X53]).





process2([X1, X2,X3, X4, X6, X7, X8,X9, X10,
X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,
X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34,X35,X36,X37,
X38,X39,X40,X41,X42,X43,X44,X45,X46,X47,X48,X49,X50,X51,X52,
X53,X54,X55,X56,X57,X58,X59,X60,X61,X62,X63,X64,X65,X66,X67,X68,
X69,X70,X71,X72,X73,X74,X75,X76,X77,X78,X79,X80,X81,X82,X83,X84,X85,X86,X87,X88,X90,X91,X92]):-

%the board


% left top
solve(2, 17, [X5, X14]),
solve(3, 10, [X1, X2, X3]),
solve(3, 10, [X1, X10, X19]),
solve(3, 9, [X2, X11, X20]),
solve(3, 9, [X10, X11, X12]),
solve(5, 16, [X19, X20, X21, X22, X23]),
solve(3, 11, [X22, X30, X38]),
solve(3, 22, [X4, X5, X6]),
solve(3, 15, [X13, X14, X15]),
solve(3, 7, [X29,X30,X31]),
solve(5, 17, [X3, X12, X21, X29, X37]),
solve(5, 18, [X4, X13, X23, X31, X39]),
solve(5, 15, [X35, X36, X37, X38, X39]),
solve(2, 16, [X45, X46]),
solve(3, 17, [X35, X45, X49]),
solve(3, 14, [X36, X46, X50]),

%right top
solve(5, 24, [X6, X15, X24, X32, X40]),
solve(3, 8,  [X32,X33,X34]),
solve(3, 13, [X25, X33, X41]),
solve(5, 26, [X40, X41, X42, X43, X44]),
solve(5, 16, [X7, X16, X26, X34, X42]),
solve(3, 15, [X7, X8, X9]),
solve(3, 17, [X8, X17, X27]),
solve(3, 18, [X9, X18, X28]),
solve(5, 15, [X24,X25,X26,X27,X28]),
solve(3, 21, [X16, X17, X18]),


%bottom right
solve(2, 10, [X47, X48]),
solve(3, 19, [X43, X47, X57]),
solve(3, 8, [X44, X48, X58]),
solve(3, 21, [X73, X82, X91]),
solve(3, 13, [X90, X91, X92]),
solve(3, 14, [X81, X82, X83]),
solve(3, 7, [X74, X83, X92]),
solve(3, 9, [X62, X63, X64]),
solve(5, 17, [X56, X64, X72, X81, X90]),
solve(3, 12, [X55, X63, X71]),
solve(5, 25, [X54, X55, X56, X57, X58]),
solve(5, 18, [X70, X71, X72, X73, X74]),
solve(5, 15, [X54, X62, X70, X80, X89]),

%bottom left
solve(3, 9, [X87, X88, X89]),
solve(2, 6, [X79, X88]),
solve(3, 6, [X78, X79, X80]),
solve(3, 18, [X59, X60, X61]),
solve(3, 21, [X52, X60, X68]),
solve(5, 15, [X53, X61, X69, X78, X82]),
solve(3, 8, [X84, X85, X86]),
solve(3, 7, [X75, X76, X77]),
solve(3, 10, [X65, X75, X84]),
solve(3, 12, [X66, X76, X85]),
solve(5, 24, [X51, X59, X67, X77, X86]),
solve(5, 31, [X65, X66, X67, X68, X69]),
solve(5, 25, [X49, X50, X51, X52, X53]).











% 'constrain#Digits/#+1' set some constraints for possible values given some sum


constrain2Digits(Sum, X, Y):-
X =< Sum - 1,
Y =< Sum - 1.


constrain3Digits(Sum, X, Y, Z):-
X =< Sum - 3,
Y =< Sum - 3,
Z =< Sum - 3.

constrain4Digits(Sum, A, B, C, D):-
A =< Sum - 6,
B =< Sum - 6,
C =< Sum - 6,
D =< Sum - 6.

constrain5Digits(Sum, A, B, C, D, E):-
A =< Sum - 10,
B =< Sum - 10,
C =< Sum - 10,
D =< Sum - 10,
E =< Sum - 10.

go:-
process(X),
write('X = '),
write(X),
nl,
fail.

go_again:-
process2(X),
write('X = '),
write(X),
nl,
fail.


