-module(recursion).
-export([tail_length/1, sum/1, duplicate/2]).

tail_length(L) ->
  tail_length(L, 0).

tail_length([], N) ->
  N;

tail_length([_|T], N) ->
  tail_length(T, N+1).

sum(L) ->
  sum(L, 0).

sum([], N) ->
  N;

sum([H|T], N) ->
  sum(T, N+H).

duplicate(N, Term) ->
  tail_duplicate(N, Term, []).

tail_duplicate(0, _, List) ->
  List;

tail_duplicate(N, Term, List) when N > 0 ->
  tail_duplicate(N-1, Term, [Term|List]).

