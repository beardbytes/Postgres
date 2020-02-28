C:\New folder
λ psql -U postgres postgres
Password for user postgres:
psql (12.2)
WARNING: Console code page (437) differs from Windows code page (1252)
         8-bit characters might not work correctly. See psql reference
         page "Notes for Windows users" for details.
Type "help" for help.

postgres=# \l
                                         List of databases
   Name    |  Owner   | Encoding |      Collate       |       Ctype        |   Access privileges
-----------+----------+----------+--------------------+--------------------+-----------------------
 postgres  | postgres | UTF8     | English_India.1252 | English_India.1252 |
 template0 | postgres | UTF8     | English_India.1252 | English_India.1252 | =c/postgres          +
           |          |          |                    |                    | postgres=CTc/postgres
 template1 | postgres | UTF8     | English_India.1252 | English_India.1252 | =c/postgres          +
           |          |          |                    |                    | postgres=CTc/postgres
(3 rows)


postgres=# CREATE DATABASE example
postgres-# \l
                                         List of databases
   Name    |  Owner   | Encoding |      Collate       |       Ctype        |   Access privileges
-----------+----------+----------+--------------------+--------------------+-----------------------
 postgres  | postgres | UTF8     | English_India.1252 | English_India.1252 |
 template0 | postgres | UTF8     | English_India.1252 | English_India.1252 | =c/postgres          +
           |          |          |                    |                    | postgres=CTc/postgres
 template1 | postgres | UTF8     | English_India.1252 | English_India.1252 | =c/postgres          +
           |          |          |                    |                    | postgres=CTc/postgres
(3 rows)


postgres-# CREATE DATABASE example;
ERROR:  syntax error at or near "CREATE"
LINE 2: CREATE DATABASE example;
        ^
postgres=# CREATE DATABASE example;
CREATE DATABASE
postgres=# \l
                                         List of databases
   Name    |  Owner   | Encoding |      Collate       |       Ctype        |   Access privileges
-----------+----------+----------+--------------------+--------------------+-----------------------
 example   | postgres | UTF8     | English_India.1252 | English_India.1252 |
 postgres  | postgres | UTF8     | English_India.1252 | English_India.1252 |
 template0 | postgres | UTF8     | English_India.1252 | English_India.1252 | =c/postgres          +
           |          |          |                    |                    | postgres=CTc/postgres
 template1 | postgres | UTF8     | English_India.1252 | English_India.1252 | =c/postgres          +
           |          |          |                    |                    | postgres=CTc/postgres
(4 rows)


postgres=# CREATE TABLE cards(
postgres(# id INTEGER NOT NULL,
postgres(# board_id INTEGER NOT NULL,
postgres(# data jsonb);
CREATE TABLE
postgres=# cards
postgres-# ;
ERROR:  syntax error at or near "cards"
LINE 1: cards
        ^
postgres=# SHOW TABLE cards;
ERROR:  syntax error at or near "TABLE"
LINE 1: SHOW TABLE cards;
             ^
postgres=# \d cards
                Table "public.cards"
  Column  |  Type   | Collation | Nullable | Default
----------+---------+-----------+----------+---------
 id       | integer |           | not null |
 board_id | integer |           | not null |
 data     | jsonb   |           |          |


postgres=# INSERT INTO cards VALUES (1, 1, '{"name": "Paint house", "tags": ["Improvements", "Office"], "finished": true}');
INSERT 0 1
postgres=# INSERT INTO cards VALUES (2, 1, '{"name": "Wash dishes", "tags": ["Clean", "Kitchen"], "finished": false}');
INSERT 0 1
postgres=# INSERT INTO cards VALUES (3, 1, '{"name": "Cook lunch", "tags": ["Cook", "Kitchen", "Tacos"], "ingredients": ["Tortillas", "Guacamole"], "finished": false}');
INSERT 0 1
postgres=# INSERT INTO cards VALUES (4, 1, '{"name": "Vacuum", "tags": ["Clean", "Bedroom", "Office"], "finished": false}');
INSERT 0 1
postgres=# INSERT INTO cards VALUES (5, 1, '{"name": "Hang paintings", "tags": ["Improvements", "Office"], "finished": false}');
INSERT 0 1
postgres=# SELECT data->>'name' AS name FROM cards
postgres-# ;
      name
----------------
 Paint house
 Wash dishes
 Cook lunch
 Vacuum
 Hang paintings
(5 rows)


postgres=# SELECT * FROM cards WHERE data->>'finished' = 'true';
 id | board_id |                                     data
----+----------+-------------------------------------------------------------------------------
  1 |        1 | {"name": "Paint house", "tags": ["Improvements", "Office"], "finished": true}
(1 row)


postgres=# SELECT count(*) FROM cards WHERE data ? 'ingredients';
 count
-------
     1
(1 row)


postgres=# SELECT   jsonb_array_elements_text(data->'tags') as tag FROM cards WHERE id = 1
postgres-# ;
     tag
--------------
 Improvements
 Office
(2 rows)


postgres=# SELECT jsonb_array_elements_text(data->'tags') as tag FROM cards WHERE id = 1;
     tag
--------------
 Improvements
 Office
(2 rows)


postgres=# SELECT count(*) FROM cards WHERE data->>'finished' = 'true';
 count
-------
     1
(1 row)


postgres=# SELECT count(*) FROM cards WHERE data->'tags' ? 'Clean' AND data->'tags' ? 'Kitchen';
 count
-------
     1
(1 row)


postgres=# Aggregate (cost=385.00..385.01 rows=1 width=0) (actual time=6.673..6.673 rows=1 loops=1) -> Seq Scan on cards (cost=0.00..385.00 rows=1 width=0) (actual time=0.021..6.500 rows=1537 loops=1)     Filter: (((data -> 'tags'::text) ? 'Clean'::text) AND ((data -> 'tags'::text) ? 'Kitchen'::text))
postgres-# ;
ERROR:  syntax error at or near "Aggregate"
LINE 1: Aggregate (cost=385.00..385.01 rows=1 width=0) (actual time=...
        ^
postgres=# CREATE INDEX idxgintags ON cards USING gin ((data->'tags'));
CREATE INDEX
postgres=# CREATE INDEX idxgindata ON cards USING gin (data);  SELECT count(*) FROM cards WHERE   data @> '{"tags": ["Clean", "Kitchen"]}';
CREATE INDEX
 count
-------
     1
(1 row)


postgres=# SELECT count(*) FROM cards WHERE   data @> '{"tags": ["Clean", "Kitchen"]}';
 count
-------
     1
(1 row)


postgres=#