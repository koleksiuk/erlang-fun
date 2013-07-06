-module(products).
-export([cost/1]).

cost(oranges)   -> 5;
cost(newspaper) -> 4;
cost(apples)    -> 3;
cost(pears)     -> 8;
cost(bananas)   -> 7.
