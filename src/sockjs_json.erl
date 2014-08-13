-module(sockjs_json).

-export([encode/1, decode/1]).

%% --------------------------------------------------------------------------

-spec encode(any()) -> iodata().
encode(Thing) ->
    {ok, Json} = json:encode(Thing),
    Json.

-spec decode(iodata()) -> {ok, any()} | {error, any()}.
decode(Encoded) ->
    json:decode(Encoded).
