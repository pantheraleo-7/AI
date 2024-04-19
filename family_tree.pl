male(ramjibhai). male(dhirubhai). male(hitesh). male(krishna). male(pravinbhai). male(harsh).
female(shantiben). female(hansaben). female(bhartiben). female(harshita).

parent(ramjibhai,dhirubhai). parent(ramjibhai,pravinbhai).
parent(shantiben,dhirubhai). parent(shantiben,pravinbhai).
parent(dhirubhai,hitesh). parent(dhirubhai,krishna).
parent(hansaben,hitesh). parent(hansaben,krishna).
parent(pravinbhai,harsh). parent(pravinbhai,harshita).
parent(bhartiben,harsh). parent(bhartiben,harshita).

father(X,Y) :- male(X),parent(X,Y).
mother(X,Y) :- female(X),parent(X,Y).
grandpa(X,Y) :- father(X,Z),father(Z,Y).
grandma(X,Y) :- mother(X,Z),father(Z,Y).
brother(X,Y) :- male(X),parent(Z,X),parent(Z,Y),X\=Y.
sister(X,Y) :- female(X),father(Z,X),father(Z,Y),X\=Y.
uncle(X,Y) :- brother(X,Z),father(Z,Y).
aunt(X,Y) :- uncle(Z,Y),father(Z,Q),mother(X,Q).
nephew(X,Y) :- male(X),uncle(Y, X).
niece(X,Y) :- female(X),uncle(Y, X).
cousin(X,Y) :- father(P,X),father(Q,Y),brother(P,Q).