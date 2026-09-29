let
    Source = Table.NestedJoin(val_delivery_events_facility_relationship, {"facility_id"}, stg_facilities, {"facility_id"}, "stg_facilities", JoinKind.LeftOuter),
    #"Expanded stg_facilities" = Table.ExpandTableColumn(Source, "stg_facilities", {"facility_id"}, {"facility_id.1"})
in
    #"Expanded stg_facilities"