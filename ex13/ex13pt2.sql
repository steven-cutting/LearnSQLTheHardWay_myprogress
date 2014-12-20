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
