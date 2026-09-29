let
    Source = src_file_list,
    #"Removed Other Columns" = Table.SelectColumns(Source,{"Content", "Name"}),
    #"Filtered Rows" = Table.SelectRows(#"Removed Other Columns", each ([Name] = "routes.csv")),
    Content = #"Filtered Rows"{0}[Content],
    #"Imported CSV" = Csv.Document(Content,[Delimiter=",", Columns=9, Encoding=1252, QuoteStyle=QuoteStyle.None]),
    #"Promoted Headers" = Table.PromoteHeaders(#"Imported CSV", [PromoteAllScalars=true]),
    #"Changed Type" = Table.TransformColumnTypes(#"Promoted Headers",{{"route_id", type text}, {"origin_city", type text}, {"origin_state", type text}, {"destination_city", type text}, {"destination_state", type text}, {"typical_distance_miles", Int64.Type}, {"base_rate_per_mile", type number}, {"fuel_surcharge_rate", type number}, {"typical_transit_days", Int64.Type}})
in
    #"Changed Type"