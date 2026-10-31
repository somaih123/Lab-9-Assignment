% Task 2: sumlist(List, Sum): Sum is the total of a list of numbers.
% Step 1: if the list is empty
sumlist([], 0).

% Step 2: if the list is not empty
sumlist([H|T], Sum) :- sumlist(T, S1), Sum is H + S1.

% Task 3: Total and Average of three numbers.
total :-
    nl, write('Enter three numbers (end each with a full stop)'), nl,
    write('-->> Enter first number: '),
    read(A),
    write('-->> Enter second number: '),
    read(B),
    write('-->> Enter third number: '),
    read(C),
    Total is A + B + C,
    Average is Total / 3,
    nl, write('Total = '), write(Total), nl,
    write('Average = '), write(Average), nl.
