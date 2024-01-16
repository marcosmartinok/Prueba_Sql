-- Insertar usuarios
INSERT INTO Users (Username, Password)
VALUES ('Manolito', 'contrase�a1'),
       ('Pepe', 'contrase�a2'),
       ('Isabel', 'contrase�a3'),
       ('Pedro', 'contrase�a4');

-- Insertar tem�ticas
INSERT INTO Topics (Name)
VALUES ('Humor negro'),
       ('Humor amarillo'),
       ('Chistes verdes');

-- Insertar chistes

-- Declarar autor
DECLARE @AuthorId INT;
SET @AuthorId = (SELECT Id FROM Users WHERE Username = 'Manolito');

-- Repetir para cada autor
-- Humor negro
INSERT INTO Jokes (Title, Body, AuthorId) VALUES ('Chiste humor negro', 'Cuerpo del chiste', @AuthorId);
INSERT INTO Jokes_Topics (JokeId, TopicId) VALUES ((SELECT MAX(Id) FROM Jokes), (SELECT Id FROM Topics WHERE Name = 'Humor negro'));

-- Humor amarillo
INSERT INTO Jokes (Title, Body, AuthorId) VALUES ('Chiste humor amarillo', 'Cuerpo del chiste', @AuthorId);
INSERT INTO Jokes_Topics (JokeId, TopicId) VALUES ((SELECT MAX(Id) FROM Jokes), (SELECT Id FROM Topics WHERE Name = 'Humor amarillo'));

-- Chistes verdes
INSERT INTO Jokes (Title, Body, AuthorId) VALUES ('Chiste verde', 'Cuerpo del chiste', @AuthorId);
INSERT INTO Jokes_Topics (JokeId, TopicId) VALUES ((SELECT MAX(Id) FROM Jokes), (SELECT Id FROM Topics WHERE Name = 'Chistes verdes'));




