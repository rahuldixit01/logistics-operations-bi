let
    Source = Table.NestedJoin(val_trips_driver_relationship, {"driver_id"}, stg_drivers, {"driver_id"}, "stg_drivers", JoinKind.LeftOuter),
    #"Expanded stg_drivers" = Table.ExpandTableColumn(Source, "stg_drivers", {"driver_id"}, {"driver_id.1"}),
    #"Filtered Rows" = Table.SelectRows(#"Expanded stg_drivers", each ([driver_id.1] = null))
in
    #"Filtered Rows"