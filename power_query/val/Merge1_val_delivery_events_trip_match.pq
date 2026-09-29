let
    Source = Table.NestedJoin(val_delivery_events_trip_match, {"trip_id"}, stg_trips, {"trip_id"}, "stg_trips", JoinKind.LeftOuter),
    #"Expanded stg_trips" = Table.ExpandTableColumn(Source, "stg_trips", {"trip_id"}, {"trip_id.1"})
in
    #"Expanded stg_trips"