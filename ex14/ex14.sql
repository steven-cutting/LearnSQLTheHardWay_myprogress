ALTER TABLE person ADD COlUMN dead INTEGER;
ALTER TABLE person ADD COLUMN phone_number TEXT;
ALTER TABLE person ADD COLUMN salary FLOAT;
ALTER TABLE person ADD COLUMN dob DATETIME;

ALTER TABLE person_pet ADD COLUMN purchased_on DATETIME;

ALTER TABLE pet ADD COLUMN parent INTEGER;
ALTER TABLE pet ADD COLUMN dob DATETIME;

UPDATE person SET
    dead = 1, 
    phone_number = '222-222-2222',
    salary = 0.69,
    dob = '2014-12-04 08:55:03'
    WHERE id IN (
    SELECT person.id FROM person
);
INSERT OR REPLACE INTO person VALUES (1, 'Derp', 'Rogan', 12, 0, '2532523532', 23.24, '2000-12-04 08:55:04');
INSERT OR REPLACE INTO person VALUES (2, 'Foo', 'Bar', 324, 1, '2432542523', 24325235.22, '1880-12-30 04:24:24');
INSERT OR REPLACE INTO person VALUES (3, 'Bert', 'Ass', 2, 0, '4534543534', 435, '2423-03-03 03:23:23');
INSERT OR REPLACE INTO person VALUES (4, 'Dilara', 'Pron', 35, 0, '333-333-3333', 32432532523.23, '1979-05-05 01:34:34');

SELECT * FROM person;

UPDATE pet SET
    parent = -1,
    dob = '2014-12-04 08:55:03'
    WHERE id IN (
    SELECT pet.id FROM pet
);

INSERT OR REPLACE INTO pet VALUES (2, 'Dumb', 'ant', 1, 0, 2, '2014-12-04 08:55:03');
INSERT OR REPLACE INTO pet VALUES (3, 'Abby', 'dog', 69, 1, 1, '2014-12-04 08:55:03');
INSERT OR REPLACE INTO pet VALUES (4, 'Doug', 'Ass', 0, 0, 1, '2014-12-04 08:55:03');
INSERT OR REPLACE INTO pet VALUES (5, 'Geary', 'Pron', 22, 0, 4, '2014-12-04 08:55:03');
INSERT OR REPLACE INTO pet VALUES (6, 'Bark', 'cat', 3, 1, 5, '2014-12-04 08:55:03');

SELECT * FROM pet;

UPDATE person_pet SET purchased_on = '2004-02-06 08:55:03' WHERE pet_id IN (
    SELECT person_pet.pet_id FROM person_pet
    WHERE
    person_pet.pet_id = 0
);

UPDATE person_pet SET purchased_on = '2008-10-11 08:55:03' WHERE pet_id IN (
    SELECT person_pet.pet_id FROM person_pet
    WHERE
    person_pet.pet_id = 1
);

INSERT OR REPLACE INTO person_pet VALUES (1, 2, '2000-12-04 08:55:04');
INSERT OR REPLACE INTO person_pet VALUES (1, 3, '1880-12-30 04:24:24');
INSERT OR REPLACE INTO person_pet VALUES (3, 4, '2423-03-03 03:23:23');
INSERT OR REPLACE INTO person_pet VALUES (2, 5, '1979-05-05 01:34:34');
INSERT OR REPLACE INTO person_pet VALUES (4, 6, '2014-12-04 08:55:03');

SELECT * FROM person_pet;
SELECT pet.name, person.first_name, person.last_name
    FROM pet, person
    WHERE person.id IN (
        SELECT person.id
        FROM person_pet, person
        WHERE
        person_pet.purchased_on >= '2005-01-01 12:00:00' AND
        person.id = person_pet.person_id AND
        pet.id = person_pet.pet_id
); 

SELECT name, parent FROM pet WHERE parent IN (
    SELECT pet.id
    FROM pet
    WHERE
    pet.name = 'Gigantor'
);
