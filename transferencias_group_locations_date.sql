SELECT 
    TS.location_id,
    TS.location_dest_id,
    TS.scheduled_date,
    STRING_AGG(TS."move_line_ids/product_id", ', ') AS product_ids,
    STRING_AGG(TS."move_line_ids/product_uom_id", ', ') AS product_uom_ids,
    STRING_AGG(TS."move_line_ids/lot_id", ', ') AS lot_ids,
    STRING_AGG(TS."move_line_ids/analytic_account_id", ', ') AS analytic_account_ids,
    STRING_AGG(TS."move_line_ids/analytic_tag_ids", ', ') AS analytic_tag_ids,
    STRING_AGG(TS."move_line_ids/location_id", ', ') AS move_line_location_ids,
    STRING_AGG(TS."move_line_ids/location_dest_id", ', ') AS move_line_location_dest_ids,
    SUM(CAST(TS."move_line_ids/qty_done" AS numeric)) AS total_qty_done,
    STRING_AGG(TS.default_analytic_tag_ids, ', ') AS default_analytic_tag_ids,
    STRING_AGG(TS.default_analytic_account_id, ', ') AS default_analytic_account_ids
FROM 
    transferencias TS
GROUP BY 
    TS.location_id, 
    TS.location_dest_id, 
    TS.scheduled_date;