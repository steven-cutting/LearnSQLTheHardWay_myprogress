UPDATE pet SET
    parent = -1,
    dob = '2014-12-04 08:55:03'
    WHERE id IN (
    SELECT pet.id FROM pet
);

.schema pet

INSERT OR REPLACE INTO pet VALUES (3, 'Dumb', 'ant', 1, 0, 2, '2014-12-04 08:55:03');
INSERT OR REPLACE INTO pet VALUES (4, 'Abby', 'dog', 69, 1, 1, '2014-12-04 08:55:03');
INSERT OR REPLACE INTO pet VALUES (5, 'Doug', 'Ass', 0, 0, 1, '2014-12-04 08:55:03');
INSERT OR REPLACE INTO pet VALUES (6, 'Geary', 'Pron', 22, 0, 4, '2014-12-04 08:55:03');
INSERT OR REPLACE INTO pet VALUES (7, 'Bark', 'cat', 3, 1, 5, '2014-12-04 08:55:03');

SELECT * FROM pet;
