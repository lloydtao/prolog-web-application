% Generates web responses.
% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

% Import required web modules 
:- use_module(library(http/thread_httpd)).
:- use_module(library(http/html_head)).
:- use_module(library(http/html_write)).
:- use_module(library(http/http_dispatch)).
:- use_module(library(http/http_error)).
:- use_module(library(http/http_files)).

index(_Request) :-
	reply_html_page(
	    [
            title('Prolog Web App'),
            link([
                id("TailwindCSS"), 
                rel("stylesheet"), 
                href("static/tailwind.min.css")
            ])
        ],
	    [
            main(class("min-h-screen bg-blue-50"),
                [
                    nav(class("bg-white shadow mb-5"),
                        div(class("container mx-auto px-5"),
                            div(
                                h1(class("text-lg py-3"), "Prolog Web App")
                            )
                        )
                    ),
                    div(class("container mx-auto px-5"),
                        div(class("bg-white rounded shadow px-5 py-3"),
                            [
                                h1(class("text-lg font-medium"), "Hello!"),
                                p(class=("mt-1"), "This page is being served by SWI-Prolog.")
                            ]
                        )
                    )
                ]
            )
        ]
    ).
