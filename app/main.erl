-module(main). 
-export([start/0]).
-import(other, [echo/1]).

start() -> 
   main().

% MODIFY FROM HERE

main() -> 
    io:fwrite(other:echo("Hello world!")).