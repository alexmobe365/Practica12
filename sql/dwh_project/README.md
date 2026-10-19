# DWH Project

Proyecto de almacén de datos con arquitectura Medallion (Bronze, Silver y Gold).

## Estructura

- `datasets/`: archivos CSV de origen del CRM y ERP.
- `docs/`: diagramas, catálogo de datos y convenciones.
- `scripts/init_database.sql`: inicialización de base de datos y esquemas.
- `scripts/bronze/`: tablas y carga de la capa Bronze.
- `scripts/silver/`: tablas y carga de la capa Silver.
- `scripts/gold/`: vistas del modelo analítico.
- `tests/`: controles de calidad de Silver y Gold.

## Orden sugerido de ejecución

1. Configurar y ejecutar `scripts/init_database.sql`.
2. Definir las tablas de origen en `scripts/bronze/ddl_bronze.sql`.
3. Implementar y ejecutar `scripts/bronze/proc_load_bronze.sql`.
4. Definir las tablas limpias en `scripts/silver/ddl_silver.sql`.
5. Implementar y ejecutar `scripts/silver/proc_load_silver.sql`.
6. Crear las vistas analíticas en `scripts/gold/ddl_gold.sql`.
7. Ejecutar los controles de `tests/`.

> Nota: los CSV incluidos están vacíos porque no se proporcionaron datos de origen. Los scripts SQL son plantillas iniciales que debes completar según el modelo de datos de tu proyecto.
