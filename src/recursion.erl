%%%-------------------------------------------------------------------
%%% @author pingjianwei
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 30. 四月 2017 21:02
%%%-------------------------------------------------------------------
-module(recursion).
-author("pingjianwei").

%% API
-export([sublist/2]).

sublist(L,N) ->
  sublist(L,N,[]).
sublist([],_,Sublist) ->
  Sublist;
sublist(_,0,Sublist) ->
  Sublist;
sublist([H|T],N,Sublist) when N>0 ->
  sublist(T,N-1,[Sublist|H]).


