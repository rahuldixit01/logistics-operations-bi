let
    Source = stg_truck_utilization_metrics,
    #"Grouped Rows" = Table.Group(Source, {"truck_id"}, {{"truck_month_count", each Table.RowCount(_), Int64.Type}, {"first_metric_month", each List.Min([month]), type nullable date}, {"last_metric_month", each List.Max([month]), type nullable date}})
in
    #"Grouped Rows"