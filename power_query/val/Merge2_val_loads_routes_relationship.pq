let
    Source = Table.NestedJoin(val_loads_routes_relationship, {"route_id"}, stg_routes, {"route_id"}, "stg_routes", JoinKind.LeftOuter),
    #"Expanded stg_routes" = Table.ExpandTableColumn(Source, "stg_routes", {"route_id"}, {"route_id.1"})
in
    #"Expanded stg_routes"