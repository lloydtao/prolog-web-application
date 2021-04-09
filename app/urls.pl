% Routes URL paths to views.
% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

% Import views.
:- [views].

% Register paths
:- http_handler(root(.), index, []).
