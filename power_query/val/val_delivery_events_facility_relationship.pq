let
    Source = stg_delivery_events,
    #"Removed Other Columns" = Table.SelectColumns(Source,{"event_id", "facility_id"})
in
    #"Removed Other Columns"