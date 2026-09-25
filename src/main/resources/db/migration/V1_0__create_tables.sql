CREATE TABLE person
(
    id            INT NOT NULL AUTO_INCREMENT,
    document      VARCHAR(15),
    name          VARCHAR(50),
    last_name     VARCHAR(50),
    age           INT,
    date_birthday DATE,
    email         VARCHAR(50),
    status        INT,
    PRIMARY KEY (id)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_spanish_ci;