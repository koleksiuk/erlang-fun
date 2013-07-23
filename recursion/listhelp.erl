-module(listhelp).
-export([map/2, reject/2, select/2]).

map(_, []) -> [];
map(F, [H|T]) ->
  [F(H)|map(F,T)].

reject(Pred, L) -> reject(Pred, L, []).

reject(_, [], Acc) -> lists:reverse(Acc);
reject(Pred, [H|T], Acc) ->
  case Pred(H) of
    true  -> reject(Pred, T, Acc);
    false -> reject(Pred, T, [H|Acc])
  end.

select(Pred, L) -> select(Pred, L, []).

select(_, [], Acc) -> lists:reverse(Acc);
select(Pred, [H|T], Acc) ->
  case Pred(H) of
    true  -> select(Pred, T, [H|Acc]);
    false -> select(Pred, T, Acc)
  end.
