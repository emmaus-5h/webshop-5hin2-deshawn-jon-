--
-- create tables
--

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
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2)
);
CREATE TABLE  (
teams VARCHAR(200),
  
);



--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price) values ('Real Madrid Thuisshirt 23/24', 'Thuis Tenue Real Madrid CF 23/24', '816905633-0', 55);
insert into products (name, description, code, price) values ('Feyenoord Thuisshirt 23/24', 'Thuis Tenue Feyenoord 23/24', '077030122-3', 55);
insert into products (name, description, code, price) values ('Manchester United Thuisshirt 23/24', 'Thuis Tenue Manchester United 23/24', '445924201-X', 55);
insert into products (name, description, code, price) values ('Manchester City Thuisshirt 23/24', 'Thuis Tenue Manchester City 23/24', '693155505-7', 55);
insert into products (name, description, code, price) values ('FC Barcelona Thuisshirt 23/24', 'Thuis Tenue FC Barcelona 23/24', '686928463-6', 55);
insert into products (name, description, code, price) values ('Inter Milan Thuisshirt 23/24', 'Thuis Tenue AC Milan 23/24', '492662523-7', 55);
insert into products (name, description, code, price) values ('Paris Saint-Germain FC Thuisshirt 23/24', 'Thuis Tenue Paris Saint-Germain FC 23/24', '692662523-7', 55);
insert into products (name, description, code, price) values ('FC Bayern München Thuisshirt 23/24', 'Thuis Tenue FC Bayern München 23/24', '482662523-7', 55);
insert into products (name, description, code, price) values ('Borussia Dortmund Thuisshirt 23/24', 'Thuis Tenue Borussia Dortmund 23/24', '452662523-7', 55);
insert into products (name, description, code, price) values ('Arsenal FC Thuisshirt 23/24', 'Thuis Tenue Arsenal FC 23/24', '492663523-7', 55);