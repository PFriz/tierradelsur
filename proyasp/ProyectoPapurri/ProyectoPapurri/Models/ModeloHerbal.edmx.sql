
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 08/04/2017 02:39:43
-- Generated from EDMX file: C:\Users\patricio lerzundi\Desktop\Github\proyasp\ProyectoPapurri\ProyectoPapurri\Models\ModeloHerbal.edmx
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

IF OBJECT_ID(N'[dbo].[FK_ProductoTipo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProductoSet] DROP CONSTRAINT [FK_ProductoTipo];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[ProductoSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProductoSet];
GO
IF OBJECT_ID(N'[dbo].[TipoSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TipoSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'ProductoSet'
CREATE TABLE [dbo].[ProductoSet] (
    [id_producto] int IDENTITY(1,1) NOT NULL,
    [nombre] nvarchar(max)  NOT NULL,
    [n_cientifico] nvarchar(max)  NOT NULL,
    [beneficios] nvarchar(max)  NOT NULL,
    [Tipo_id_tipo] int  NOT NULL
);
GO

-- Creating table 'TipoSet'
CREATE TABLE [dbo].[TipoSet] (
    [id_tipo] int IDENTITY(1,1) NOT NULL,
    [nombre] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ClienteSet'
CREATE TABLE [dbo].[ClienteSet] (
    [id_cliente] int IDENTITY(1,1) NOT NULL,
    [nombre] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'SubProductoSet'
CREATE TABLE [dbo].[SubProductoSet] (
    [id_sub] int IDENTITY(1,1) NOT NULL,
    [Cliente_id_cliente] int  NOT NULL,
    [Producto_id_producto] int  NOT NULL
);
GO

-- Creating table 'Estado_ProductoSet'
CREATE TABLE [dbo].[Estado_ProductoSet] (
    [id_estado] int IDENTITY(1,1) NOT NULL,
    [nombre] nvarchar(max)  NOT NULL,
    [SubProducto_id_sub] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [id_producto] in table 'ProductoSet'
ALTER TABLE [dbo].[ProductoSet]
ADD CONSTRAINT [PK_ProductoSet]
    PRIMARY KEY CLUSTERED ([id_producto] ASC);
GO

-- Creating primary key on [id_tipo] in table 'TipoSet'
ALTER TABLE [dbo].[TipoSet]
ADD CONSTRAINT [PK_TipoSet]
    PRIMARY KEY CLUSTERED ([id_tipo] ASC);
GO

-- Creating primary key on [id_cliente] in table 'ClienteSet'
ALTER TABLE [dbo].[ClienteSet]
ADD CONSTRAINT [PK_ClienteSet]
    PRIMARY KEY CLUSTERED ([id_cliente] ASC);
GO

-- Creating primary key on [id_sub] in table 'SubProductoSet'
ALTER TABLE [dbo].[SubProductoSet]
ADD CONSTRAINT [PK_SubProductoSet]
    PRIMARY KEY CLUSTERED ([id_sub] ASC);
GO

-- Creating primary key on [id_estado] in table 'Estado_ProductoSet'
ALTER TABLE [dbo].[Estado_ProductoSet]
ADD CONSTRAINT [PK_Estado_ProductoSet]
    PRIMARY KEY CLUSTERED ([id_estado] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Tipo_id_tipo] in table 'ProductoSet'
ALTER TABLE [dbo].[ProductoSet]
ADD CONSTRAINT [FK_ProductoTipo]
    FOREIGN KEY ([Tipo_id_tipo])
    REFERENCES [dbo].[TipoSet]
        ([id_tipo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductoTipo'
CREATE INDEX [IX_FK_ProductoTipo]
ON [dbo].[ProductoSet]
    ([Tipo_id_tipo]);
GO

-- Creating foreign key on [Cliente_id_cliente] in table 'SubProductoSet'
ALTER TABLE [dbo].[SubProductoSet]
ADD CONSTRAINT [FK_SubProductoCliente]
    FOREIGN KEY ([Cliente_id_cliente])
    REFERENCES [dbo].[ClienteSet]
        ([id_cliente])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SubProductoCliente'
CREATE INDEX [IX_FK_SubProductoCliente]
ON [dbo].[SubProductoSet]
    ([Cliente_id_cliente]);
GO

-- Creating foreign key on [Producto_id_producto] in table 'SubProductoSet'
ALTER TABLE [dbo].[SubProductoSet]
ADD CONSTRAINT [FK_SubProductoProducto]
    FOREIGN KEY ([Producto_id_producto])
    REFERENCES [dbo].[ProductoSet]
        ([id_producto])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SubProductoProducto'
CREATE INDEX [IX_FK_SubProductoProducto]
ON [dbo].[SubProductoSet]
    ([Producto_id_producto]);
GO

-- Creating foreign key on [SubProducto_id_sub] in table 'Estado_ProductoSet'
ALTER TABLE [dbo].[Estado_ProductoSet]
ADD CONSTRAINT [FK_Estado_ProductoSubProducto]
    FOREIGN KEY ([SubProducto_id_sub])
    REFERENCES [dbo].[SubProductoSet]
        ([id_sub])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Estado_ProductoSubProducto'
CREATE INDEX [IX_FK_Estado_ProductoSubProducto]
ON [dbo].[Estado_ProductoSet]
    ([SubProducto_id_sub]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------