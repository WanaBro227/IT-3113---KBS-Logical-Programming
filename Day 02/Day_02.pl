parent(tom,bob).
parent(pam,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).

% 01. Is Bob a parent of Tom ?
% 02. Is Tom a parent of Bob ?
% 03. Who is Pat's parent ?
% 04. Is Liz a parent of Pat ?
% 05. Is Tom a parent of Ben ?
% 06. Who are Bob's parent ?
% 07. Who is a parent of whom ?
% 08. Who is grandparent of Jim ?
% 09. Who are Tom's grand children ?
% 10. Do Ann and Pat have common parent ?
% 11. Do Ann and Tom have a common parent ?
% 12. Who is Pat's parent ?
% 13. Does Liz has a child ?
% 14. Who is Pat's grandparent ?

male(tom).
male(bob).
male(jim).

female(pam).
female(liz).
female(pat).
female(ann).


% 07. Define the relation mother using parent and female.
mother(X, Y) :- parent(X, Y), female(X).

% 08. Define the relation father using parent and male.
father(X, Y) :- parent(X, Y), male(X).

% 09. Define the relation sister using parent and female.
sister(X, Y) :- parent(Z, X), parent(Z, Y), female(X), X \= Y.

% 10. Define the relation brother using parent and male.
brother(X, Y) :- parent(Z, X), parent(Z, Y), male(X), X \= Y.

% 11. Define the relation grandparent using parent.
grandparent(X, Z) :- parent(X, Y),parent(Y, Z).

% 12. Define the relation grandfather using parent and male.
grandfather(X, Y) :- parent(X, Z), parent(Z, Y), male(X).

% 13. Define the relation grandmother using parent and female.
grandmother(X, Y) :- parent(X, Z), parent(Z, Y), female(X).

% 14. Define the relation grandchild using parent.
grandchild(X, Y) :- parent(Y, Z), parent(Z, X).

% 15. Define relation grandson using parent and male.
grandson(X, Y) :- parent(Y, Z), parent(Z, X), male(X).

% 16. Define relation granddaughter using parent and female
granddaughter(X, Y) :- parent(Y, Z), parent(Z, X), female(X).

% 17. Eveybody who has a child is happy.
happy(X) :- parent(X, _).

% 18. For all X, if X has a child who has a sisiter then X has 2 children.
two_children(X) :- parent(X, Y), sister(Y, Z), Y \= Z.

% 19. Define the relation aunti(X, Y) in term of the relation parent and sister.
aunti(X, Y) :- parent(Z, Y), sister(X, Z).

% 20. Define the relation uncle using the appropriate relations.
uncle(X, Y) :- parent(Z, Y), brother(X, Z).
