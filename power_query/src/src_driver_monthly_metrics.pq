let
    Source = src_file_list,
    #"Removed Other Columns" = Table.SelectColumns(Source,{"Content", "Name"}),
    #"Filtered Rows" = Table.SelectRows(#"Removed Other Columns", each ([Name] = "driver_monthly_metrics.csv")),
    Content = #"Filtered Rows"{0}[Content],
    #"Imported CSV" = Csv.Document(Content,[Delimiter=",", Columns=9, Encoding=1252, QuoteStyle=QuoteStyle.None]),
    #"Promoted Headers" = Table.PromoteHeaders(#"Imported CSV", [PromoteAllScalars=true]),
    #"Changed Type" = Table.TransformColumnTypes(#"Promoted Headers",{{"driver_id", type text}, {"month", type date}, {"trips_completed", Int64.Type}, {"total_miles", Int64.Type}, {"total_revenue", type number}, {"average_mpg", type number}, {"total_fuel_gallons", type number}, {"on_time_delivery_rate", type number}, {"average_idle_hours", type number}})
in
    #"Changed Type"