UPDATE person_pet SET
    purchased_on = '2014-12-04 08:55:03'
    WHERE person_id IN (
    SELECT person_pet.person_id FROM person_pet
);

INSERT OR REPLACE INTO person_pet VALUES (1, 1, '2000-12-04 08:55:04');
INSERT OR REPLACE INTO person_pet VALUES (1, 2, '1880-12-30 04:24:24');
INSERT OR REPLACE INTO person_pet VALUES (3, 3, '2423-03-03 03:23:23');
INSERT OR REPLACE INTO person_pet VALUES (2, 4, '1979-05-05 01:34:34');
INSERT OR REPLACE INTO person_pet VALUES (4, 5, '2014-12-04 08:55:03');

SELECT * FROM person_pet;
