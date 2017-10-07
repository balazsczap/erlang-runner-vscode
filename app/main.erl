-module(main). 
-export([start/0]).
-import(other, [echo/1]).

start() -> 
   main().

% MODIFY FROM HERE

main() ->
try
   io:fwrite(other:echo("Hello world!"))
catch
   _:_ ->
      io:format("Backtrace ~p~n", [erlang:get_stacktrace()])
end.
