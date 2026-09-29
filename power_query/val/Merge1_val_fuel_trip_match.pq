let
    Source = Table.NestedJoin(val_fuel_trip_match, {"trip_id"}, stg_trips, {"trip_id"}, "stg_trips", JoinKind.LeftOuter),
    #"Expanded stg_trips" = Table.ExpandTableColumn(Source, "stg_trips", {"trip_id"}, {"trip_id.1"}),
    #"Filtered Rows" = Table.SelectRows(#"Expanded stg_trips", each ([truck_id] <> ""))
in
    #"Filtered Rows"