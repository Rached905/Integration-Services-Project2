-- Créer la base de données
CREATE DATABASE gestion_livres;
GO

-- Utiliser la base de données
USE gestion_livres;
GO

-- Créer la table Livres
CREATE TABLE dbo.Livres (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Titre NVARCHAR(100) NOT NULL,
    Auteur NVARCHAR(100),
    Prix DECIMAL(10,2),
    DatePublication DATE,
    ISBN NVARCHAR(20)
);
GO

-- Insérer des données de test
INSERT INTO dbo.Livres (Titre, Auteur, Prix, DatePublication, ISBN)
VALUES 
    ('Le Petit Prince', 'Antoine de Saint-Exupéry', 12.50, '1943-04-06', '978-2070612758'),
    ('1984', 'George Orwell', 15.00, '1949-06-08', '978-2070368228'),
    ('L''Étranger', 'Albert Camus', 13.75, '1942-06-01', '978-2070360024'),
    ('Harry Potter à l''école des sorciers', 'J.K. Rowling', 18.90, '1997-06-26', '978-2070541200'),
    ('Le Seigneur des Anneaux', 'J.R.R. Tolkien', 22.00, '1954-07-29', '978-2267021521');
GO

-- Vérifier les données
SELECT * FROM dbo.Livres;
GO