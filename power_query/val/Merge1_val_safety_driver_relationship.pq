let
    Source = Table.NestedJoin(val_safety_driver_relationship, {"driver_id"}, stg_drivers, {"driver_id"}, "stg_drivers", JoinKind.LeftOuter),
    #"Expanded stg_drivers" = Table.ExpandTableColumn(Source, "stg_drivers", {"driver_id"}, {"driver_id.1"}),
    #"Reordered Columns" = Table.ReorderColumns(#"Expanded stg_drivers",{"incident_id", "trip_id", "truck_id", "driver_id", "driver_id.1", "incident_date", "incident_type", "location_city", "location_state", "at_fault_flag", "injury_flag", "vehicle_damage_cost", "cargo_damage_cost", "claim_amount", "preventable_flag", "description"}),
    #"Filtered Rows" = Table.SelectRows(#"Reordered Columns", each true)
in
    #"Filtered Rows"