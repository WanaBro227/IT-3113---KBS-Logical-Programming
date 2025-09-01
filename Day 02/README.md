# Family Relationships in Prolog

This project defines a small family tree in **Prolog** and explores relationships such as parents, grandparents, siblings, and more.  

---

## 📌 Facts

```prolog
parent(tom, bob).
parent(pam, bob).
parent(tom, liz).
parent(bob, ann).
parent(bob, pat).
parent(pat, jim).

male(tom).
male(bob).
male(jim).

female(pam).
female(liz).
female(pat).
female(ann).
```

---

## 📌 Rules

```prolog
mother(X, Y) :- parent(X, Y), female(X).
father(X, Y) :- parent(X, Y), male(X).

sister(X, Y) :- parent(Z, X), parent(Z, Y), female(X), X \= Y.
brother(X, Y) :- parent(Z, X), parent(Z, Y), male(X), X \= Y.

grandparent(X, Z) :- parent(X, Y), parent(Y, Z).
grandfather(X, Y) :- parent(X, Z), parent(Z, Y), male(X).
grandmother(X, Y) :- parent(X, Z), parent(Z, Y), female(X).

grandchild(X, Y) :- parent(Y, Z), parent(Z, X).
grandson(X, Y) :- parent(Y, Z), parent(Z, X), male(X).
granddaughter(X, Y) :- parent(Y, Z), parent(Z, X), female(X).

happy(X) :- parent(X, _).

two_children(X) :- parent(X, Y), parent(X, Z), Y \= Z.

aunt(X, Y) :- parent(Z, Y), sister(X, Z).
uncle(X, Y) :- parent(Z, Y), brother(X, Z).

common_parent(X, Y) :- parent(Z, X), parent(Z, Y).
```

---

## 📌 Sample Queries and Answers

| #  | Query                         | Result                                                                 |
|----|-------------------------------|------------------------------------------------------------------------|
| 01 | `?- parent(bob, tom).`        | **false**                                                              |
| 02 | `?- parent(tom, bob).`        | **true**                                                               |
| 03 | `?- parent(X, pat).`          | `X = bob`                                                              |
| 04 | `?- parent(liz, pat).`        | **false**                                                              |
| 05 | `?- parent(tom, ben).`        | **false**                                                              |
| 06 | `?- parent(X, bob).`          | `X = tom ; X = pam`                                                    |
| 07 | `?- parent(X, Y).`            | Lists all parent-child pairs                                            |
| 08 | `?- grandparent(X, jim).`     | `X = bob ; X = tom ; X = pam`                                          |
| 09 | `?- grandchild(X, tom).`      | `X = ann ; X = pat ; X = jim` (Jim is great-grandchild, but still fits) |
| 10 | `?- common_parent(ann, pat).` | **true**, common parent is `bob`                                       |
| 11 | `?- common_parent(ann, tom).` | **false**                                                              |
| 12 | `?- parent(X, pat).`          | `X = bob`                                                              |
| 13 | `?- parent(liz, X).`          | **false** (Liz has no children)                                        |
| 14 | `?- grandparent(X, pat).`     | `X = tom ; X = pam`                                                    |

---

## 📌 How to Run

1. Save the code in a file, e.g., **family.pl**  
2. Open SWI-Prolog (or any Prolog interpreter).  
3. Load the file:
   ```prolog
   ?- [family].
   ```
4. Run queries like:
   ```prolog
   ?- parent(tom, bob).
   ?- grandparent(X, jim).
   ?- aunt(liz, ann).
   ```

---

## 📌 Notes

- The `two_children/1` rule ensures a person has at least **two different children**.  
- The `aunt/2` and `uncle/2` relations are based on the siblings of parents.  
- The `happy/1` rule assumes anyone with a child is happy.  

---

✨ This README provides a quick guide to understanding and testing the Prolog family program.  
