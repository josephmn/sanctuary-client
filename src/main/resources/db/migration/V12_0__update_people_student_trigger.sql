DROP TRIGGER IF EXISTS `trg_people_update_student`;

DELIMITER
$$

CREATE TRIGGER `trg_people_update_student`
    AFTER UPDATE
    ON `peoples`
    FOR EACH ROW
BEGIN

    IF NOT (
        OLD.`document_type` <=> NEW.`document_type`
        AND OLD.`document_number` <=> NEW.`document_number`
        AND OLD.`first_name` <=> NEW.`first_name`
        AND OLD.`last_name` <=> NEW.`last_name`
        AND OLD.`birth_date` <=> NEW.`birth_date`
        AND OLD.`gender` <=> NEW.`gender`
        AND OLD.`address` <=> NEW.`address`
        AND OLD.`phone` <=> NEW.`phone`
        AND OLD.`email` <=> NEW.`email`
    ) THEN

    UPDATE `students`
    SET `modified_date` = CURRENT_TIMESTAMP
    WHERE `people_id` = NEW.`id`;

END IF;

END$$

DELIMITER ;