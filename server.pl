% Configures the web app.
% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

% Import HTTP modules.
:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).

% Predicate to start the server.
serve(Port) :-
    http_server(http_dispatch, [port(Port)]).

% Predicate to stop the server.
stop(Port) :-
    http_stop_server(Port, []).
