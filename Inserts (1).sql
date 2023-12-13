USE WatchWithMe;


INSERT INTO Users (First_Name, Last_Name, Usernamename, Password, Email, DateJoined)
VALUES 
    ('Charlie', 'Davis', 'charlie_d', 'charliepass', 'charlie.d@example.com', '2023-06-05'),
    ('Sophie', 'Clark', 'sophie_c', 'sophie123', 'sophie.c@example.com', '2023-07-20'),
    ('Oliver', 'Taylor', 'oliver_t', 'oliverpass', 'oliver.t@example.com', '2023-08-15'),
    ('Emma', 'Moore', 'emma_m', 'emma_secure', 'emma.m@example.com', '2023-09-30'),
    ('Daniel', 'Wilson', 'daniel_w', 'danielpass', 'daniel.w@example.com', '2023-10-25'),
    ('Mia', 'Anderson', 'mia_a', 'miapass123', 'mia.a@example.com', '2023-11-10'),
    ('Logan', 'Hill', 'logan_h', 'loganpass', 'logan.h@example.com', '2023-12-15'),
    ('Chloe', 'Baker', 'chloe_b', 'chloepass', 'chloe.b@example.com', '2024-01-20'),
    ('Liam', 'Wright', 'liam_w', 'liampass', 'liam.w@example.com', '2024-02-05'),
    ('Ava', 'Robinson', 'ava_r', 'avapass123', 'ava.r@example.com', '2024-03-15'),
    ('Noah', 'Evans', 'noah_e', 'noahpass', 'noah.e@example.com', '2024-04-10'),
    ('Isabella', 'Harris', 'isabella_h', 'isapass', 'isabella.h@example.com', '2024-05-25'),
    ('Sophia', 'Cooper', 'sophia_c', 'sophiapass', 'sophia.c@example.com', '2024-06-30'),
    ('Ethan', 'Young', 'ethan_y', 'ethanpass', 'ethan.y@example.com', '2024-07-15'),
    ('Aiden', 'Reed', 'aiden_r', 'aidenpass', 'aiden.r@example.com', '2024-08-20'),
    ('Grace', 'Campbell', 'grace_c', 'gracepass', 'grace.c@example.com', '2024-09-05'),
    ('Lucas', 'Murphy', 'lucas_m', 'lucaspass', 'lucas.m@example.com', '2024-10-10'),
    ('Ella', 'Ward', 'ella_w', 'ellapass123', 'ella.w@example.com', '2024-11-15'),
    ('Jackson', 'Fisher', 'jackson_f', 'jacksonpass', 'jackson.f@example.com', '2024-12-20');


INSERT INTO Rooms (Name, Password, Owner_Id)
VALUES
    ('Library', 'libpass', 1),
    ('Music Studio', 'musicpass', 2),
    ('Art Room', 'artpass', 3),
    ('Conference Room B', 'confpass2', 4),
    ('Home Office', 'officepass', 5),
    ('Fitness Room', 'fitpass', 6),
	('Fitness Roomdsadsdasda', 'fitpass', 6),
    ('Lounge', 'loungepass', 7),
    ('Kitchen', 'kitchenpass', 8),
    ('Balcony', 'balconypass', 9),
    ('Game Room B', 'gamepass', 10),
    ('Study Room B', 'studypass', 11),
    ('Garden', 'gardenpass', 12),
    ('Home Theater', 'theaterpass', 13),
    ('Craft Room', 'craftpass', 14),
    ('Pet Room', 'petpass', 15),
    ('Tech Lab', 'techpass', 16),
    ('Outdoor Patio', 'patiopass', 17),
    ('Reading Nook', 'nookpass', 18),
    ('Swimming Pool', 'poolpass', 19);

INSERT INTO Stream (Link, AssignedRoomId)
VALUES 
    ('http://stream6.com', 10),
    ('http://stream7.com', 15),
    ('http://stream8.com', 5),
    ('http://stream9.com', 20),
    ('http://stream10.com', 2),
    ('http://stream11.com', 17),
    ('http://stream12.com', 7),
    ('http://stream13.com', 12),
    ('http://stream14.com', 3),
    ('http://stream15.com', 8),
    ('http://stream16.com', 13),
    ('http://stream17.com', 18),
    ('http://stream18.com', 9),
    ('http://stream19.com', 14),
    ('http://stream20.com', 4),
    ('http://stream21.com', 19),
    ('http://stream22.com', 11),
    ('http://stream23.com', 6),
    ('http://stream24.com', 16),
    ('http://stream25.com', 1);


INSERT INTO Stream_History (StreamId, DatePlayed, Link_Id)
VALUES 
    (1, '2023-01-05', 'http://stream6.com'),
    (2, '2023-02-20', 'http://stream7.com'),
    (3, '2023-03-15', 'http://stream8.com'),
    (4, '2023-05-01', 'http://stream9.com'),
    (5, '2023-04-10', 'http://stream10.com'),
    (6, '2023-07-15', 'http://stream11.com'),
    (7, '2024-05-25', 'http://stream12.com'),
    (8, '2024-07-15', 'http://stream13.com'),
    (9, '2024-09-05', 'http://stream14.com'),
    (10, '2024-11-15', 'http://stream15.com'),
    (11, '2025-01-20', 'http://stream16.com'),
    (12, '2025-03-10', 'http://stream17.com'),
    (13, '2025-05-15', 'http://stream18.com'),
    (14, '2025-07-20', 'http://stream19.com'),
    (15, '2025-09-25', 'http://stream20.com'),
    (16, '2026-01-05', 'http://stream21.com'),
    (17, '2026-03-10', 'http://stream22.com'),
    (18, '2026-05-15', 'http://stream23.com'),
    (19, '2026-07-20', 'http://stream24.com'),
    (20, '2026-09-25', 'http://stream25.com');


INSERT INTO Messages (Text, Sender_id, Receiver_id)
VALUES 
    ('Good morning!', 7, 4),
    ('Movie night tomorrow?', 9, 14),
    ('Code review at 2 pm', 13, 18),
    ('Happy Birthday!', 2, 6),
    ('Assignment submission reminder', 11, 16),
    ('Lunch plans?', 1, 5),
    ('New project kickoff meeting', 8, 12),
    ('Travel plans for the weekend?', 3, 19),
    ('Meeting agenda attached', 15, 3),
    ('Soccer game on Sunday', 10, 13),
    ('Book club meeting', 7, 11),
    ('Tech workshop on Friday', 17, 4),
    ('Hiking trip next month?', 6, 9),
    ('Dinner at my place', 16, 8),
    ('Study group session', 5, 3),
    ('Game night tonight!', 14, 2),
    ('Yoga class on Thursday', 14, 1),
    ('Art exhibition next week', 19, 15),
    ('New recipe shared', 12, 10);


INSERT INTO Room_Participants (User_id, RoomName, DateJoined, RoomId)
VALUES 
    (5, 'Balcony', '2023-02-05', 9),
    (10, 'Craft Room', '2023-04-10', 14),
    (15, 'Swimming Pool', '2023-06-15', 19),
    (3, 'Kitchen', '2023-10-25', 8),
    (8, 'Home Theater', '2024-01-05', 13),
    (13, 'Reading Nook', '2024-03-10', 18),
    (18, 'Art Room', '2024-05-15', 3),
    (1, 'Lounge', '2024-07-20', 7),
    (6, 'Garden', '2024-09-25', 12),
    (11, 'Outdoor Patio', '2024-11-30', 17),
    (16, 'Music Studio', '2025-02-04', 2),
    (2, 'Fitness Room', '2025-04-10', 6),
    (7, 'Study Room B', '2025-06-15', 11),
    (12, 'Tech Lab', '2025-08-20', 16),
    (17, 'Library', '2025-10-25', 1),
    (4, 'Home Office', '2026-01-05', 5),
    (9, 'Game Room B', '2026-03-10', 10),
    (14, 'Pet Room', '2026-05-15', 15),
    (19, 'Fitness Room', '2026-07-20', 6);