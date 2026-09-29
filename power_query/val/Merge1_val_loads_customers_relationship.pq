let
    Source = Table.NestedJoin(val_loads_customers_relationship, {"customer_id"}, stg_customers, {"customer_id"}, "stg_customers", JoinKind.LeftOuter),
    #"Expanded stg_customers" = Table.ExpandTableColumn(Source, "stg_customers", {"customer_id"}, {"customer_id.1"})
in
    #"Expanded stg_customers"