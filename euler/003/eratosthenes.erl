-module(eratosthenes).
-export([run/1]).

run(N) ->
  lists:last(primes(N)).

primes(Prime, Max, Primes,Integers) when Prime > Max ->
    lists:reverse([Prime|Primes]) ++ Integers;
primes(Prime, Max, Primes, Integers) ->
    [NewPrime|NewIntegers] = [ X || X <- Integers, X rem Prime =/= 0 ],
    primes(NewPrime, Max, [Prime|Primes], NewIntegers).

primes(N) ->
    primes(2, round(math:sqrt(N)), [], lists:seq(3,N,2)). % skip odds
