let
    Source = src_file_list,
    #"Removed Other Columns" = Table.SelectColumns(Source,{"Name", "Content"}),
    #"Filtered Rows" = Table.SelectRows(#"Removed Other Columns", each ([Name] = "loads.csv")),
    Content = #"Filtered Rows"{0}[Content],
    #"Imported CSV" = Csv.Document(Content,[Delimiter=",", Columns=12, Encoding=1252, QuoteStyle=QuoteStyle.None]),
    #"Promoted Headers" = Table.PromoteHeaders(#"Imported CSV", [PromoteAllScalars=true]),
    #"Changed Type" = Table.TransformColumnTypes(#"Promoted Headers",{{"load_id", type text}, {"customer_id", type text}, {"route_id", type text}, {"load_date", type date}, {"load_type", type text}, {"weight_lbs", Int64.Type}, {"pieces", Int64.Type}, {"revenue", type number}, {"fuel_surcharge", type number}, {"accessorial_charges", Int64.Type}, {"load_status", type text}, {"booking_type", type text}})
in
    #"Changed Type"