let
    Source = Table.NestedJoin(val_trips_trucks_relationship, {"truck_id"}, stg_trucks, {"truck_id"}, "stg_trucks", JoinKind.LeftOuter),
    #"Expanded stg_trucks" = Table.ExpandTableColumn(Source, "stg_trucks", {"truck_id"}, {"truck_id.1"}),
    #"Filtered Rows" = Table.SelectRows(#"Expanded stg_trucks", each ([truck_id.1] = null))
in
    #"Filtered Rows"