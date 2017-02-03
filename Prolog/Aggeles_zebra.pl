%zebra and water
%chris aggeles


%Goal: succesful query for owner of zebra and drinker of water



owner(norwegian).
owner(englishman).
owner(spaniard).
owner(japanese).
owner(ukranian).

color(red).
color(blue).
color(green).
color(yellow).
color(white).

pet(zebra).
pet(horse).
pet(serpent).
pet(fox).
pet(dog).

drinks(milk).
drinks(tea).
drinks(juice).
drinks(water).
drinks(coffee).

smokes(chesterfield).
smokes(winston).
smokes(kool).
smokes(kent).
smokes(lucky_strike).


%house 1

%rule 10 means norwegian lives on one side, so let house 1 be that side
%rule 9 = doesnt drink milk
%rule 5 = doesnt drink tea
%rule 2 = not red house
%rule 15 = not blue house
%rule 3 = no dog
%rule 6 = not green or white
%therefore must be yellow
%rule 8 = yellow house smokes kools
%rule 12 = no horse
%rule 7 = no serpent
%not green house, so no coffee
%lucky_strike drinks juice, so no juice
%next to chesterfield, so must be fox
%only drink left is water



house(O, C, P, D, S):-
owner(O),
color(C),
pet(P),
drinks(D),
smokes(S),
C \== red,
C \== blue,
C \== green,
C \== white,
O \== englishman,
O \== spaniard,
O \== ukranian,
O \== japanese,
D \== coffee,
D \== juice,
D \== tea,
D \== milk,
P \== horse,
P \== dog,
P \== zebra,
P \== serpent,
S \== chesterfield,
S \== kent,
S \== lucky_strike,
S \== winston.

%house 2

%rule 15 means this house is blue
%rule 15 means the owner isnt norwegian
%rule 2 means the owner isnt English
%rule 9 means no milk
%rule 4 means no coffee
%rule 12 = horse
%rule 7 = no winston
%rule 3 = no spaniard
%japan is in 5 so no japan
%cant smoke winston bc no serpent
%no kool or kent bc those are taken
%no lucky_strike bc no juice
%must be chesterfield
%no water bc it's taken
%blue house, so no coffee
%next to house w/ kool, so horse


house(O, C, P, D, S):-
owner(O),
color(C),
pet(P),
drinks(D),
smokes(S),
C \== red,
C \== yellow,
C \== green,
C \== white,
O \== englishman,
O \== spaniard,
O \== norwegian,
O \== japanese,
D \== coffee,
D \== juice,
D \== water,
D \== milk,
P \== fox,
P \== dog,
P \== zebra,
P \== serpent,
S \== kool,
S \== kent,
S \== lucky_strike,
S \== winston.

%house 3

%rule 5 = no tea
%rule 8 = no kool
%rule 15 = no kent
%rule 3 = no dog
%rule 4 = no coffee
%rule 6 = must be middle house, so drinks milk from rule 9
%house 2 has horse, so no horse here
%no luck_strike bc no juice
%no chesterfield bc not next to fox
%so, must be winston and serpent
%not dog, so no spaniard
%no coffee so not green,
%blue is taken 
%yellow is taken
%winston so no japan,
%norway is taken,
%ukrain is taken,
%must be english,
%must be red


house(O, C, P, D, S):-
owner(O),
color(C),
pet(P),
drinks(D),
smokes(S),
C \== blue,
C \== yellow,
C \== green,
C \== white,
O \== ukranian,
O \== spaniard,
O \== norwegian,
O \== japanese,
D \== coffee,
D \== juice,
D \== water,
D \== tea,
P \== fox,
P \== dog,
P \== zebra,
P \== horse,
S \== kool,
S \== kent,
S \== lucky_strike,
S \== chesterfield.


%house 4

%cant smoke winston because he has a dog
%norway smokes kool so kool
%ukraine drinks tea, so no tea
%no milk bc not middle house
%japan smokes kents so no kents
%can't be red or yellow bc those taken
%cant be blue bc they have a horse
%can't be english because he drinks milk
%cant be ukraine bc he drinks tea
%cant be norway bc he smokes kool
%juice and lucky strike go together
%cant be green bc no coffee
%so, must be white
%serpent is taken so no serpent
%if green, then coffee, if not then juice, so must be lucky_strike too



house(O, C, P, D, S):-
owner(O),
color(C),
pet(P),
drinks(D),
smokes(S),
C \== blue,
C \== yellow,
C \== red,
C \== green,
O \== ukranian,
O \== englishman,
O \== norwegian,
O \== japanese,
D \== coffee,
D \== coffee,
D \== water,
D \== tea,
P \== fox,
P \== serpent,
P \== zebra,
P \== horse,
S \== kool,
S \== kent,
S \== winston,
S \== chesterfield.

%house 5

%no juice bc no lucky strike
%no fox bc not next to chesterfield
%no serpent bc no winston
%no milk bc its taken
%no horse or fox bc taken and not next to chesterfield
%no tea bc not ukraine
%no dog bc not spanish
%so, must be zebra
%all colors taken but green
%so, drink is coffee
%norway, ukraine, and england taken, so must be japan
%therefore must smoke kent
%only color left is green, so must drink coffee
%not spanish so no dog
%horse is taken
%not next to chesterfield so no fox
%no winston so no serpent


house(O, C, P, D, S):-
owner(O),
color(C),
pet(P),
drinks(D),
smokes(S),
C \== blue,
C \== yellow,
C \== red,
C \== white,
O \== ukranian,
O \== englishman,
O \== norwegian,
O \== spaniard,
D \== juice,
D \== milk,
D \== water,
D \== tea,
P \== fox,
P \== serpent,
P \== dog,
P \== horse,
S \== kool,
S \== lucky_strike,
S \== winston,
S \== chesterfield.

%alternate possibility is that house 4 and 5 are switched

go:-
nl,
write('Welcome to the database!'),
nl,nl,write('To query, use this format: '),
nl,nl,write('house(Owner, Color, Pet, Drinks, Smokes). '),
nl,nl,write('So, to query for the owner of the fox, type: '),
nl,nl,write('house(Owner, _, fox, _, _). ').

:-go.

