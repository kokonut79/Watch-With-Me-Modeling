-- Get the participant count for Room with Room_Id = 1
SELECT GetRoomParticipantsCount(1) AS ParticipantCount;

-- Call the procedure to get rooms with at least 10 participants
CALL AddRoomPartcipant(5, 'Library', '2023-02-05');
