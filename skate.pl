/*------------------------*/
/*-Insert Epic Title Here-*/
/*------------------------*/

skate:-

	initialise,
	query,
	rule(Number, Improvement, Explanation),
	reply(Improvement, Reply),
	write(Reply).


initialise:-
	nl,
	tab(20), write('<><><><><><><>'),nl,
	tab(20), write('<><>SKATE!<><>'),nl,
	tab(20), write('<><><><><><><>'),nl.

query:-
	question(Quest, Known),
	write(Quest), nl,
	/*insert validation function*/
	getyesno(Yesno),nl,
	(Yesno='yes';Yesno='y'),
	assertz(known(Known)),
	(Yesno='no';Yesno='n'),
	retract(known(Known)),
	fail.
query.

/* VALIDATION */

getyesno(X):-
	repeat,
	write('Please answer y or n:'),nl,
	read(Z),nl,
	check(Z),
	X=Z,!.				% we are not interested here in whether 
					% the response is positive or negative
check('yes').
check('y').
check('no').
check('n').

/* questions */

question("Do you have a skateboard" , has_board).
question("Can you ride it?" , can_ride).
question("Do you kick with front foot?" , mongo).
question("Can you ollie?" , can_ollie).

/* rules */

rule(1,need_board, "not owning a board shows you are not a skater") :- 
	not(known(has_board)).
rule(2,learn2skatemate, "not being able to ride shows you need to learn") :-
	not(known(can_ride)).
rule(3,mongo, "kicking with the front foot means you are mongo which is wrong") :-
	known(mongo).

/* advice */

reply(need_board, "You should speak to somebody about what kind of board to buy").
reply(learn2skatemate, "practice riding your board till your comfortable moving and turning without tricks").
reply(mongo, "skate off a cliff").
