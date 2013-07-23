-module(quicksort).
-export([sort/1]).

sort([]) -> [];
sort([Pivot|Rest]) ->
  {Smaller, Larger} = partition(Pivot, Rest, [], []),
  sort(Smaller) ++ [Pivot] ++ sort(Larger).

partition(_, [], Smaller, Larger) -> {Smaller, Larger};
partition(Pivot, [H|T], Smaller, Larger) ->
  if H =< Pivot -> partition(Pivot, T, [H|Smaller], Larger);
     H > Pivot  -> partition(Pivot, T, Smaller, [H|Larger])
  end.
