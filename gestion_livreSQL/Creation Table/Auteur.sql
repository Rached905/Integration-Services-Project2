USE gestion_livres;
GO

-- Supprimer la table si elle existe
IF EXISTS (SELECT * FROM sys.tables WHERE name = 'Auteur')
BEGIN
    DROP TABLE dbo.Auteur;
    PRINT 'Ancienne table Auteur supprimée.';
END
GO

-- Créer la table Auteur
CREATE TABLE dbo.Auteur (
    NUMERO_A INT PRIMARY KEY,
    NOM NVARCHAR(60) NOT NULL,
    PRENOM NVARCHAR(120) NOT NULL,
    VILLE NVARCHAR(250)
);
GO

PRINT 'Table Auteur créée avec succès.';
GO



USE gestion_livres;
GO

-- Vider la table d'abord (optionnel)
TRUNCATE TABLE dbo.Auteur;
GO

-- Insérer des données
INSERT INTO dbo.Auteur (NUMERO_A, NOM, PRENOM, VILLE)
VALUES 
    (85478, 'Castafiore', 'Emilie', 'Paris'),
    (3547, 'Chambord', 'Emilie', 'Nice'),
    (542563, 'Dupont', 'Pierre', 'Avignon'),
    (52136, 'Fabière', 'Sylvie', 'Bordeaux'),
    (8547585, 'Momo', 'Roland', 'Toulouse'),
    (78545, 'Tintin', 'Thiery', 'Clermont'),
    (12345, 'Martin', 'Sophie', 'Lyon'),
    (67890, 'Bernard', 'Jean', 'Marseille'),
    (11111, 'Dubois', 'Marie', 'Strasbourg'),
    (22222, 'Lefebvre', 'Paul', 'Nantes'),
    (33333, 'Moreau', 'Claire', 'Lille'),
    (44444, 'Petit', 'Thomas', 'Rennes'),
    (55555, 'Roux', 'Julie', 'Reims'),
    (66666, 'Simon', 'Antoine', 'Le Havre'),
    (77777, 'Laurent', 'Camille', 'Saint-Étienne'),
    (88888, 'Garcia', 'Lucas', 'Toulon'),
    (99999, 'Rodriguez', 'Emma', 'Grenoble'),
    (10000, 'Lopez', 'Hugo', 'Dijon'),
    (20000, 'Gonzalez', 'Léa', 'Angers'),
    (30000, 'Perez', 'Nathan', 'Nîmes');
GO

PRINT 'Données insérées avec succès.';
GO