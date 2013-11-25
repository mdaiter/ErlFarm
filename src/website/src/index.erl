-module(index).
-compile(export_all).
-include_lib("n2o/include/wf.hrl").
-include_lib("avz/include/avz.hrl").

main() ->
  [ #p{ body = <<"Hello">>}].
