let
    Source = stg_loads,
    #"Removed Other Columns" = Table.SelectColumns(Source,{"load_id", "customer_id"})
in
    #"Removed Other Columns"