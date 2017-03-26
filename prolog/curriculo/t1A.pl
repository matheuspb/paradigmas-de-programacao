:- consult('cco.pl').

% Questão 1
discfase(D, F) :- disciplina(F, D, _).

% Questão 2
prereqfase(Dpr, Fpr) :-
	disciplina(Fpr, Dpr, _),
	prerequisito(Dpr, _).

% Questão 3
nomeprereqnome(Npr, N) :-
	disciplina(_, Dpr, Npr),
	disciplina(_, D, N),
	prerequisito(Dpr, D).

% Questão 4
nomeprereqfase(Npr, Dpr, Fpr) :-
	prereqfase(Dpr, Fpr),
	disciplina(_, Dpr, Npr).

% Questão 5
prereqdiscfase(Dpr, D, F) :-
	prerequisito(Dpr, D),
	disciplina(F, D, _).

% Questão 6
prereqdiscfaseprereq(Dpr, D, Fpr) :-
	prerequisito(Dpr, D),
	disciplina(Fpr, Dpr, _).

% Questão 7
nomeprereqdiscfase(Npr, Dpr, D, F) :-
	prerequisito(Dpr, D),
	disciplina(F, Dpr, Npr).
