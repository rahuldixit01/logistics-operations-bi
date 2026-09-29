let
    Source = Table.NestedJoin(val_trips_trailers_relationship, {"trailer_id"}, stg_trailers, {"trailer_id"}, "stg_trailers", JoinKind.LeftOuter),
    #"Expanded stg_trailers" = Table.ExpandTableColumn(Source, "stg_trailers", {"trailer_id"}, {"trailer_id.1"}),
    #"Filtered Rows" = Table.SelectRows(#"Expanded stg_trailers", each ([trailer_id.1] = null))
in
    #"Filtered Rows"