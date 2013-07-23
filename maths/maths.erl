-module(maths).
-export([add/2, add/3, greet_and_add/2, factorial/1]).

add(A,B) ->
  A + B.

add(A, B, C) ->
  A + B + C.

hello() ->
  io:format("Hello world!~n").

greet_and_add(A,B) ->
  hello(),
  add(A,B).

factorial(0) -> 1;

factorial(N)
  when N > 0 -> N * factorial(N-1).
