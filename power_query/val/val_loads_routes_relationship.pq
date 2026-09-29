let
    Source = src_loads,
    #"Removed Other Columns" = Table.SelectColumns(Source,{"load_id", "route_id"})
in
    #"Removed Other Columns"