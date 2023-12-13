DELIMITER $$

CREATE TRIGGER UpdateParticipantCount
AFTER INSERT ON Room_Participants
FOR EACH ROW
BEGIN
    DECLARE participantCount INT;

    SELECT COUNT(*) INTO participantCount
    FROM Room_Participants
    WHERE RoomId = NEW.RoomId;

    UPDATE Rooms
    SET ParticipantCount = participantCount
    WHERE Room_Id = NEW.RoomId;
END $$

DELIMITER ;
