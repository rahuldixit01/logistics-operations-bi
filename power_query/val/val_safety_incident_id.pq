let
    Source = stg_safety_incidents,
    #"Removed Duplicates" = Table.Distinct(Source, {"incident_id"})
in
    #"Removed Duplicates"