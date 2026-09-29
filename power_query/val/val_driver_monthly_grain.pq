let
    Source = stg_driver_monthly_metrics,
    #"Removed Duplicates" = Table.Distinct(Source, {"driver_id", "month"})
in
    #"Removed Duplicates"