CREATE DATABASE WatchWithMe;

USE WatchWithMe;

CREATE TABLE Users(
	User_Id INT AUTO_INCREMENT NOT NULL  PRIMARY KEY,
    First_Name varchar(64),
    Last_Name varchar(64),
    Usernamename varchar(20) NOT NULL UNIQUE,
    Password varchar(64) NOT NULL,
	Email varchar(64) NOT NULL UNIQUE,
    DateJoined DATE NOT NULL
);

CREATE TABLE Rooms(
	Room_Id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Password VARCHAR(255) NOT NULL,
    Owner_Id INT NOT NULL,
    FOREIGN KEY (owner_id) REFERENCES Users(User_Id)
);

CREATE TABLE Stream (
    Stream_Id INT AUTO_INCREMENT PRIMARY KEY,
    Link VARCHAR(255) NOT NULL,
    AssignedRoomId INT NOT NULL,
    FOREIGN KEY (AssignedRoomId) REFERENCES Rooms(Room_Id),
    INDEX(Link)
);

CREATE TABLE Stream_History (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    StreamId INT,
    DatePlayed DATE NOT NULL,
    Link_Id VARCHAR(255),
    FOREIGN KEY (StreamId) REFERENCES Stream(Stream_Id),
    FOREIGN KEY (Link_Id) REFERENCES Stream(Link)
);

CREATE TABLE Messages(
	id INT AUTO_INCREMENT PRIMARY KEY,
    Text TEXT NOT NULL,
    Sender_id INT NOT NULL,
    Receiver_id INT NOT NULL,
    Timestamp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (Sender_id) REFERENCES Users(User_Id),
    FOREIGN KEY (Receiver_id) REFERENCES Users(User_Id)
);

CREATE TABLE Room_Participants(
	Id INT AUTO_INCREMENT PRIMARY KEY,
    User_id INT NOT NULL,
    RoomName VARCHAR(255) NOT NULL,
    DateJoined DATE NOT NULL,
    RoomId INT NOT NULL,
    FOREIGN KEY (User_id) REFERENCES Users(User_Id),
    FOREIGN KEY (RoomId) REFERENCES Rooms(Room_Id)
);
