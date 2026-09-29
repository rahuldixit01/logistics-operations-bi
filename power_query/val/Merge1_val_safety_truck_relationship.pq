let
    Source = Table.NestedJoin(val_safety_truck_relationship, {"truck_id"}, stg_trucks, {"truck_id"}, "stg_trucks", JoinKind.LeftOuter),
    #"Expanded stg_trucks" = Table.ExpandTableColumn(Source, "stg_trucks", {"truck_id"}, {"truck_id.1"}),
    #"Reordered Columns" = Table.ReorderColumns(#"Expanded stg_trucks",{"incident_id", "trip_id", "truck_id", "truck_id.1", "driver_id", "incident_date", "incident_type", "location_city", "location_state", "at_fault_flag", "injury_flag", "vehicle_damage_cost", "cargo_damage_cost", "claim_amount", "preventable_flag", "description"}),
    #"Filtered Rows" = Table.SelectRows(#"Reordered Columns", each true)
in
    #"Filtered Rows"