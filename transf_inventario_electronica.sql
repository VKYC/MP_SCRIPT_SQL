SELECT 
      MP."Nombre Documento" as picking_type_id,
      MP." Homologación Ubicación Odoo " as location_id,
      MP."Validar deposito" as location_dest_id,
      MP."Fecha" as scheduled_date,
      CONCAT('[',MP."Articulo",']', ' ', MP."Nombre Articulo") as "move_line_ids/product_id",
      MP."Unidad de Stock" as "move_line_ids/product_uom_id",
      MP."Nro_Lote" as "move_line_ids/lot_id",
      MP." Homologación Proyecto Odoo / Etiqueta analítica " as "move_line_ids/analytic_account_id",
      MP." Homologación Ubicación Odoo " as "move_line_ids/analytic_tag_ids",
      MP."Validar deposito" as "move_line_ids/location_id",
      MP." Cantidad " as "move_line_ids/qty_done",
      MP." Homologación Proyecto Odoo / Etiqueta analítica " as default_analytic_tag_ids,
      MP." Homologación Proyecto Odoo / Etiqueta analítica " as default_analytic_account_id
FROM movto_paraanalisisenero2024 MP
WHERE MP."Nombre Documento" = 'Transf. Inventario (un paso) electronica'