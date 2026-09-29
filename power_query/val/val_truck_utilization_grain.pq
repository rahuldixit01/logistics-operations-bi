let
    Source = stg_truck_utilization_metrics,
    #"Removed Other Columns" = Table.SelectColumns(Source,{"truck_id", "month"})
in
    #"Removed Other Columns"