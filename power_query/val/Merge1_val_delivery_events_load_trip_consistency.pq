let
    Source = Table.NestedJoin(val_delivery_events_load_trip_consistency, {"trip_id"}, stg_trips, {"trip_id"}, "stg_trips", JoinKind.LeftOuter),
    #"Expanded stg_trips" = Table.ExpandTableColumn(Source, "stg_trips", {"load_id"}, {"load_id.1"}),
    #"Added Conditional Column" = Table.AddColumn(#"Expanded stg_trips", "load_trip_match", each if [load_id] = [load_id.1] then "MATCH" else "NOT_MATCHED")
in
    #"Added Conditional Column"