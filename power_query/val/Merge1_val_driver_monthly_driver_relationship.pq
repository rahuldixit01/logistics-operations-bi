let
    Source = Table.NestedJoin(val_driver_monthly_grain, {"driver_id"}, stg_drivers, {"driver_id"}, "stg_drivers", JoinKind.LeftOuter),
    #"Expanded stg_drivers" = Table.ExpandTableColumn(Source, "stg_drivers", {"driver_id"}, {"driver_id.1"}),
    #"Reordered Columns" = Table.ReorderColumns(#"Expanded stg_drivers",{"driver_id", "driver_id.1", "month", "trips_completed", "total_miles", "total_revenue", "average_mpg", "total_fuel_gallons", "on_time_delivery_rate", "average_idle_hours"})
in
    #"Reordered Columns"