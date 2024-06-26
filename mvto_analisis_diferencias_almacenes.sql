SELECT 	
    MP."Fec.Doc.",
    MP."Nombre Documento",
    MP."Nombre Depósito", 
    MP." Homologación Ubicación Odoo ",
    MP."Nombre Articulo",
    MP." Cantidad ",
    MP."Nro.Trans.",
    MP."Clasificación1",
    MP." Homologación Proyecto Odoo / Etiqueta analítica "
FROM "CUADRATURAINV".public.movto_paraanalisisenero2024 MP 
WHERE 
    --MP."Nombre Documento" ='Transferencia de Inventario (un paso)' 
    --AND MP."Articulo" ='FERR000004'
    --AND MP."Nro.Trans." = 1885677
    EXTRACT(DAY FROM to_timestamp(MP."Fec.Doc.", 'DD-MM-YYYY')) = 3
    AND EXTRACT(MONTH FROM to_timestamp(MP."Fec.Doc.", 'DD-MM-YYYY')) = 1
    AND EXTRACT(YEAR FROM to_timestamp(MP."Fec.Doc.", 'DD-MM-YYYY')) = 2024	 
ORDER BY 
    MP."Nombre Documento",
    MP."Nro.Trans.",
    MP."Nombre Articulo",
    MP." Cantidad " DESC;