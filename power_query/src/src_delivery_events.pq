let
    Source = src_file_list,
    #"Removed Other Columns" = Table.SelectColumns(Source,{"Content", "Name"}),
    #"Filtered Rows" = Table.SelectRows(#"Removed Other Columns", each ([Name] = "delivery_events.csv")),
    Content = #"Filtered Rows"{0}[Content],
    #"Imported CSV" = Csv.Document(Content,[Delimiter=",", Columns=11, Encoding=1252, QuoteStyle=QuoteStyle.None]),
    #"Promoted Headers" = Table.PromoteHeaders(#"Imported CSV", [PromoteAllScalars=true]),
    #"Changed Type" = Table.TransformColumnTypes(#"Promoted Headers",{{"event_id", type text}, {"load_id", type text}, {"trip_id", type text}, {"event_type", type text}, {"facility_id", type text}, {"scheduled_datetime", type datetime}, {"actual_datetime", type datetime}, {"detention_minutes", Int64.Type}, {"on_time_flag", type logical}, {"location_city", type text}, {"location_state", type text}})
in
    #"Changed Type"