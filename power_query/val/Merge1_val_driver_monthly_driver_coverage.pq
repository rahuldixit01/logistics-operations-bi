let
    Source = Table.NestedJoin(val_driver_monthly_driver_coverage, {"driver_id"}, stg_drivers, {"driver_id"}, "stg_drivers", JoinKind.LeftOuter),
    #"Expanded stg_drivers" = Table.ExpandTableColumn(Source, "stg_drivers", {"driver_id", "termination_date", "employment_status"}, {"driver_id.1", "termination_date", "employment_status"})
in
    #"Expanded stg_drivers"