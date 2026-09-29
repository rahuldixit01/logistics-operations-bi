let
    Source = Table.NestedJoin(stg_loads, {"load_id"}, stg_trips, {"load_id"}, "stg_trips", JoinKind.LeftOuter),
    #"Expanded stg_trips" = Table.ExpandTableColumn(Source, "stg_trips", {"trip_id"}, {"trip_id"})
in
    #"Expanded stg_trips"