TRUNCATE TABLE bronze.crm_cust_info;

BULK INSERT bronze.crm_cust_info
FROM 'C:\sql\dwh_project\datasets\source_crm\cust_info.csv'
WITH (
    FIRSTROW = 2,           -- Salta la cabecera
    FIELDTERMINATOR = ',',  -- Separador de columnas
    TABLOCK                 -- Bloquea la tabla completa: carga más rápida
);