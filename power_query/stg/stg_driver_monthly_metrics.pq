let
    Source = src_driver_monthly_metrics,
    #"Changed Type" = Table.TransformColumnTypes(Source,{{"total_revenue", type number}})
in
    #"Changed Type"