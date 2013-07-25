-module(actors).
-export([respond/0]).

respond() ->
  receive
    {From, say_hello} ->
      From ! "Hello?!",
      respond();
    
    {From, how_are_you} ->
      From ! "I'm fine, thanks. And you?",
      respond();

    {From, good} ->
      From ! "Good to know...",
      respond();

    {From, bye} ->
      From ! "See ya!";

    {From, _} ->
      From ! "What?",
      respond()
  end.
