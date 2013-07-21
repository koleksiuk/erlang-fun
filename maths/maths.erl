-module(maths).
-export([add/2, add/3, greet_and_add/2]).

add(A,B) ->
  A + B.

add(A, B, C) ->
  A + B + C.

hello() ->
  io:format("Hello world!~n").

greet_and_add(A,B) ->
  hello(),
  add(A,B).

