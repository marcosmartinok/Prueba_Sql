-- Crear la base de datos JokesDB
CREATE DATABASE JokesDB;
GO
-- Usar la base de datos recién creada
USE JokesDB;

-- Crear la tabla Usuarios
CREATE TABLE Users (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Username VARCHAR(255) NOT NULL,
    Password VARCHAR(255) NOT NULL
);

-- Crear la tabla Temáticas
CREATE TABLE Topics (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(255) NOT NULL
);

-- Crear la tabla Chistes
CREATE TABLE Jokes (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Body TEXT NOT NULL,
    AuthorId INT,
    FOREIGN KEY (AuthorId) REFERENCES Users(Id)
);

-- Crear una tabla intermedia para la relación entre Chistes y Temáticas
CREATE TABLE Jokes_Topics (
    JokeId INT,
    TopicId INT,
    PRIMARY KEY (JokeId, TopicId),
    FOREIGN KEY (JokeId) REFERENCES Jokes(Id),
    FOREIGN KEY (TopicId) REFERENCES Topics(Id)
);