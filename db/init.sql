CREATE TABLE IF NOT EXISTS Users(
    Username TEXT PRIMARY KEY,
    Email TEXT NOT NULL,
    HashedPassword TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS Codes(
    Email TEXT NOT NULL,
    Code TEXT NOT NULL,
    SavedAt TIMESTAMP NOT NULL
);

CREATE TABLE IF NOT EXISTS Posts(
    Username TEXT NOT NULL REFERENCES Users,
    PostID SERIAL PRIMARY KEY,
    Title TEXT NOT NULL,
    Post TEXT NOT NULL,
    PostedAt TIMESTAMP NOT NULL,
    LastEditedAt TIMESTAMP NULL
);

CREATE TABLE IF NOT EXISTS Comments(
    Username TEXT NOT NULL REFERENCES Users,
    PostID SERIAL NOT NULL REFERENCES Posts,
    CommentID TEXT PRIMARY KEY,
    TheComment TEXT NOT NULL,
    CommentedAt TIMESTAMP NOT NULL,
    LastEditedAt TIMESTAMP
);

CREATE TABLE IF NOT EXISTS HashedRefreshTokens(
    RefreshToken TEXT NOT NULL,
    AddedAt TIMESTAMP NOT NULL
);
