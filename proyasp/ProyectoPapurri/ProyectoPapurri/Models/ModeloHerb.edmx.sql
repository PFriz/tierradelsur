
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 08/04/2017 04:18:47
-- Generated from EDMX file: C:\Users\patricio lerzundi\Desktop\Github\proyasp\ProyectoPapurri\ProyectoPapurri\Models\ModeloHerb.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [herbal_db];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK__Producto__fk_id___34C8D9D1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Producto] DROP CONSTRAINT [FK__Producto__fk_id___34C8D9D1];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Producto]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Producto];
GO
IF OBJECT_ID(N'[dbo].[Tipo]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tipo];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Producto'
CREATE TABLE [dbo].[Producto] (
    [id_producto] int  NOT NULL,
    [nombre] nchar(40)  NULL,
    [n_cientifico] nchar(40)  NULL,
    [beneficios] nchar(40)  NULL,
    [fk_id_tipo] int  NOT NULL
);
GO

-- Creating table 'Tipo'
CREATE TABLE [dbo].[Tipo] (
    [id_tipo] int  NOT NULL,
    [nombre] nchar(40)  NULL
);
GO

-- Creating table 'SubProducto'
CREATE TABLE [dbo].[SubProducto] (
    [id_sprod] int IDENTITY(1,1) NOT NULL,
    [fk_id_producto] int  NOT NULL,
    [Formato] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [id_producto] in table 'Producto'
ALTER TABLE [dbo].[Producto]
ADD CONSTRAINT [PK_Producto]
    PRIMARY KEY CLUSTERED ([id_producto] ASC);
GO

-- Creating primary key on [id_tipo] in table 'Tipo'
ALTER TABLE [dbo].[Tipo]
ADD CONSTRAINT [PK_Tipo]
    PRIMARY KEY CLUSTERED ([id_tipo] ASC);
GO

-- Creating primary key on [id_sprod] in table 'SubProducto'
ALTER TABLE [dbo].[SubProducto]
ADD CONSTRAINT [PK_SubProducto]
    PRIMARY KEY CLUSTERED ([id_sprod] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [fk_id_tipo] in table 'Producto'
ALTER TABLE [dbo].[Producto]
ADD CONSTRAINT [FK__Producto__fk_id___34C8D9D1]
    FOREIGN KEY ([fk_id_tipo])
    REFERENCES [dbo].[Tipo]
        ([id_tipo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Producto__fk_id___34C8D9D1'
CREATE INDEX [IX_FK__Producto__fk_id___34C8D9D1]
ON [dbo].[Producto]
    ([fk_id_tipo]);
GO

-- Creating foreign key on [fk_id_producto] in table 'SubProducto'
ALTER TABLE [dbo].[SubProducto]
ADD CONSTRAINT [FK_ProductoSubProducto]
    FOREIGN KEY ([fk_id_producto])
    REFERENCES [dbo].[Producto]
        ([id_producto])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductoSubProducto'
CREATE INDEX [IX_FK_ProductoSubProducto]
ON [dbo].[SubProducto]
    ([fk_id_producto]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------