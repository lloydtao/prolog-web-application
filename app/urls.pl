% Routes URL paths to views.
% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

% Import HTTP modules and views.
:- use_module(library(http/http_dispatch)).
:- [views].

% Register paths
:- http_handler(root(.), index, []).
