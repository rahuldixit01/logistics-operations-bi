let
    Source = Table.NestedJoin(val_safety_trip_relationship, {"trip_id"}, stg_trips, {"trip_id"}, "stg_trips", JoinKind.LeftOuter),
    #"Expanded stg_trips" = Table.ExpandTableColumn(Source, "stg_trips", {"trip_id"}, {"trip_id.1"}),
    #"Reordered Columns" = Table.ReorderColumns(#"Expanded stg_trips",{"incident_id", "trip_id", "trip_id.1", "truck_id", "driver_id", "incident_date", "incident_type", "location_city", "location_state", "at_fault_flag", "injury_flag", "vehicle_damage_cost", "cargo_damage_cost", "claim_amount", "preventable_flag", "description"})
in
    #"Reordered Columns"