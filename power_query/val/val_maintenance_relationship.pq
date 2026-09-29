let
    Source = stg_maintenance_records,
    #"Removed Duplicates" = Table.Distinct(Source, {"maintenance_id"}),
    #"Removed Duplicates1" = Table.Distinct(#"Removed Duplicates", {"truck_id"})
in
    #"Removed Duplicates1"