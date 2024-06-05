-- Commands
-- SELECT * from ___

PRAGMA foreign_keys = ON;

CREATE TABLE
    users (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        first_name TEXT NOT NULL,
        last_name TEXT NOT NULL,
        motto TEXT NULL
    );

CREATE TABLE
    dogs (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL);

CREATE TABLE
    favorites (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        dog_id INTEGER NOT NULL,
        user_id INTEGER NOT NULL,
        FOREIGN KEY (dog_id) REFERENCES dogs (id),
        FOREIGN KEY (user_id) REFERENCES users (id),
        UNIQUE(dog_id, user_id)
    );

-- User Creation

INSERT INTO
    users (first_name, last_name, motto)
VALUES
    ("Jon", "Higgz", "I love coding"),
    ("Andrey", "Rusterton", "I love coding even more"),
    ("Peter", "Garboni", "I love coding even more");

-- Dog creation

INSERT INTO
    dogs (name)
VALUES
    ("DOOMSLAYER"),
    ("Zoey"),
    ("Jefferey");

-- Favorites
INSERT INTO
    favorites (dog_id, user_id)
VALUES
    (1, 3),
    (1, 1),
    (1, 2),
    (3, 1),
    (2, 2);
-- 1 Doomslayer
-- 2 Zoey 
-- 3 Jefferey
-- 1 Jon
-- 2 Andrey
-- 3 Peter
SELECT
    *
FROM
    favorites
    JOIN dogs ON
    favorites.dog_id = dogs.id
    JOIN users ON  favorites.user_id = users.id;
    