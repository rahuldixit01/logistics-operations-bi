let
    Source = Table.NestedJoin(val_fuel_trip_consistency, {"trip_id"}, stg_trips, {"trip_id"}, "stg_trips", JoinKind.LeftOuter),
    #"Reordered Columns" = Table.ReorderColumns(Source,{"fuel_purchase_id", "trip_id", "truck_id", "driver_id", "stg_trips", "purchase_date", "location_city", "location_state", "gallons", "price_per_gallon", "total_cost", "fuel_card_number"}),
    #"Expanded stg_trips" = Table.ExpandTableColumn(#"Reordered Columns", "stg_trips", {"driver_id", "truck_id"}, {"driver_id.1", "truck_id.1"}),
    #"Reordered Columns1" = Table.ReorderColumns(#"Expanded stg_trips",{"fuel_purchase_id", "trip_id", "truck_id", "driver_id", "truck_id.1", "driver_id.1", "purchase_date", "location_city", "location_state", "gallons", "price_per_gallon", "total_cost", "fuel_card_number"}),
    #"Added Conditional Column" = Table.AddColumn(#"Reordered Columns1", "truck_match", each if [truck_id] = [truck_id.1] then "MATCH" else "UNMATCH"),
    #"Reordered Columns2" = Table.ReorderColumns(#"Added Conditional Column",{"fuel_purchase_id", "trip_id", "truck_id", "driver_id", "truck_id.1", "driver_id.1", "truck_match", "purchase_date", "location_city", "location_state", "gallons", "price_per_gallon", "total_cost", "fuel_card_number"}),
    #"Added Conditional Column1" = Table.AddColumn(#"Reordered Columns2", "driver_match", each if [driver_id] = [driver_id.1] then "MATCH" else "UNMATCH"),
    #"Reordered Columns3" = Table.ReorderColumns(#"Added Conditional Column1",{"fuel_purchase_id", "trip_id", "truck_id", "driver_id", "truck_id.1", "driver_id.1", "truck_match", "driver_match", "purchase_date", "location_city", "location_state", "gallons", "price_per_gallon", "total_cost", "fuel_card_number"})
in
    #"Reordered Columns3"