let
    Source = src_file_list,
    #"Removed Other Columns" = Table.SelectColumns(Source,{"Content", "Name"}),
    #"Filtered Rows" = Table.SelectRows(#"Removed Other Columns", each ([Name] = "drivers.csv")),
    Content = #"Filtered Rows"{0}[Content],
    #"Imported CSV" = Csv.Document(Content,[Delimiter=",", Columns=12, Encoding=1252, QuoteStyle=QuoteStyle.None]),
    #"Promoted Headers" = Table.PromoteHeaders(#"Imported CSV", [PromoteAllScalars=true]),
    #"Changed Type" = Table.TransformColumnTypes(#"Promoted Headers",{{"driver_id", type text}, {"first_name", type text}, {"last_name", type text}, {"hire_date", type date}, {"termination_date", type date}, {"license_number", type text}, {"license_state", type text}, {"date_of_birth", type date}, {"home_terminal", type text}, {"employment_status", type text}, {"cdl_class", type text}, {"years_experience", Int64.Type}})
in
    #"Changed Type"