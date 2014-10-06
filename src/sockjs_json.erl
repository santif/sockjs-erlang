-module(sockjs_json).

-export([encode/1, decode/1]).

%% --------------------------------------------------------------------------

-spec encode(any()) -> iodata().
encode(Thing) ->
    'Elixir.Poison':'encode!'(Thing, [{iodata, true}]).

-spec decode(iodata()) -> any().
decode(Encoded) ->
    'Elixir.Poison':'decode!'(Encoded).
