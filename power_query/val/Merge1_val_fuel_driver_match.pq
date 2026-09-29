let
    Source = Table.NestedJoin(val_fuel_driver_match, {"driver_id"}, stg_drivers, {"driver_id"}, "stg_drivers", JoinKind.LeftOuter),
    #"Expanded stg_drivers" = Table.ExpandTableColumn(Source, "stg_drivers", {"driver_id"}, {"driver_id.1"}),
    #"Reordered Columns" = Table.ReorderColumns(#"Expanded stg_drivers",{"fuel_purchase_id", "trip_id", "truck_id", "driver_id", "driver_id.1", "purchase_date", "location_city", "location_state", "gallons", "price_per_gallon", "total_cost", "fuel_card_number"})
in
    #"Reordered Columns"