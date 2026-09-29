let
    Source = Table.NestedJoin(val_truck_utilization_truck_relationship, {"truck_id"}, stg_trucks, {"truck_id"}, "stg_trucks", JoinKind.LeftOuter),
    #"Expanded stg_trucks" = Table.ExpandTableColumn(Source, "stg_trucks", {"truck_id"}, {"truck_id.1"})
in
    #"Expanded stg_trucks"