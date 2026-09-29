let
    Source = Table.NestedJoin(stg_trips, {"load_id"}, stg_loads, {"load_id"}, "stg_loads", JoinKind.LeftOuter),
    #"Expanded stg_loads" = Table.ExpandTableColumn(Source, "stg_loads", {"load_id"}, {"load_id.1"})
in
    #"Expanded stg_loads"