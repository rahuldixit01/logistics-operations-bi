let
    Source = stg_truck_utilization_metrics,
    #"Reordered Columns" = Table.ReorderColumns(Source,{"truck_id", "month", "utilization_rate", "trips_completed", "total_miles", "total_revenue", "average_mpg", "maintenance_events", "maintenance_cost", "downtime_hours"}),
    #"Filtered Rows" = Table.SelectRows(#"Reordered Columns", each [utilization_rate] > 1)
in
    #"Filtered Rows"