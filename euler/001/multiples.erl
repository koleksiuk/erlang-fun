-module(multiples).
-export([run/1, execute/1, pred/1]).
-import(lists, [filter/2, sum/1, seq/2]).

run(Last) ->
  execute(seq(1,Last)).

execute(L) ->
  sum(filter({?MODULE, pred}, L)).

pred(X) ->
  if
    X rem 3 =:= 0 ->
      true;
    X rem 5 =:= 0 ->
      true;
    true ->
      false
  end.

