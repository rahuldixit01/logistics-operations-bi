let
    Source = src_loads,
    #"Filtered Rows" = Table.SelectRows(Source, each true)
in
    #"Filtered Rows"