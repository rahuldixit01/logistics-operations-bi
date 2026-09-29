let
    Source = stg_driver_monthly_metrics,
    #"Grouped Rows" = Table.Group(Source, {"driver_id"}, {{"driver_month_count", each Table.RowCount(_), Int64.Type}, {"first_metric_month", each List.Min([month]), type nullable date}, {"last_metric_month", each List.Max([month]), type nullable date}})
in
    #"Grouped Rows"