let
    Source = stg_delivery_events,
    #"Removed Other Columns" = Table.SelectColumns(Source,{"trip_id"}),
    #"Removed Duplicates" = Table.Distinct(#"Removed Other Columns")
in
    #"Removed Duplicates"