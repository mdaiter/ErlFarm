-module(index).
-compile(export_all).
-include_lib("n2o/include/wf.hrl").

main() ->
  [ #p{ body = <<"Hello">>}].
