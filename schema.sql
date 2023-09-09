DROP TABLE IF EXISTS post;

CREATE TABLE posts(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    title TEXT NOT NULL,
    content TEXT NOT NULL,
    updated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE response(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    content_response TEXT NOT NULL,
    author TEXT NOT NULL,
    post_id INTEGER,
    FOREIGN KEY (post_id) REFERENCES posts (id)
);