let
    Source = src_file_list,
    #"Removed Other Columns" = Table.SelectColumns(Source,{"Content", "Name"}),
    #"Filtered Rows" = Table.SelectRows(#"Removed Other Columns", each ([Name] = "trucks.csv")),
    Content = #"Filtered Rows"{0}[Content],
    #"Imported CSV" = Csv.Document(Content,[Delimiter=",", Columns=11, Encoding=1252, QuoteStyle=QuoteStyle.None]),
    #"Promoted Headers" = Table.PromoteHeaders(#"Imported CSV", [PromoteAllScalars=true]),
    #"Changed Type" = Table.TransformColumnTypes(#"Promoted Headers",{{"truck_id", type text}, {"unit_number", type text}, {"make", type text}, {"model_year", Int64.Type}, {"vin", type text}, {"acquisition_date", type date}, {"acquisition_mileage", Int64.Type}, {"fuel_type", type text}, {"tank_capacity_gallons", Int64.Type}, {"status", type text}, {"home_terminal", type text}})
in
    #"Changed Type"