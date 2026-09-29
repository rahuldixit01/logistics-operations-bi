let
    Source = stg_trips,
    #"Removed Duplicates" = Table.Distinct(Source, {"load_id"})
in
    #"Removed Duplicates"