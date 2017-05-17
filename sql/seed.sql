TRUNCATE TABLE Users, Offences, Participations, SuspectNotes,
Suspects, AddressNotes, Addresses, Locations, Tables;

INSERT INTO Tables (name, label) VALUES
  ('Addresses', 2),
  ('AddressNotes', 3),
  ('Locations', 1),
  ('Offences', 3),
  ('Participations', 4),
  ('SuspectNotes', 4),
  ('Suspects', 3),
  ('Tables', 0),
  ('Users', 0);

INSERT INTO Users (login, label, password, session) VALUES
  ('admin', 0, MD5('Admin!'), NULL),
  ('poziom1', 1, MD5('Poziom1!'), NULL),
  ('poziom2', 2, MD5('Poziom2!'), NULL),
  ('poziom3', 3, MD5('Poziom3!'), NULL),
  ('poziom4', 4, MD5('Poziom4!'), NULL),
  ('poziom5', 5, MD5('Poziom5!'), NULL);

INSERT INTO Locations (id, longitude, latitude, description) VALUES
  (0, 52.8790, 18.7948, 'Baza ISIS w Ciechocinku'),
  (1, 54.4416, 18.5601, 'Mieszkanie potencjalnego zamachowca'),
  (2, 33.8688, 151.2093, 'Sydney'),
  (3, 50.9375, 6.9603, 'Turecka dzielnica w Kolonii'),
  (4, 38.9072, 77.0369, 'Bialy dom'),
  (5, 12.1696, 68.9900, 'Curacao');

INSERT INTO Addresses (id, location_id, street, house_number, plate_number, postal_code, town, country) VALUES
  (0, 0, 'Kolejowa', 11, 24, '87-720', 'Ciechocinek', 'Poland'),
  (1, 0, 'Kolejowa', 11, 25, '87-720', 'Ciechocinek', 'Poland'),
  (2, 0, 'Kolejowa', 11, 26, '87-720', 'Ciechocinek', 'Poland'),
  (3, 1, 'Grottgera', 4, 7, '81-809', 'Sopot', 'Poland'),
  (4, 3, 'Helenenstrasse', 14, NULL, '50667', 'Cologne', 'Germany'),
  (5, 3, 'Helenenstrasse', 15, NULL, '50667', 'Cologne', 'Germany'),
  (6, 3, 'Helenenstrasse', 16, NULL, '50667', 'Cologne', 'Germany');

INSERT INTO AddressNotes (id, address_id, date, title, note) VALUES
  (0, 3, '1999-01-08', 'Zgloszenie', 'Otrzymalismy zgloszenie o potencjalnym zamachowcu zamieszkalym pod tym adresem'),
  (1, 3, '1999-01-11', 'Obserwacja 1', 'Obserwacja lokalizacji nie wykazuje niczego dziwnego'),
  (2, 3, '1999-01-18', 'Obserwacja 2', 'Obserwacja lokalizacji nie wykazuje niczego dziwnego'),
  (3, 3, '1999-01-24', 'Obserwacja 3', 'Obserwacja lokalizacji nie wykazuje niczego dziwnego'),
  (4, 3, '1999-01-24', 'Koniec obserwacji', 'Zakonczono obserwacje terenu ze wzgledu na brak nietypowych zachowan'),
  (5, 0, '2006-02-24', 'Przeszukanie', 'W wyniku przeszukania znaleziono 40 ton szarego mydla'),
  (6, 6, '2016-07-01', 'Przeszukanie', 'Podczas przeszukania wylegitymowano 141 nielegalnych, tureckich imigrantow');

INSERT INTO Suspects (id, address_id, first_name, last_name, sex, date_of_birth) VALUES
  (0, 0, 'Adam', 'Nowak', 1, '1984-01-01'),
  (1, 0, 'Barbara', 'Nowak', 0, '1986-04-02'),
  (2, 1, 'Piotr', 'Kowalski', 1, '1981-07-21'),
  (3, 5, 'Mohammad', 'Afir', 1, '1972-09-09'),
  (4, 6, 'Mohammad', 'Iris', 1, '1979-12-30'),
  (5, 6, 'Mohammad', 'Irfan', 1, '1998-07-29');

INSERT INTO SuspectNotes (id, suspect_id, time, title, note) VALUES
  (0, 5, '2017-05-16', 'Rozpoznanie', 'W zasadzie niegrozny'),
  (1, 3, '2017-05-17', 'Rozpoznanie', 'Potencjalny terrorysta'),
  (2, 4, '2017-05-17', 'Rozpoznanie', 'Znany terrorysta, lekko przyglupi');

INSERT INTO Offences (id, location_id, date, description) VALUES
  (0, 0, '2017-01-01', 'Bardzo grozny zamach w sylwestra'),
  (1, 3, '2015-01-01', 'Udaremniona proba wysadzenia sklepu monopolowego');

INSERT INTO Participations (id, suspect_id, offence_id, description) VALUES
  (0, 1, 0, 'Glowny organizator'),
  (1, 4, 1, 'Glowny organizator i planista'),
  (2, 3, 1, 'Prawa raczka organizatora');
