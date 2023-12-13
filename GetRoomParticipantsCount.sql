GetRoomParticipantsCountAddRoomPartcipantAddRoomPartcipantCREATE DEFINER=`root`@`localhost` FUNCTION `GetRoomParticipantsCount`(roomId INT) RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE participantCount INT;

    SELECT COUNT(*) INTO participantCount
    FROM Room_Participants
    WHERE RoomId = roomId;

    RETURN participantCount;
END