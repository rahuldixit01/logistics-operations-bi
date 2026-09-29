let
    Source = stg_driver_monthly_metrics,
    #"Removed Duplicates" = Table.Distinct(Source, {"driver_id"}),
    #"Removed Other Columns" = Table.SelectColumns(#"Removed Duplicates",{"driver_id"})
in
    #"Removed Other Columns"