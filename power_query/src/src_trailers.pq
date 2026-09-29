let
    Source = src_file_list,
    #"Removed Other Columns" = Table.SelectColumns(Source,{"Content", "Name"}),
    #"Filtered Rows" = Table.SelectRows(#"Removed Other Columns", each ([Name] = "trailers.csv")),
    Content = #"Filtered Rows"{0}[Content],
    #"Imported CSV" = Csv.Document(Content,[Delimiter=",", Columns=9, Encoding=1252, QuoteStyle=QuoteStyle.None]),
    #"Promoted Headers" = Table.PromoteHeaders(#"Imported CSV", [PromoteAllScalars=true]),
    #"Changed Type" = Table.TransformColumnTypes(#"Promoted Headers",{{"trailer_id", type text}, {"trailer_number", type text}, {"trailer_type", type text}, {"length_feet", Int64.Type}, {"model_year", Int64.Type}, {"vin", type text}, {"acquisition_date", type date}, {"status", type text}, {"current_location", type text}})
in
    #"Changed Type"