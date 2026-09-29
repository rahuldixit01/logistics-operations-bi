let
    Source = stg_fuel_purchases,
    #"Removed Duplicates" = Table.Distinct(Source, {"trip_id"})
in
    #"Removed Duplicates"