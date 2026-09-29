let
    Source = stg_truck_utilization_metrics,
    #"Removed Other Columns" = Table.SelectColumns(Source,{"truck_id"}),
    #"Removed Duplicates" = Table.Distinct(#"Removed Other Columns")
in
    #"Removed Duplicates"