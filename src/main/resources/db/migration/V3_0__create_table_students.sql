SET
FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for students
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students`
(
    `id`           int NOT NULL AUTO_INCREMENT,
    `people_id`    int NOT NULL COMMENT 'reference by id of people table',
    `entry_date`   date NULL DEFAULT NULL COMMENT 'yyyy-MM-dd',
    `status`       tinyint NULL DEFAULT 1 COMMENT '1=true,0=false',
    `observations` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NULL,
    PRIMARY KEY (`id`) USING BTREE,
    CONSTRAINT `fk_students_people` FOREIGN KEY (`people_id`) REFERENCES `peoples` (`id`)
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish2_ci ROW_FORMAT = DYNAMIC;

SET
FOREIGN_KEY_CHECKS = 1;
