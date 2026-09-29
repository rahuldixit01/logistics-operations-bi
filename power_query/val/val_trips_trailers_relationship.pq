let
    Source = stg_trips,
    #"Removed Other Columns" = Table.SelectColumns(Source,{"trip_id", "trailer_id"})
in
    #"Removed Other Columns"