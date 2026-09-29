let
    Source = stg_trips,
    #"Removed Other Columns" = Table.SelectColumns(Source,{"trip_id", "driver_id"})
in
    #"Removed Other Columns"