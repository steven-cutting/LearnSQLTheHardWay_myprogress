SELECT name, parent FROM pet WHERE parent IN (
    SELECT pet.id
    FROM pet
    WHERE
    pet.name = 'Gigantor'
);
