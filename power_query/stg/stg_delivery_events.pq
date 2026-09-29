let
    Source = src_delivery_events,
    #"Filtered Rows" = Table.SelectRows(Source, each true)
in
    #"Filtered Rows"