CREATE PROCEDURE `AddRoomPartcipant` (
	IN userId INT,
    IN roomName VARCHAR(255),
    IN dateJoined DATE
)
BEGIN
		DECLARE roomId INT;

    -- Get the RoomId based on the provided RoomName
    SELECT Room_Id INTO roomId
    FROM Rooms
    WHERE Name = roomName;

    -- Check if the room exists
    IF roomId IS NOT NULL THEN
        -- Insert a new participant
        INSERT INTO Room_Participants (User_id, RoomName, DateJoined, RoomId)
        VALUES (userId, roomName, dateJoined, roomId);

        -- Get the updated participant count for the room
        SELECT COUNT(*) AS ParticipantCount
        FROM Room_Participants
        WHERE RoomId = roomId;
    ELSE
        -- Return -1 if the room doesn't exist
        SELECT -1 AS ParticipantCount;
    END IF;
END
