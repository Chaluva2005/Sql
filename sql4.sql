CREATE DATABASE facebook;
USE facebook;

CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    age INT CHECK (age >= 13),
    created_at DATE DEFAULT current_timestamp
);

INSERT INTO Users VALUES
(1, 'john_doe', 'john@gmail.com', 20, DEFAULT);

INSERT INTO Users VALUES
(2, 'jane_smith', 'jane@gmail.com', 22, DEFAULT);


CREATE TABLE Posts (
    post_id INT PRIMARY KEY,
    user_id INT NOT NULL,
    content VARCHAR(255) NOT NULL,
    likes INT DEFAULT 0 CHECK (likes >= 0),
    created_at DATE DEFAULT CURRENT_DATE
);

INSERT INTO Posts VALUES
(101, 1, 'Hello World!', DEFAULT, DEFAULT);

INSERT INTO Posts VALUES
(102, 2, 'My first post!', 10, DEFAULT);


CREATE TABLE Friends (
    friend_id INT PRIMARY KEY,
    user1_id INT NOT NULL,
    user2_id INT NOT NULL,
    status VARCHAR(10) CHECK (status IN ('Pending', 'Accepted')),
    UNIQUE(user1_id, user2_id)
);
INSERT INTO Friends VALUES
(1, 1, 2, 'Accepted');

CREATE TABLE Messages (
    message_id INT PRIMARY KEY,
    sender_id INT NOT NULL,
    receiver_id INT NOT NULL,
    message_text VARCHAR(255) NOT NULL,
    sent_at DATE DEFAULT CURRENT_DATE
);

INSERT INTO Messages VALUES
(1, 1, 2, 'Hi Jane!', DEFAULT);CREATE TABLE Reactions (
    reaction_id INT PRIMARY KEY,
    post_id INT NOT NULL,
    user_id INT NOT NULL,
    type VARCHAR(10) CHECK (type IN ('Like', 'Love', 'Haha')),
    UNIQUE(post_id, user_id)
);



INSERT INTO Messages VALUES
(2, 2, 1, 'Hello John!', DEFAULT);


INSERT INTO Reactions VALUES
(1, 101, 2, 'Like');

INSERT INTO Reactions VALUES
(2, 102, 1, 'Love');

