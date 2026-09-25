SET
FOREIGN_KEY_CHECKS = 0;

-- --------------------------------
-- 10 Records of peoples update
-- --------------------------------

INSERT INTO `peoples`
(`id`,
 `document_type`,
 `document_number`,
 `first_name`,
 `last_name`,
 `birth_date`,
 `gender`,
 `address`,
 `phone`,
 `email`)
VALUES (1, 'DNI', '79511506', 'Gilles A.', 'Philcott', '1994-03-01', 'M', '1200 E WARRENVILLE ROAD', '358151793',
        'gphilcott0@edublogs.org'),
       (2, 'DNI', '65441557', 'Tessie B.', 'Shark', '1992-07-16', 'M', 'VIALE ALTIERO SPINELLI, 30', '544210070',
        'tshark1@goo.gl'),
       (3, 'DNI', '08851497', 'Norri C.', 'Anyene', '1994-09-07', 'F', 'VIALE ALTIERO SPINELLI, 30', '476700450',
        'nanyene2@shinystat.com'),
       (4, 'DNI', '97519429', 'Ula D.', 'Penwarden', '1993-07-29', 'M', '400 RELLA BOULEVARD', '038886516',
        'upenwarden3@bbb.org'),
       (5, 'DNI', '23451499', 'Wylma F.', 'Lambertson', '1994-03-14', 'M', '4140 EAST STATE STREET', '171537362',
        'wlambertson4@wiley.com'),
       (6, 'DNI', '57988924', 'Dalenna G.', 'Matityahu', '1995-09-11', 'M', 'Obergerichtsstraße 22', '151626832',
        'dmatityahu5@usgs.gov'),
       (7, 'DNI', '64953526', 'Kennan H.', 'Obbard', '1992-09-14', 'F', 'LOCATER 01-5138', '034485930',
        'kobbard6@vk.com'),
       (8, 'DNI', '31037200', 'Keene I.', 'Pittaway', '1991-05-03', 'F', '202 SOUTH FIRST', '237273407',
        'kpittaway7@sohu.com'),
       (9, 'DNI', '77543282', 'Darcey J.', 'Measures', '1994-11-26', 'M', '11 BOULEVARD DE LA MADELEINE', '088368509',
        'dmeasures8@thetimes.co.uk'),
       (10, 'DNI', '43035290', 'Ford K.', 'Livick', '1994-12-02', 'F', 'P O BOX 738', '709649248',
        'flivick9@free.fr') AS new
ON DUPLICATE KEY
UPDATE
    `document_type` = new.document_type,
    `document_number` = new.document_number,
    `first_name` = new.first_name,
    `last_name` = new.last_name,
    `birth_date` = new.birth_date,
    `gender` = new.gender,
    `address` = new.address,
    `phone` = new.phone,
    `email` = new.email;

SET
FOREIGN_KEY_CHECKS = 1;