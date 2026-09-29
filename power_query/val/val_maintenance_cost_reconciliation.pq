let
    Source = stg_maintenance_records,
    #"Added Custom" = Table.AddColumn(Source, "calculated_total_cost", each [labor_cost] + [parts_cost]),
    #"Reordered Columns" = Table.ReorderColumns(#"Added Custom",{"maintenance_id", "truck_id", "maintenance_date", "maintenance_type", "odometer_reading", "labor_hours", "labor_cost", "parts_cost", "total_cost", "calculated_total_cost", "facility_location", "downtime_hours", "service_description"}),
    #"Changed Type" = Table.TransformColumnTypes(#"Reordered Columns",{{"calculated_total_cost", type number}, {"total_cost", type number}}),
    #"Added Conditional Column" = Table.AddColumn(#"Changed Type", "cost_match", each if [total_cost] = [calculated_total_cost] then "MATCHED" else "UNMATCHED"),
    #"Changed Type1" = Table.TransformColumnTypes(#"Added Conditional Column",{{"cost_match", type text}}),
    #"Reordered Columns1" = Table.ReorderColumns(#"Changed Type1",{"maintenance_id", "truck_id", "maintenance_date", "maintenance_type", "odometer_reading", "labor_hours", "labor_cost", "parts_cost", "total_cost", "calculated_total_cost", "cost_match", "facility_location", "downtime_hours", "service_description"}),
    #"Added Custom1" = Table.AddColumn(#"Reordered Columns1", "cost_difference", each [total_cost] - [calculated_total_cost]),
    #"Reordered Columns2" = Table.ReorderColumns(#"Added Custom1",{"maintenance_id", "truck_id", "maintenance_date", "maintenance_type", "odometer_reading", "labor_hours", "labor_cost", "parts_cost", "total_cost", "calculated_total_cost", "cost_difference", "cost_match", "facility_location", "downtime_hours", "service_description"}),
    #"Removed Columns" = Table.RemoveColumns(#"Reordered Columns2",{"cost_match"}),
    #"Added Custom2" = Table.AddColumn(#"Removed Columns", "calculated_total_cost_rounded", each Number.Round([calculated_total_cost], 2)),
    #"Reordered Columns3" = Table.ReorderColumns(#"Added Custom2",{"maintenance_id", "truck_id", "maintenance_date", "maintenance_type", "odometer_reading", "labor_hours", "labor_cost", "parts_cost", "total_cost", "calculated_total_cost", "cost_difference", "calculated_total_cost_rounded", "facility_location", "downtime_hours", "service_description"}),
    #"Added Custom3" = Table.AddColumn(#"Reordered Columns3", "total_cost_rounded", each Number.Round([total_cost],2)),
    #"Reordered Columns4" = Table.ReorderColumns(#"Added Custom3",{"maintenance_id", "truck_id", "maintenance_date", "maintenance_type", "odometer_reading", "labor_hours", "labor_cost", "parts_cost", "total_cost", "calculated_total_cost", "cost_difference", "total_cost_rounded", "calculated_total_cost_rounded", "facility_location", "downtime_hours", "service_description"}),
    #"Added Conditional Column1" = Table.AddColumn(#"Reordered Columns4", "cost_match", each if [calculated_total_cost_rounded] = [total_cost_rounded] then "MATCHED" else "UNMATCHED"),
    #"Reordered Columns5" = Table.ReorderColumns(#"Added Conditional Column1",{"maintenance_id", "truck_id", "maintenance_date", "maintenance_type", "odometer_reading", "labor_hours", "labor_cost", "parts_cost", "total_cost", "calculated_total_cost", "cost_difference", "total_cost_rounded", "calculated_total_cost_rounded", "cost_match", "facility_location", "downtime_hours", "service_description"}),
    #"Changed Type2" = Table.TransformColumnTypes(#"Reordered Columns5",{{"cost_difference", type number}})
in
    #"Changed Type2"