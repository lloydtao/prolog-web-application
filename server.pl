% Configures the web app.
% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

% Import required HTTP modules.
:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_files)).
:- use_module(library(http/http_dispatch)).

% Load web app modules.
:- [app/init].

% Serve static files for each web app module.
:- http_handler('/static', serve_static, [prefix]).

serve_static(Request) :-
    http_reply_from_files('app/static/app', [], Request).

serve_static(Request) :-
    http_404([], Request).

% Predicate to start the server.
serve(Port) :-
    http_server(http_dispatch, [port(Port)]).

% Predicate to stop the server.
stop(Port) :-
    http_stop_server(Port, []).
