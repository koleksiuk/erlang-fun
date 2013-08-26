-module(fib).
-export([run/1, fib/1, fib/4]).
-import(lists, [filter/2, reverse/1, sum/1]).

run(Max) ->
  sum(filter(fun(X) -> X rem 2 =:= 0 end, fib(Max))).

fib(Max) ->
  case Max =:= 1 of
    false ->
      fib(1, 1, Max, [1,1]);
    true ->
      [1,1]
  end.


fib(M, N, Max, L) ->
  if
    M + N < Max ->
      fib(N, M + N, Max, [M+N|L]);
    true ->
      reverse(L)
  end.
