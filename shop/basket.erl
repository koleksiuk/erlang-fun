-module(basket).
-export([basket/1]).

basket([{What, N}|T]) -> products:cost(What) * N + basket(T);
basket([])            -> 0.

