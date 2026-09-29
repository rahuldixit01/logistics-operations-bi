let
    Source = src_file_list,
    #"Removed Other Columns" = Table.SelectColumns(Source,{"Content", "Name"}),
    #"Filtered Rows" = Table.SelectRows(#"Removed Other Columns", each ([Name] = "facilities.csv")),
    #"Reordered Columns" = Table.ReorderColumns(#"Filtered Rows",{"Name", "Content"}),
    Content = #"Reordered Columns"{0}[Content],
    #"Imported CSV" = Csv.Document(Content,[Delimiter=",", Columns=9, Encoding=1252, QuoteStyle=QuoteStyle.None]),
    #"Promoted Headers" = Table.PromoteHeaders(#"Imported CSV", [PromoteAllScalars=true]),
    #"Changed Type" = Table.TransformColumnTypes(#"Promoted Headers",{{"facility_id", type text}, {"facility_name", type text}, {"facility_type", type text}, {"city", type text}, {"state", type text}, {"latitude", type number}, {"longitude", type number}, {"dock_doors", Int64.Type}, {"operating_hours", type text}})
in
    #"Changed Type"