:- consult('cco.pl').

% Questão 1
precomum(Dpr, D1, D2) :-
	prerequisito(Dpr, D1),
	prerequisito(Dpr, D2),
	D1 \== D2.

% Questão 2
precomumsaopre(D1, D2, F) :-
	disciplina(F, D1, _),
	disciplina(F, D2, _),
	precomum(_, D1, D2),
	prerequisito(D1, _),
	prerequisito(D2, _).

% Questão 3
prepre(Dpr, D) :- prerequisito(Dpr, A), prerequisito(A, D).

% Questão 4
predistante(Dpr, D) :-
	prerequisito(Dpr, D),
	disciplina(F, D, _),
	Fpr is F - 1,
	\+disciplina(Fpr, Dpr, _).

% Questão 5
prefasepar(Dpr, D) :-
	prerequisito(Dpr, D),
	disciplina(F, Dpr, _),
	mod(F,2) =:= 0.

% Questão 6 - RESOLVIDA
precadeia(X, []) :- \+prerequisito(X, _).
precadeia(X, [Y|Lc]) :- prerequisito(X, Y), precadeia(Y, Lc).

% Questão 7
precadeiatamanho(D, T) :- precadeia(D, Cadeia), tamanho(Cadeia, T).

tamanho([], 0).
tamanho([_|T], N) :- tamanho(T, N1), N is N1 + 1.
