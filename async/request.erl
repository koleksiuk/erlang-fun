-module(request).
-export([async_request/2]).

async_request(Pid, URL) ->
  inets:start(),
  {ok, RequestID} = httpc:request(get, { URL, []}, [], [{sync, false}]),
  
  receive
    {http, {RequestId, Result}} ->
      Pid ! {ok, Result}
  after 500 ->
      {error, "Could not get it!"}
  end.

