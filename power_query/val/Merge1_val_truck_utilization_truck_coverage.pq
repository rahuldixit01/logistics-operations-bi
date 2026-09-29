let
    Source = Table.NestedJoin(val_truck_utilization_truck_coverage, {"truck_id"}, stg_trucks, {"truck_id"}, "stg_trucks", JoinKind.LeftOuter),
    #"Expanded stg_trucks" = Table.ExpandTableColumn(Source, "stg_trucks", {"truck_id", "acquisition_date", "status"}, {"truck_id.1", "acquisition_date", "status"})
in
    #"Expanded stg_trucks"