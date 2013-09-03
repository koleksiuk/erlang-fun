-module(requester).
-export([request/1]).
-import(request).

request(URL) ->
  request:async_request(self(), URL),

  receive
    {ok, Result}->
      case Result of
        {Header, _, RequestBody} ->
          case Header of
            {_,200,_} ->
              io:format("~p", [RequestBody]);
            {_, Code, _} ->
              io:format("Request is wrong! Returned status: ~s", [Code])
          end;
        _ ->
          io:format("Wrong message format?")
      end;
    {error, Message }->
      io:format("~s", [Message])
  end.

