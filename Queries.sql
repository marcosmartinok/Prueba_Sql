-- Selecciona todos los campos de la tabla Jokes donde el nombre de usuario es 'Manolito'
SELECT j.* FROM Jokes j
JOIN Users u ON j.AuthorId = u.Id
WHERE u.Username = 'Manolito';

-- Selecciona todos los campos de la tabla Jokes donde el nombre de la temática es 'humor negro'
SELECT j.* FROM Jokes j
JOIN Jokes_Topics jt ON j.Id = jt.JokeId
JOIN Topics t ON jt.TopicId = t.Id
WHERE t.Name = 'humor negro';

-- Selecciona todos los campos de la tabla Jokes donde el nombre de usuario es 'Manolito' y la temática es 'humor negro'
SELECT j.* FROM Jokes j
JOIN Users u ON j.AuthorId = u.Id
JOIN Jokes_Topics jt ON j.Id = jt.JokeId
JOIN Topics t ON jt.TopicId = t.Id
WHERE u.Username = 'Manolito' AND t.Name = 'humor negro';


