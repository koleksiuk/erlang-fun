-module(palindrome).
-export([run/1]).
-import(lists, [sublist/2, sublist/3, reverse/1]).

run(N) ->
  is_palindrome(N).

is_palindrome(N) when is_integer(N), N > 9 ->
  is_palindrome(integer_to_list(N));

is_palindrome(N) when is_integer(N) ->
  true;

is_palindrome(List) when is_list(List) ->
  N = trunc(length(List) / 2),
  case length(List) rem 2 of
    0 ->
      is_palindrome(sublist(List, N), sublist(List, N+1, length(List)));
    1 ->
      is_palindrome(sublist(List, N), sublist(List, N+2, length(List)))
  end;

is_palindrome(_) ->
  false.

is_palindrome(L, R) ->
  io:format("Result: ~w -- ~w ~n", [L, R]),
  L =:= reverse(R).
