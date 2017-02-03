%animals
%the key objective of this program is to allow for an animal to be queried
%then, if the animal is not present, ask for it's characteristics and store those in kb for 
%reference. It does this once then returns the user to terminal prompt.
%Wider, more sophisticated predicates that combine characteristics
%are certainly possible and adding animals to the database is a relatively simple task.
%a later version might just take in the word instead of the number. 
%Chris Aggeles


:-dynamic animal/11.


%this prompts the user for various charctersitics for their animal

get_animal_characteristics(A, B, C, D, E, F, G, H, I, J):-

write('Please choose from one of the following characteristics below,'),
nl,
write(' by entering the word,  all lowercase, then a period, then enter:'),
nl,
write('If you have to use two words, please use the underscore as before.'),
nl,
write('1) hair  2) scales  3) invertebrate  4) feathers  5) swims'),
nl,
read(A),
nl,
write('Please choose another one of the following characteristics:'),
nl,
nl,
write('6) no legs  7) two legs 8) four legs  9) six legs  10) eight legs'),
nl,
read(B),
nl,
write('Please choose the color of your animal:'),
nl,
nl,
write('11) black  12) brown 13) gray  14) white  15) multi-colored'),
nl,
write('16) striped  17) spotted  18) varies'),
nl,
read(C),
nl,
write('Please choose how your animal eats:'),
nl,
nl,
write('19) ungulate  20) carnivore  21) baleen  22) herbivore'),
nl,
write('23) insectivore  24) omnivore'),
nl,
read(D),
nl,
write('Does your animal fly? Please enter 1 for yes or 2 for no:'),
nl,
read(E),
nl,
write('Does your animal give birth, or lay eggs? Please enter ''birth'' or ''eggs'':'),
nl,
read(F),
nl,
write('Does your animal have long legs (greater than a meter)?'),
nl,
write('Please enter ''long_legs'' for yes, or ''short_legs'' for no:'),
nl,
read(G),
nl,
write('Does your animal have a long neck (greater than 1 foot)?'),
nl,
write('Please enter ''long_neck'' for yes, or ''short_neck'' for no:'),
nl,
read(H),
nl,
write('Is your animal typically bigger than 2 meters? Enter ''big'' for yes, or ''small'' for no:'),
nl,
read(I),
nl,
write('Does your animal have pointed teeth (mandibles and tusks count)? Enter ''teeth'' for yes, or ''no_teeth'' for no:'),
nl,
read(J),
nl.


%this is where I've added the various choices for the animals, and write statements
%to print out the characteristics when I need to access them

animal_data("hair"):-
write('This animal has hair.').

animal_data("scales"):-
write('This animal has scales').

animal_data("invertebrate"):-
write('This animal is an invertebrate.').

animal_data("feathers"):-
write('This animal has feathers.').

animal_data("swims"):-
write('This animal swims.').

animal_data("no_legs"):-
write('This animal has no legs.').

animal_data("two_legs"):-
write('This enimal has two legs.').

animal_data("four_legs"):-
write('This animal has four legs.').

animal_data("six_legs"):-
write('This animal has six legs.').

animal_data("eight_legs"):-
write('This animal has eight legs.').

animal_data("black"):-
write('This animal is black.').

animal_data("brown"):-
write('This animal is brown.').

animal_data("gray"):-
write('This animal is gray.').

animal_data("white"):-
write('This animal is white.').

animal_data("multi-colored"):-
write('This animal is multi-colored.').

animal_data("striped"):-
write('This animal is striped.').

animal_data("spotted"):-
write('This animal is spotted.').

animal_data("varies"):-
write('This animal''s color varies.').

animal_data("ungulate"):-
write('This animal is an ungulate.').

animal_data("carnivore"):-
write('This animal is a carnivore.').

animal_data("baleen"):-
write('This animal filters food with baleen.').

animal_data("herbivore"):-
write('This animal is an herbivore.').

animal_data("insectivore"):-
write('This animal is an insectivore.').

animal_data("omnivore"):-
write('This animal is an omnivore.').

animal_data(1):-
write('This animal flies.').

animal_data(2):-
write('This animal does not fly.').

animal_data("birth"):-
write('This animal gives live birth.').

animal_data("eggs"):-
write('This animal lays eggs.').

animal_data("long_legs"):- 
write('This animal has long legs.').

animal_data("short_legs"):-
write('This animal has short legs.').

animal_data("long_neck"):-
write('This animal has a long neck.').

animal_data("short_neck"):-
write('This animal has a short neck.').

animal_data("big"):- 
write('This animal is typically bigger than 2 meters in size.').

animal_data("small"):-
write('This animal is typically smaller than 2 meters.').

animal_data("teeth"):-
write('This animal has pointed teeth.').

animal_data("no_teeth"):-
write('This animal doesn''t have pointed teeth.').

check_mammal(A, F):-
A == "hair",
F == "birth",
write('This animal is a mammal').

check_reptile(A, F):-
A == 2,
F == 28,
write('This animal is a reptile.').



%this predicate takes the instantiated animal data and prints it out for the specified animal:'X'


describe_animal(X, A, B, C, D, E, F, G, H, I, J):-
write('Your animal is a '),
write(X),
nl,
write('It has the following characteristics: '),
nl,
nl,
animal_data(A),
nl,
animal_data(B),
nl,
animal_data(C),
nl,
animal_data(D),
nl,
animal_data(E),
nl,
animal_data(F),
nl,
animal_data(G),
nl,
animal_data(H),
nl,
animal_data(I),
nl,
animal_data(J),
nl,
check_mammal(A, F),
check_reptile(A, F),
header.






%here's where the data for the animals in the database are stored

animal(great_white, "scales", "no_legs", "white", "carnivore", 2,"test" ,"test", "herbivore", "no_teeth", "teeth",).
animal(clown_fish, 5, 6, 15, 24, 26, 28, 30, 32, 34, 36).
animal(whale, 5, 6, 18, 21, 26, 27, 30, 32, 33, 36).
animal(tiger, 1, 8, 16, 20, 26, 27, 30, 32, 33, 35).
animal(horse, 1, 8, 18, 22, 26, 27, 30, 31, 33, 36).
animal(elephant, 1, 8, 13, 22, 26, 27, 29, 32, 33, 35).
animal(dog, 1, 8, 18, 24, 26, 27, 30, 32, 34, 35).
animal(snake, 2, 6, 18, 24, 26, 28, 30, 31, 34, 35).
animal(iguana, 2, 8, 15, 22, 26, 28, 30, 32, 34, 36).
animal(turtle, 2, 18, 22, 26, 28, 30, 32, 34, 36).
animal(butterfly, 3, 9, 15, 22, 25, 28, 30, 32, 34, 36).
animal(beetle, 3, 9, 18, 24, 25, 28, 30, 32, 34, 35).
animal(ant, 3, 9, 18, 22, 26, 28, 30, 32, 34, 35).
animal(penguin, 4, 7, 15, 20, 26, 28, 30, 32, 34, 36).
animal(albatross, 4, 7, 14, 20, 25, 28, 30, 32, 34, 36).
animal(robin, 4, 7, 18, 23, 25, 28, 30, 32, 34, 36).

%default if the animal is not known

animal_check(X, A, B, C, D, E, F, G, H, I, J):-
\+ (animal(X, _, _, _, _, _, _, _, _, _, _)),
nl,nl,
write('I don''t know that animal!'),
nl,
write('Please tell me it''s characteristics!'),
nl,
nl,
get_animal_characteristics(A, B, C, D, E, F, G, H, I, J),
assert(animal(X, A, B, C, D, E, F, G, H, I, J)),
nl,
nl,
header.

%necessary to prevent failure

animal_check(_,_,_,_,_,_,_,_,_,_,_).




%First screen of the animal database. This is called once a new animal has been entered,
%or a known animal has been described.

header:-
nl,
write('Welcome to the animal database!'),
nl,
nl,
write('Please enter the name of your animal using all lower case,'),
nl,
write('followed by a period, then press return.'),
nl,
nl,
write('Note: Use the underscore character if a space is necessary (ex: blue_whale).'),
nl,
read(X),
animal_check(X, A, B, C, D, E, F, G, H, I, J),
animal(X, A, B, C, D, E, F, G, H, I, J),
describe_animal(X, A, B, C, D, E, F, G, H, I, J),
nl,
header.


:-header.













