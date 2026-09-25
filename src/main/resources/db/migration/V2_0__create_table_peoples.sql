SET
FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for peoples
-- ----------------------------
DROP TABLE IF EXISTS `peoples`;
CREATE TABLE `peoples`
(
    `id`              int                                                            NOT NULL AUTO_INCREMENT,
    `document_type`   varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci  NOT NULL COMMENT 'Type: DNI,CE',
    `document_number` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci  NOT NULL COMMENT 'Greater than 8',
    `first_name`      varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
    `last_name`       varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
    `birth_date`      date                                                           NOT NULL,
    `gender`          char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci      NOT NULL COMMENT 'M=Masculino, F=Femenino',
    `address`         varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NULL DEFAULT NULL,
    `phone`           varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NULL DEFAULT NULL,
    `email`           varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NULL DEFAULT NULL,
    `created_date`    timestamp                                                      NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `modified_date`   timestamp                                                      NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE INDEX `people_document_number`(`document_number` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_spanish2_ci ROW_FORMAT = DYNAMIC;

SET
FOREIGN_KEY_CHECKS = 1;