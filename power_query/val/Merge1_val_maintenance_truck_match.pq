let
    Source = Table.NestedJoin(val_maintenance_truck_match, {"truck_id"}, stg_trucks, {"truck_id"}, "stg_trucks", JoinKind.LeftOuter),
    #"Expanded stg_trucks" = Table.ExpandTableColumn(Source, "stg_trucks", {"truck_id"}, {"truck_id.1"}),
    #"Reordered Columns" = Table.ReorderColumns(#"Expanded stg_trucks",{"maintenance_id", "truck_id", "truck_id.1", "maintenance_date", "maintenance_type", "odometer_reading", "labor_hours", "labor_cost", "parts_cost", "total_cost", "facility_location", "downtime_hours", "service_description"})
in
    #"Reordered Columns"