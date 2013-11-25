-module(website_app).
-behaviour(application).
-include_lib("n2o/include/wf.hrl").
-compile(export_all).
-define(APP, web).
-export([start/2, stop/1]).

startApps() ->
  application:start(sasl),
  application:start(crypto),
  application:start(ranch),
  application:start(cowlib),
  application:start(cowboy),
  application:start(gproc),
  application:start(n2o).

start(_Type, _Args) ->
  startApps(),
  website_sup:start_link().

stop(_State) ->
  ok.
