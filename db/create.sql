
  -- feedback GEE 30 jan
  -- doe de volgende stappen uiot de opdracht (in de volgorde zoals ze er staan)
  -- 1.Maak tabellen en velden (CREATE TABLE commando) in je database waarin alle informatie kan worden opgeslagen die je over je producten wilt tonen.
  -- 2. Vul de tabellen met informatie (INSERT commando)
  -- 3. Voeg eventueel plaatjes toe (web/images map)
  --
    -- jullie verkopen shirts en andere producten van clubs
    -- de informatie over clubs zet je in een aparte tebel
    -- je verwijst vanuit je producten tabel naar het id van de club in de club-tabel
    -- op die manier staat alle club informatie er maar 1x in.
    --  in video 4 wordt dit min of meer voorgedaan met een ander voorbeeld, wat je zelf kunt aanpassen
  --
  -- kijk daarna in de opdracht bij de beoordling wat je nog meer moet doen

  CREATE TABLE products (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    code VARCHAR(15),
    name VARCHAR(30),
    land_id INTEGER,
    materiaal_id INTEGER,
    kleur_id INTEGER,
    description TEXT,
    price NUMERIC(10, 2)
  );
  CREATE TABLE land (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(100)
    );
  CREATE TABLE materiaal (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(255)
    );
CREATE TABLE kleur (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255)
  );

CREATE TABLE ProductMetLand (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  products_id INTEGER,
  land_id INTEGER
);






  --
  -- populate with data
  --
  -- generared using
  -- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
  --
  -- want different data? check: https://www.mockaroo.com/910b6c20
  --

  insert into products (name, description, code, price, land_id, materiaal_id, kleur_id) values ('Real Madrid Thuisshirt 23/24', 'Thuis Tenue Real Madrid CF 23/24', '816905633-0', 89, 3, 1, 2);
  insert into products (name, description, code, price, land_id, materiaal_id, kleur_id) values ('Feyenoord Thuisshirt 23/24', 'Thuis Tenue Feyenoord 23/24', '077030122-3', 90, 2, 1, 4);
  insert into products (name, description, code, price, land_id, materiaal_id, kleur_id) values ('Manchester United Thuisshirt 23/24', 'Thuis Tenue Manchester United 23/24', '445924201-X', 99, 3, 1, 2);
  insert into products (name, description, code, price, land_id, materiaal_id, kleur_id) values ('Manchester City Thuisshirt 23/24', 'Thuis Tenue Manchester City 23/24', '693155505-7', 89, 3, 1, 4);
  insert into products (name, description, code, price, land_id, materiaal_id, kleur_id) values ('FC Barcelona Thuisshirt 23/24', 'Thuis Tenue FC Barcelona 23/24', '686928463-6', 99, 1, 1, 5);
  insert into products (name, description, code, price, land_id, materiaal_id, kleur_id) values ('Inter Milan Thuisshirt 23/24', 'Thuis Tenue AC Milan 23/24', '492662523-7', 80, 4, 1, 6);
  insert into products (name, description, code, price, land_id, materiaal_id, kleur_id) values ('Paris Saint-Germain FC Thuisshirt 23/24', 'Thuis Tenue Paris Saint-Germain FC 23/24', '692662523-7', 110, 1, 1, 5);
  insert into products (name, description, code, price, land_id, materiaal_id, kleur_id) values ('FC Bayern München Thuisshirt 23/24', 'Thuis Tenue FC Bayern München 23/24', '482662523-7', 85, 6, 1, 4);
  insert into products (name, description, code, price, land_id, materiaal_id, kleur_id) values ('Borussia Dortmund Thuisshirt 23/24', 'Thuis Tenue Borussia Dortmund 23/24', '452662523-7', 89, 6, 1, 7);
  insert into products (name, description, code, price, land_id, materiaal_id, kleur_id) values ('Arsenal FC Thuisshirt 23/24', 'Thuis Tenue Arsenal FC 23/24', '492663523-7', 99, 3, 1, 8);


--landen
insert into land (name) values ('spanje'); 
insert into land (name) values ('nederland'); 
insert into land (name) values ('engeland'); 
insert into land (name) values ('italie'); 
insert into land (name) values ('frankrijk'); 
insert into land (name) values ('duitsland'); 

--materiaal
insert into materiaal (name) values ('polyester'); 

--kleur
insert into kleur (name) values ('blauw'); 
insert into kleur (name) values ('wit'); 
insert into kleur (name) values ('rood'); 
insert into kleur (name) values ('geel'); 
insert into kleur (name) values ('zwart'); 
insert into kleur (name) values ('lichtblauw'); 
insert into kleur (name) values ('donkerblauw'); 
insert into kleur (name) values ('goud'); 


-- product en Land
 insert into ProductMetLand (products_id, land_id) values (1, 1);
  insert into ProductMetLand (products_id, land_id) values (1, 3);
  insert into ProductMetLand (products_id, land_id) values (1, 4);
  insert into ProductMetLand (products_id, land_id) values (2, 1);
  insert into ProductMetLand (products_id, land_id) values (2, 6);
  insert into ProductMetLand (products_id, land_id) values (2, 6);
  insert into ProductMetLand (products_id, land_id) values (2, 5);
  insert into ProductMetLand (products_id, land_id) values (3, 4);
  insert into ProductMetLand (products_id, land_id) values (3, 2);
  insert into ProductMetLand (products_id, land_id) values (3, 4);
  insert into ProductMetLand (products_id, land_id) values (3, 3);
  insert into ProductMetLand (products_id, land_id) values (3, 5);
  insert into ProductMetLand (products_id, land_id) values (3, 3);
  insert into ProductMetLand (products_id, land_id) values (4, 6);
  insert into ProductMetLand (products_id, land_id) values (4, 5);
  insert into ProductMetLand (products_id, land_id) values (4, 2);
  insert into ProductMetLand (products_id, land_id) values (4, 5);
  insert into ProductMetLand (products_id, land_id) values (4, 5);
  insert into ProductMetLand (products_id, land_id) values (4, 1);
  insert into ProductMetLand (products_id, land_id) values (5, 1);
  insert into ProductMetLand (products_id, land_id) values (5, 3);
  insert into ProductMetLand (products_id, land_id) values (5, 2);
  insert into ProductMetLand (products_id, land_id) values (5, 3);
  insert into ProductMetLand (products_id, land_id) values (5, 2);
  insert into ProductMetLand (products_id, land_id) values (5, 4);
  insert into ProductMetLand (products_id, land_id) values (6, 1);
  insert into ProductMetLand (products_id, land_id) values (6, 1);
  insert into ProductMetLand (products_id, land_id) values (6, 7);
  insert into ProductMetLand (products_id, land_id) values (6, 5);
  insert into ProductMetLand (products_id, land_id) values (6, 3);
  insert into ProductMetLand (products_id, land_id) values (7, 8);
  insert into ProductMetLand (products_id, land_id) values (7, 4);
  insert into ProductMetLand (products_id, land_id) values (7, 7);
  insert into ProductMetLand (products_id, land_id) values (7, 6);
  insert into ProductMetLand (products_id, land_id) values (7, 5);
  insert into ProductMetLand (products_id, land_id) values (7, 4);
  insert into ProductMetLand (products_id, land_id) values (8, 1);
  insert into ProductMetLand (products_id, land_id) values (8, 4);
  insert into ProductMetLand (products_id, land_id) values (8, 2);
  insert into ProductMetLand (products_id, land_id) values (8, 5);
  insert into ProductMetLand (products_id, land_id) values (8, 6);
  insert into ProductMetLand (products_id, land_id) values (8, 2);
  insert into ProductMetLand (products_id, land_id) values (8, 1);
  insert into ProductMetLand (products_id, land_id) values (9, 1);
  insert into ProductMetLand (products_id, land_id) values (9, 6);
  insert into ProductMetLand (products_id, land_id) values (9, 5);
  insert into ProductMetLand (products_id, land_id) values (9, 3);
  insert into ProductMetLand (products_id, land_id) values (9, 4);
  insert into ProductMetLand (products_id, land_id) values (9, 4);
  insert into ProductMetLand (products_id, land_id) values (10, 1);
  insert into ProductMetLand (products_id, land_id) values (10, 5);
  insert into ProductMetLand (products_id, land_id) values (10, 5);
  insert into ProductMetLand (products_id, land_id) values (10, 3);
  insert into ProductMetLand (products_id, land_id) values (10, 4);





