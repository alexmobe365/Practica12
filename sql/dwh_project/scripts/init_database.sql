-- Inicialización de la base de datos y esquemas.
-- Completa el nombre de la base de datos según tu entorno.

-- CREATE DATABASE dwh_project;
-- GO
-- USE dwh_project;
-- GO

IF SCHEMA_ID('bronze') IS NULL EXEC('CREATE SCHEMA bronze');
GO
IF SCHEMA_ID('silver') IS NULL EXEC('CREATE SCHEMA silver');
GO
IF SCHEMA_ID('gold') IS NULL EXEC('CREATE SCHEMA gold');
GO
