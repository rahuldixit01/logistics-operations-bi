let
    Source = src_file_list,
    #"Removed Other Columns" = Table.SelectColumns(Source,{"Content", "Name"}),
    #"Filtered Rows" = Table.SelectRows(#"Removed Other Columns", each ([Name] = "trips.csv")),
    Content = #"Filtered Rows"{0}[Content],
    #"Imported CSV" = Csv.Document(Content,[Delimiter=",", Columns=12, Encoding=1252, QuoteStyle=QuoteStyle.None]),
    #"Promoted Headers" = Table.PromoteHeaders(#"Imported CSV", [PromoteAllScalars=true]),
    #"Changed Type" = Table.TransformColumnTypes(#"Promoted Headers",{{"trip_id", type text}, {"load_id", type text}, {"driver_id", type text}, {"truck_id", type text}, {"trailer_id", type text}, {"dispatch_date", type date}, {"actual_distance_miles", Int64.Type}, {"actual_duration_hours", type number}, {"fuel_gallons_used", type number}, {"average_mpg", type number}, {"idle_time_hours", type number}, {"trip_status", type text}})
in
    #"Changed Type"