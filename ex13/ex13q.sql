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

