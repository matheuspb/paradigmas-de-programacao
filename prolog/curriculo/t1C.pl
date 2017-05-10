:- compile('t1B.pl').

% Questao 1 - t1C
nfase(F, N) :-
	findall(F, disciplina(F, _, _), L),
	length(L, N).

% Questao 2 - t1C
ncurso(N) :-
	findall(_, disciplina(_, _, _), L),
	length(L, N).

% Questao 3 - t1C
ntempre(N) :-
	setof(D, P ^ prerequisito(P, D), L),
	length(L, N).

% Questao 4 - t1C
nsaopre(N) :-
	setof(D, P ^ prerequisito(D, P), L),
	length(L, N).

% Questao 5 - t1C
npre(D, N) :-
	disciplina(_, D, _),
	findall(D, prerequisito(_, D), L),
	length(L, N).

% Questao 6 - t1C
maispre(D) :-
	findall(N, (disciplina(_, Ds, _), npre(Ds, N)), L),
	max_list(L, M), npre(D, M).

% Questao 7 - t1C
npos(D, N) :-
	disciplina(_, D, _),
	findall(D, prerequisito(D, _), L),
	length(L, N).

% Questao 8 - t1C
maispos(D) :-
	findall(N, (disciplina(_, Ds, _), npos(Ds, N)), L),
	max_list(L, M), npos(D, M).

% Questao 9 - t1C
maiorcadeia(L) :-
	findall(N, (disciplina(_, D, _), precadeiatamanho(D, N)), Ls),
	max_list(Ls, M), precadeia(Ds, Ld), length(Ld, M), append([Ds], Ld, L).
