USE DWH_TP1;
GO

-- Supprimer la table si elle existe (ATTENTION : supprime toutes les données)
IF EXISTS (SELECT * FROM sys.tables WHERE name = 'OLE DB Destination')
BEGIN
    DROP TABLE [dbo].[OLE DB Destination];
    PRINT 'Ancienne table OLE DB Destination supprimée.';
END
GO

-- Créer la table OLE DB Destination
CREATE TABLE [dbo].[OLE DB Destination] (
    NUMERO_A INT,
    NOM NVARCHAR(60),
    PRENOM NVARCHAR(120),
    VILLE NVARCHAR(250),
    ajout NVARCHAR(10)
);
GO

PRINT 'Table OLE DB Destination créée avec succès.';
GO