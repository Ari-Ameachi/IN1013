INSERT INTO petEvent (petname, eventdate, eventtype, remark)
VALUES ('Fluffy', '2020-10-15', 'vet', 'antibiotics'),
       ('Hammy', '2020-10-15', 'vet', 'antibiotics');
UPDATE petPet
SET birth = '2010-10-30'
WHERE petname = 'Hammy';

INSERT INTO petPet (petname, owner, species, gender, birth, death)
VALUES ('FluffyKitten1', 'OwnerOfFluffy', 'cat', 'M', '2020-10-15', NULL),
       ('FluffyKitten2', 'OwnerOfFluffy', 'cat', 'M', '2020-10-15', NULL),
       ('FluffyKitten3', 'OwnerOfFluffy', 'cat', 'F', '2020-10-15', NULL);
INSERT INTO petEvent (petname, eventdate, eventtype, remark)
VALUES ('Claws', '1997-08-03', 'injury', 'broke rib');

UPDATE petPet
SET death = '2020-09-01'
WHERE petname = 'Puffball';

DELETE FROM petPet
WHERE petname = 'HaroldsDog';