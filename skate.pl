/*------------------------*/
/*-Insert Epic Title Here-*/
/*------------------------*/

skate:-

	initialise,
	query.



initialise:-
	nl,
	tab(20), write('<><><><><><><>'),nl,
	tab(20), write('<><>SKATE!<><>'),nl,
	tab(20), write('<><><><><><><>'),nl.

query:-
	question(Quest, Known),
	write(Quest), nl,
	/*insert validation function*/
	read(X), nl,	%replace this when vaildation function is added.
	X='y' ->	%if they answer yes.
	write('They answered yes');	%else do this.
	write('They answered no'), nl.

question("Do you own a skateboard?", Owns_Board).
