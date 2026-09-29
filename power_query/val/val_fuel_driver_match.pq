let
    Source = stg_fuel_purchases,
    #"Filtered Rows" = Table.SelectRows(Source, each ([driver_id] <> ""))
in
    #"Filtered Rows"