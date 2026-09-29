let
    Source = Table.NestedJoin(Merge1_val_fuel_trip_match, {"truck_id"}, stg_trucks, {"truck_id"}, "stg_trucks", JoinKind.LeftOuter),
    #"Expanded stg_trucks" = Table.ExpandTableColumn(Source, "stg_trucks", {"truck_id"}, {"truck_id.1"}),
    #"Reordered Columns" = Table.ReorderColumns(#"Expanded stg_trucks",{"fuel_purchase_id", "trip_id", "truck_id", "driver_id", "truck_id.1", "purchase_date", "location_city", "location_state", "gallons", "price_per_gallon", "total_cost", "fuel_card_number", "trip_id.1"})
in
    #"Reordered Columns"