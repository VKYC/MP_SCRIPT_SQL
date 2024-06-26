SELECT
	PT.name as Producto,
	PP.default_code as Referencia_interna,
	SP.name as Tipo_de_movimiento,
	SP.origin as Orden_de_compra,
	SP.scheduled_date as Fecha_prevista,
	SML.product_qty as Cantidad_solicitada,
	SML.qty_done as Cantidad_hecha,
	SP.state as Estado
FROM stock_picking SP
	LEFT JOIN stock_move_line SML ON SML.picking_id = SP.id
	LEFT JOIN product_product PP ON PP.id = SML.product_id
	LEFT JOIN product_template PT ON PT.id = PP.product_tmpl_id
where SP.origin like 'P0%'
and SP.state = 'done'
