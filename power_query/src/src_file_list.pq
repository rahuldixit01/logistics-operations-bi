let
    Source = Folder.Files("E:\Portfolio\logistics-operations-bi\data\raw"),
    #"Filtered Rows" = Table.SelectRows(Source, each ([Extension] = ".csv")),
    #"Removed Other Columns" = Table.SelectColumns(#"Filtered Rows",{"Content", "Name"})
in
    #"Removed Other Columns"