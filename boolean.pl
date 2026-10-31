% Program for the boolean expression.
% (A AND B) OR (NOT A AND NOT B)

%Facts
%AND truth table
and(true,true,true).
and(true,false,false).
and(false,true,false).
and(false,false,false).

%OR truth table
or(true,true,true).
or(true,false,true).
or(false,true,true).
or(false,false,false).

%Negation
neg(true,false).
neg(false,true).

%logicGate(I1,I2,Output)
logicGate(A,B,O) :-
    and(A,B,X),
    neg(A,NA),
    neg(B,NB),
    and(NA,NB,Y),
    or(X,Y,O).
