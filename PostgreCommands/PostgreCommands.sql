
Commands used in Postgre :

1) CREATE 
CREATE DATABASE test;
CREATE DATABASE
2)\l : used to list the databases 
postgres=# \l
                                         List of databases
   Name    |  Owner   | Encoding |      Collate       |       Ctype
        |   Access privileges
-----------+----------+----------+--------------------+--------------------+-----------------------
 postgres  | postgres | UTF8     | English_India.1252 | English_India.1252 |
 template0 | postgres | UTF8     | English_India.1252 | English_India.1252 | =c/postgres          +
           |          |          |                    |
        | postgres=CTc/postgres
 template1 | postgres | UTF8     | English_India.1252 | English_India.1252 | =c/postgres          +
           |          |          |                    |
        | postgres=CTc/postgres
 test      | postgres | UTF8     | English_India.1252 | English_India.1252 |
(4 rows)

3) Created table without constraints


CREATE TABLE person (
test(# id INT,
test(# first_name VARCHAR(50),
test(# last_name VARCHAR(52),
test(# gender VARCHAR(7),
test(# date_of_birth DATE );
CREATE TABLE

4) \d
         List of relations
 Schema |  Name  | Type  |  Owner
--------+--------+-------+----------
 public | person | table | postgres
(1 row)

5) \d person
                         Table "public.person"
    Column     |         Type          | Collation | Nullable | Default
---------------+-----------------------+-----------+----------+---------
 id            | integer               |           |          |
 first_name    | character varying(50) |           |          |
 last_name     | character varying(52) |           |          |
 gender        | character varying(7)  |           |          |
 date_of_birth | date                  |           |          |

6) Created table with constraints

CREATE TABLE person (
test(# id BIGSERIAL NOT NULL PRIMARY KEY,
test(# first_name VARCHAR(50) NOT NULL,
test(# last_name VARCHAR(52) NOT NULL,
test(# gender VARCHAR(7) NOT NULL,
test(# date_of_birth DATE NOT NULL);
CREATE TABLE

7) \d person
                                       Table "public.person"
    Column     |         Type          | Collation | Nullable |
          Default
---------------+-----------------------+-----------+----------+------------------------------------
 id            | bigint                |           | not null | nextval('person_id_seq'::regclass)
 first_name    | character varying(50) |           | not null |
 last_name     | character varying(52) |           | not null |
 gender        | character varying(7)  |           | not null |
 date_of_birth | date                  |           | not null |
Indexes:
    "person_pkey" PRIMARY KEY, btree (id)

8)

INSERT INTO person(first_name , last_name , gender , date_of_birth)
test-# VALUES('Anne' , 'Smith' , 'FEMALE' ,date '1990-01-09');
INSERT 0 1
test=# INSERT INTO person(first_name , last_name , gender , date_of_birth , email)
test-# VALUES('Jake' , 'Jane' , 'MALE' ,date '1990-12-31' , 'jake@gmail.com');
INSERT 0 1

9) 

SELECT * FROM person1;
 id | first_name | last_name | gender | date_of_birth |     email
----+------------+-----------+--------+---------------+----------------
  1 | Anne       | Smith     | FEMALE | 1990-01-09    |
  2 | Jake       | Jane      | MALE   | 1990-12-31    | jake@gmail.com
(2 rows)


10)

SELECT first_name FROM person1;
 first_name
------------
 Anne
 Jake
(2 rows)

11 ) 

SELECT * FROM person ORDER BY country_of_birth;
  first_name  |    last_name    | gender | date_of_birth |                email                |          country_of_birth
--------------+-----------------+--------+---------------+-------------------------------------+------------------------------------
 Zelig        | Dudenie         | Male   | 2018-12-20    | zdudenieih@ihg.com                  | Afghanistan
 Starla       | Mariolle        | Female | 2019-05-15    |                                     | Afghanistan
 Westley      | Massei          | Male   | 2019-04-27    | wmassei81@freewebs.com              | Afghanistan
 Graehme      | Hawyes          | Male   | 2019-10-24    |                                     | Afghanistan
 Halsey       | Tinwell         | Male   | 2019-07-13    | htinwellhz@cocolog-nifty.com        | Afghanistan
 Anabel       | Lawrey          | Female | 2019-02-08    |                                     | Albania
 Perle        | Heigho          | Female | 2019-03-21    | pheighoe@networksolutions.com       | Albania
 Bobbie       | Stamp           | Female | 2019-02-28    | bstampkc@dailymail.co.uk            | Albania
 Rudolph      | Cymper          | Male   | 2019-11-05    | rcymperrq@phpbb.com                 | Angola
 Dorree       | Besant          | Female | 2019-11-06    |                                     | Angola
 Timoteo      | Crosbie         | Male   | 2019-06-14    | tcrosbiemp@prnewswire.com           | Antigua and Barbuda

12 )
SELECT * FROM person ORDER BY email ;
  first_name  |    last_name    | gender | date_of_birth |                email                |          country_of_birth
--------------+-----------------+--------+---------------+-------------------------------------+------------------------------------
 Aline        | Allsup          | Female | 2019-07-31    | aallsupjt@spiegel.de                | Tanzania
 Aleece       | Attenbarrow     | Female | 2019-07-24    | aattenbarrowf5@wix.com              | Philippines
 Aland        | Balfre          | Male   | 2019-10-25    | abalfredn@unc.edu                   | Denmark
 Albrecht     | Blackater       | Male   | 2019-07-24    | ablackaterow@umich.edu              | Palestinian Territory
 Abe          | Bridgens        | Male   | 2019-07-07    | abridgensfq@reddit.com              | Pakistan
 Alyson       | Burtwistle      | Female | 2019-05-29    | aburtwistleqr@harvard.edu           | Indonesia
 Avram        | Claricoates     | Male   | 2019-01-22    | aclaricoates5i@sina.com.cn          | Brazil
 Ansley       | Code            | Female | 2019-10-12    | acodep9@dailymail.co.uk             | Moldova
 Aymer        | Daelman         | Male   | 2019-02-08    | adaelmany@homestead.com             | China
 Aimil        | Darlaston       | Female | 2019-02-02    | adarlastoncf@canalblog.com          | Portugal
 Alena        | Dirkin          | Female | 2019-04-24    | adirkinp@yellowbook.com             | Portugal
 Adrian       | Doley           | Female | 2019-01-31    | adoleyft@blogtalkradio.com          | Philippines
 Andonis      | Eakins          | Male   | 2019-08-14    | aeakinsbp@sourceforge.net           | Indonesia
 Avrom        | Farrell         | Male   | 2019-10-26    | afarrellfp@rakuten.co.jp            | Armenia
 Alexis       | Filippucci      | Female | 2019-01-22    | afilippucci3s@yellowbook.com        | Philippines
 Amara        | Gawkroge        | Female | 2019-03-21    | agawkroge56@fc2.com                 | China
 Alexina      | Gillies         | Female | 2019-06-19    | agillies61@t.co                     | China
 Ami          | Greenshields    | Female | 2019-03-02    | agreenshields87@friendfeed.com      | China
 Anneliese    | Halhead         | Female | 2019-07-28    | ahalheaddu@storify.com              | Indonesia
 Arron        | Highman         | Male   | 2018-11-20    | ahighmanoy@wordpress.org            | Israel
 Alexis       | Horche          | Female | 2019-10-19    | ahorchegv@goo.gl                    | Indonesia
 Aubine       | Ifill           | Female | 2019-05-23    | aifilln3@so-net.ne.jp               | Poland
 Artair       | Ilyunin         | Male   | 2019-10-23    | ailyuniniu@biglobe.ne.jp            | Sweden
 Al           | Innott          | Male   | 2019-10-05    | ainnottd3@about.com                 | Croatia
 Ashia        | Jendrusch       | Female | 2018-12-09    | ajendrusch8k@si.edu                 | Palestinian Territory
 Aurora       | Jewers          | Female | 2019-01-01    | ajewersbx@jigsy.com                 | United States
 Avivah       | Klee            | Female | 2019-08-17    | aklee48@360.cn                      | Honduras
 Ambros       | Klimowicz       | Male   | 2019-06-02    | aklimowiczlk@quantcast.com          | China

13 )

SELECT DISTINCT country_of_birth FROM person ORDER BY country_of_birth DESC;
          country_of_birth
------------------------------------
 Zimbabwe
 Zambia
 Yemen
 Vietnam
 Venezuela
 Uzbekistan
 United States
 Ukraine
 Uganda
 Tuvalu
 Turkmenistan
 Tunisia
 Trinidad and Tobago
 Togo
 Thailand
 Tanzania
 Tajikistan
 Taiwan
 Syria
 Sweden
 Sri Lanka
 Spain
 South Korea
 South Africa
 Somalia
 Slovenia

14)

SELECT * FROM person WHERE gender='Female';
  first_name  |   last_name   | gender | date_of_birth |                email                |          country_of_birth
--------------+---------------+--------+---------------+-------------------------------------+------------------------------------
 Carlene      | Corson        | Female | 2019-02-09    |                                     | Venezuela
 Natasha      | Kenson        | Female | 2019-04-06    | nkenson1@patch.com                  | Malaysia
 Bren         | Dickerson     | Female | 2019-01-12    | bdickerson2@sciencedaily.com        | Poland
 Karla        | Ovanesian     | Female | 2019-03-20    |                                     | China
 Germaine     | Lakin         | Female | 2019-08-29    | glakin5@is.gd                       | Honduras
 Jobi         | Idwal Evans   | Female | 2019-11-14    | jidwalevans7@edublogs.org           | Colombia
 Zonnya       | McGenis       | Female | 2019-07-22    |                                     | Indonesia
 Florida      | Cestard       | Female | 2019-08-26    | fcestard9@booking.com               | China
 Mellisent    | McGauhy       | Female | 2018-12-04    | mmcgauhya@csmonitor.com             | Poland
 Perle        | Heigho        | Female | 2019-03-21    | pheighoe@networksolutions.com       | Albania
 Sidonia      | Cavill        | Female | 2019-02-13    | scavillh@wix.com                    | Estonia
 Briney       | Huish         | Female | 2019-10-13    |                                     | Brazil

15)

SELECT * FROM person WHERE gender='Female' AND country_of_birth = 'Poland';
 first_name | last_name | gender | date_of_birth |              email              | country_of_birth
------------+-----------+--------+---------------+---------------------------------+------------------
 Bren       | Dickerson | Female | 2019-01-12    | bdickerson2@sciencedaily.com    | Poland
 Mellisent  | McGauhy   | Female | 2018-12-04    | mmcgauhya@csmonitor.com         | Poland
 Delilah    | Lange     | Female | 2019-08-19    | dlange2h@netvibes.com           | Poland
 Caril      | McKellen  | Female | 2019-08-02    |                                 | Poland
 Jessa      | Berisford | Female | 2019-01-28    | jberisford3i@huffingtonpost.com | Poland
 Dorine     | Halfhide  | Female | 2019-03-28    | dhalfhide3p@mapquest.com        | Poland
 Helenka    | Brunicke  | Female | 2018-12-01    | hbrunicke5n@hatena.ne.jp        | Poland
 Diana      | Collum    | Female | 2018-12-11    | dcollum5o@wordpress.org         | Poland
 Dione      | Upward    | Female | 2018-11-28    | dupward7r@mapy.cz               | Poland
 Rosie      | Jaques    | Female | 2019-01-24    | rjaques8m@statcounter.com       | Poland
 Jo         | Tropman   | Female | 2019-04-19    | jtropmancs@google.de            | Poland
 Julieta    | Haxby     | Female | 2019-02-05    |                                 | Poland

16)

 SELECT * FROM person WHERE gender='Female' AND country_of_birth = 'Poland' OR country_of_birth = 'China';
 first_name |   last_name   | gender | date_of_birth |                email                | country_of_birth
------------+---------------+--------+---------------+-------------------------------------+------------------
 Bren       | Dickerson     | Female | 2019-01-12    | bdickerson2@sciencedaily.com        | Poland
 Harv       | Pindred       | Male   | 2019-02-14    |                                     | China
 Karla      | Ovanesian     | Female | 2019-03-20    |                                     | China
 Florida    | Cestard       | Female | 2019-08-26    | fcestard9@booking.com               | China
 Mellisent  | McGauhy       | Female | 2018-12-04    | mmcgauhya@csmonitor.com             | Poland
 Erhart     | Tabb          | Male   | 2018-12-12    |                                     | China
 Cello      | Skelhorne     | Male   | 2019-06-21    | cskelhornec@ustream.tv              | China
 Ryley      | Soppeth       | Male   | 2019-07-11    | rsoppethg@phpbb.com                 | China
 Robinet    | Birckmann     | Male   | 2019-05-26    | rbirckmanni@wikipedia.org           | China
 Rollins    | Baine         | Male   | 2019-01-23    | rbainej@miibeian.gov.cn             | China
 Langston   | Castello      | Male   | 2019-03-01    | lcastellol@google.it                | China
 Aymer      | Daelman       | Male   | 2019-02-08    | adaelmany@homestead.com             | China

17)

SELECT 1 < 1;
 ?column?
----------
 f
(1 row)

18)
  SELECT * FROM person OFFSET 5 LIMIT 5;

 first_name |  last_name  | gender | date_of_birth |           email           | country_of_birth
------------+-------------+--------+---------------+---------------------------+------------------
 Germaine   | Lakin       | Female | 2019-08-29    | glakin5@is.gd             | Honduras
 Muhammad   | Burwood     | Male   | 2018-12-23    |                           | France
 Jobi       | Idwal Evans | Female | 2019-11-14    | jidwalevans7@edublogs.org | Colombia
 Zonnya     | McGenis     | Female | 2019-07-22    |                           | Indonesia
 Florida    | Cestard     | Female | 2019-08-26    | fcestard9@booking.com     | China



19)
 SELECT * FROM person OFFSET 5 FETCH FIRST 1 ROW ONLY;
 first_name | last_name | gender | date_of_birth |     email     | country_of_birth
------------+-----------+--------+---------------+---------------+------------------
 Germaine   | Lakin     | Female | 2019-08-29    | glakin5@is.gd | Honduras
(1 row)

20)

 SELECT * FROM person WHERE country_of_birth IN('China' , 'Brazil' ,'France');
 first_name |   last_name   | gender | date_of_birth |                email                | country_of_birth
------------+---------------+--------+---------------+-------------------------------------+------------------
 Harv       | Pindred       | Male   | 2019-02-14    |                                     | China
 Karla      | Ovanesian     | Female | 2019-03-20    |                                     | China
 Muhammad   | Burwood       | Male   | 2018-12-23    |                                     | France
 Florida    | Cestard       | Female | 2019-08-26    | fcestard9@booking.com               | China
 Erhart     | Tabb          | Male   | 2018-12-12    |                                     | China
 Cello      | Skelhorne     | Male   | 2019-06-21    | cskelhornec@ustream.tv              | China
 Ryley      | Soppeth       | Male   | 2019-07-11    | rsoppethg@phpbb.com                 | China
 Robinet    | Birckmann     | Male   | 2019-05-26    | rbirckmanni@wikipedia.org           | China
 Rollins    | Baine         | Male   | 2019-01-23    | rbainej@miibeian.gov.cn             | China
 Briney     | Huish         | Female | 2019-10-13    |                                     | Brazil
 Langston   | Castello      | Male   | 2019-03-01    | lcastellol@google.it                | China
 Aymer      | Daelman       | Male   | 2019-02-08    | adaelmany@homestead.com             | China
 Marve      | Sivills       | Male   | 2018-11-29    |                                     | China

21)

SELECT * FROM person WHERE date_of_birth BETWEEN DATE '2018-01-01' AND '2019-01-01';
 first_name |    last_name    | gender | date_of_birth |               email                |   country_of_birth
------------+-----------------+--------+---------------+------------------------------------+-----------------------
 Muhammad   | Burwood         | Male   | 2018-12-23    |                                    | France
 Mellisent  | McGauhy         | Female | 2018-12-04    | mmcgauhya@csmonitor.com            | Poland
 Erhart     | Tabb            | Male   | 2018-12-12    |                                    | China
 Bel        | Bingle          | Female | 2018-12-02    | bbinglev@omniture.com              | Russia
 Patrica    | Osanne          | Female | 2018-12-23    | posannex@hc360.com                 | Sri Lanka
 Hale       | Dufton          | Male   | 2018-11-16    | hdufton14@ihg.com                  | Sweden
 Jany       | Gutman          | Female | 2018-12-17    | jgutman18@chicagotribune.com       | China
 Marco      | Bonafant        | Male   | 2018-12-10    | mbonafant1f@tmall.com              | Indonesia
 Starlene   | Reason          | Female | 2018-11-22    | sreason1i@furl.net                 | Greece
 Bride      | Blurton         | Female | 2018-12-16    | bblurton22@sina.com.cn             | Spain
 Harrie     | Pendre          | Female | 2018-12-06    | hpendre2b@army.mil                 | Russia
 Desdemona  | Treuge          | Female | 2018-12-13    | dtreuge2f@so-net.ne.jp             | China
 Ignacio    | Bosquet         | Male   | 2018-12-08    | ibosquet2g@howstuffworks.com       | China
 Derrik     | Jelphs          | Male   | 2018-11-27    | djelphs2m@naver.com                | Indonesia
 Sherwin    | Lebbon          | Male   | 2018-12-13    | slebbon2n@dyndns.org               | Indonesia
 Marve      | Sivills         | Male   | 2018-11-29    |                                    | China
 Rudolfo    | Seear           | Male   | 2018-12-25    | rseear30@bluehost.com              | Sweden
 Harper     | Twidell         | Male   | 2018-12-08    |                                    | South Africa
 Yvon       | Bampford        | Male   | 2018-12-13    | ybampford3v@discuz.net             | Nigeria
 Gavin      | Vigneron        | Male   | 2018-12-26    | gvigneron3x@google.com.hk          | Peru
 Rikki      | Kees            | Male   | 2018-12-21    | rkees4g@ihg.com                    | Tuvalu
 Cordy      | Donisthorpe     | Male   | 2019-01-01    | cdonisthorpe4p@cbc.ca              | Greece
 Selina     | Forrestor       | Female | 2018-12-31    |                                    | Zimbabwe
 Simone     | Vellacott       | Female | 2018-11-21    | svellacott4v@businesswire.com      | Russia
 Brianne    | Solley          | Female | 2018-12-20    | bsolley5j@goodreads.com            | Brazil
 Helenka    | Brunicke        | Female | 2018-12-01    | hbrunicke5n@hatena.ne.jp           | Poland
 Diana      | Collum          | Female | 2018-12-11    | dcollum5o@wordpress.org            | Poland
 Waite      | Playhill        | Male   | 2018-11-20    |                                    | Indonesia
 Aldis      | Papez           | Male   | 2018-12-03    | apapez63@mapy.cz                   | Jamaica
 Menard     | Plowes          | Male   | 2018-12-02    |                                    | China
 Annadiana  | Castells        | Female | 2018-12-28    |                                    | Palestinian Territory
 Solly      | Bernli          | Male   | 2018-12-05    | sbernli6o@google.com.br            | France
 Jaquelin   | Leopard         | Female | 2018-12-05    | jleopard6z@fda.gov                 | Greece
 Hilliard   | Adhams          | Male   | 2018-12-11    | hadhams72@hubpages.com             | China
 Shannan    | Zaczek          | Male   | 2018-12-19    | szaczek7a@noaa.gov                 | Philippines
 Mohandis   | Rozenzweig      | Male   | 2018-11-17    | mrozenzweig7n@phoca.cz             | China

22)

SELECT * FROM person WHERE email LIKE '%@bloomberg.com';
 first_name | last_name | gender | date_of_birth |           email           | country_of_birth
------------+-----------+--------+---------------+---------------------------+------------------
 Pegeen     | Merrydew  | Female | 2019-02-10    | pmerrydewo@bloomberg.com  | Philippines
 Cobbie     | D'Angeli  | Male   | 2018-12-19    | cdangelio3@bloomberg.com  | Somalia
 Margette   | Bancroft  | Female | 2018-12-03    | mbancroftrr@bloomberg.com | Poland
(3 rows)

24)

 SELECT * FROM person WHERE email LIKE '%@google.%';
 first_name |  last_name  | gender | date_of_birth |            email            |   country_of_birth
------------+-------------+--------+---------------+-----------------------------+-----------------------
 Langston   | Castello    | Male   | 2019-03-01    | lcastellol@google.it        | China
 Hilario    | Scolli      | Male   | 2019-10-05    | hscolli1k@google.fr         | Palestinian Territory
 Ediva      | Sired       | Female | 2019-05-07    | esired2d@google.ru          | China
 Creigh     | Harsnipe    | Male   | 2019-05-21    | charsnipe2z@google.es       | Chad
 Gavin      | Vigneron    | Male   | 2018-12-26    | gvigneron3x@google.com.hk   | Peru
 Weidar     | Bridgewater | Male   | 2019-03-06    | wbridgewater6i@google.co.uk | Brazil
 Solly      | Bernli      | Male   | 2018-12-05    | sbernli6o@google.com.br     | France
 Cammi      | Vasnev      | Female | 2018-12-22    | cvasnev80@google.co.uk      | Faroe Islands
 Web        | McFee       | Male   | 2019-01-26    | wmcfee9f@google.cn          | Sweden
 Sindee     | Wasiel      | Female | 2019-11-01    | swasielab@google.com.hk     | Indonesia
 Bibbye     | Stredwick   | Female | 2019-03-06    | bstredwickbi@google.nl      | Portugal
 Jo         | Tropman     | Female | 2019-04-19    | jtropmancs@google.de        | Poland
 Karna      | Grinstead   | Female | 2019-05-21    | kgrinsteadct@google.com.br  | Colombia
 Sarge      | Filipputti  | Male   | 2019-07-14    | sfilipputtiea@google.co.jp  | Greece
 Daryl      | Bennallck   | Male   | 2019-09-22    | dbennallckgz@google.com.hk  | Portugal
 Terri      | Cheshire    | Female | 2019-02-14    | tcheshireiy@google.pl       | Kiribati
 Gardy      | Legrice     | Male   | 2019-04-15    | glegricej9@google.it        | China
 Carilyn    | Darlison    | Female | 2019-02-05    | cdarlisonlv@google.nl       | China
 Hildagard  | Malpass     | Female | 2019-10-18    | hmalpassoc@google.nl        | Portugal
 Trent      | Stoke       | Male   | 2019-06-12    | tstokeoh@google.co.jp       | United States
 Ewell      | Berthomieu  | Male   | 2019-11-12    | eberthomieup4@google.it     | China
(21 rows)

25)

 SELECT * FROM person WHERE email LIKE '______@%';
 first_name | last_name | gender | date_of_birth |          email           | country_of_birth
------------+-----------+--------+---------------+--------------------------+------------------
 Lauren     | Eul       | Female | 2019-01-23    | leul4h@blogtalkradio.com | United States
 Frayda     | Gai       | Female | 2019-06-01    | fgai57@chronoengine.com  | Philippines
 Donovan    | Hof       | Male   | 2019-06-30    | dhof8z@marketwatch.com   | Mexico
 Cart       | Day       | Male   | 2019-10-05    | cdaygx@photobucket.com   | Guatemala
(4 rows)

26)

SELECT * FROM person WHERE country_of_birth ILIKE 'z%';
 first_name | last_name | gender | date_of_birth |             email              | country_of_birth
------------+-----------+--------+---------------+--------------------------------+------------------
 Chaddie    | Galiford  | Male   | 2019-04-18    |                                | Zimbabwe
 Selina     | Forrestor | Female | 2018-12-31    |                                | Zimbabwe
 Carolann   | Whitesel  | Female | 2019-04-22    | cwhitesel8e@cdbaby.com         | Zambia
 Drugi      | Webland   | Male   | 2019-09-20    | dweblandom@constantcontact.com | Zambia
(4 rows)

27)

 SELECT country_of_birth, COUNT(*) FROM person GROUP BY country_of_birth;
          country_of_birth          | count
------------------------------------+-------
 Bangladesh                         |     2
 Indonesia                          |   100
 Venezuela                          |     7
 Kiribati                           |     2
 Cameroon                           |     2
 Luxembourg                         |     2
 Czech Republic                     |    10
 Sweden                             |    23
 Uganda                             |     2
 Montenegro                         |     1

28)

SELECT country_of_birth, COUNT(*) FROM person GROUP BY country_of_birth ORDER BY country_of_birth;


          country_of_birth          | count
------------------------------------+-------
 Afghanistan                        |     5
 Albania                            |     3
 Angola                             |     2
 Antigua and Barbuda                |     1
 Argentina                          |    10
 Armenia                            |     4
 Australia                          |     1
 Azerbaijan                         |     2
 Bahrain                            |     2
 Bangladesh                         |     2
 Belarus                            |     4
 Benin                              |     2
 Bolivia                            |     2
 Bonaire, Saint Eustatius and Saba  |     1
 Bosnia and Herzegovina             |     3
 Botswana                           |     3
 Brazil                             |    46
 Bulgaria                           |     5
 Burkina Faso                       |     1
 Burundi                            |     1
 Cameroon                           |     2
 Canada                             |    13
 Cape Verde                         |     1
 Central African Republic           |     1
 Chad                               |     1
 Chile                              |     1
 China                              |   208
 Colombia                           |    14
 Croatia                            |     7
 Cuba                               |     3
 Czech Republic                     |    10
 Democratic Republic of the Congo   |     1
 Denmark                            |     3
 Djibouti                           |     2
 Dominican Republic                 |     1
 Egypt                              |     2
 El Salvador                        |     2
 Estonia                            |     1
 Ethiopia                           |     3
 Faroe Islands                      |     1

27)

 SELECT country_of_birth, COUNT(*) FROM person GROUP BY country_of_birth HAVING COUNT(*) > 5 ORDER BY country_of_birth;

 country_of_birth    | count
-----------------------+-------
 Argentina             |    10
 Brazil                |    46
 Canada                |    13
 China                 |   208
 Colombia              |    14
 Croatia               |     7
 Czech Republic        |    10
 France                |    24
 Greece                |    16
 Honduras              |     6
 Indonesia             |   100
 Japan                 |    23
 Kazakhstan            |     6
 Malaysia              |     6
 Mexico                |     9
 Nigeria               |    10
 Norway                |     6
 Palestinian Territory |     8
 Peru                  |    10
 Philippines           |    45
 Poland                |    34
 Portugal              |    46
 Russia                |    60
 Sweden                |    23
 Thailand              |    12
 Ukraine               |    13
 United States         |    19
 Venezuela             |     7
(28 rows)

28)

 SELECT MAX(price) FROM car;
    max
-----------
 99966.550
(1 row)

29)

 SELECT MIN(price) FROM car;
    min
-----------
 10236.870
(1 row)

30)

 SELECT AVG(price) FROM car;
        avg
--------------------
 55647.906240000000
(1 row)

31)

 SELECT ROUND(AVG(price)) FROM car;
 round
-------
 55648
(1 row)

32)

 SELECT make,model,MIN(price) FROM car GROUP BY make,model;
     make      |          model          |    min
---------------+-------------------------+-----------
 Toyota        | Land Cruiser            | 15318.890
 Mercedes-Benz | S-Class                 | 23280.900
 Infiniti      | FX                      | 93990.290
 BMW           | M6                      | 18369.460
 Kia           | Amanti                  | 87286.300
 Oldsmobile    | Silhouette              | 35043.260
 Ferrari       | 612 Scaglietti          | 68015.960
 Jeep          | Grand Cherokee          | 65487.040
 Hyundai       | Accent                  | 16766.940
 Infiniti      | G                       | 38982.580
 Buick         | Electra                 | 44261.100
 Nissan        | Xterra                  | 11577.850
 Volvo         | XC60                    | 88486.680
 Chevrolet     | Cavalier                | 44985.580
 Acura         | ZDX                     | 57471.490
 Hyundai       | Sonata                  | 87475.240
 Audi          | A8                      | 23912.550
 Lamborghini   | Countach                | 24601.660
 Bentley       | Continental             | 24804.520
 Ford          | Contour                 | 68375.850
 Pontiac       | 1000                    | 37459.520
 Mazda         | Protege                 | 11991.090
 GMC           | Sierra 3500HD           | 56552.020
 Lexus         | IS-F                    | 59119.050
 Maserati      | Coupe                   | 98622.290
 Suzuki        | Aerio                   | 79130.210
 Chevrolet     | Silverado 3500          | 19716.730
 Volkswagen    | GLI                     | 32162.030
 Ford          | Ranger                  | 50973.120
 Chevrolet     | Camaro                  | 23343.160
 Mercedes-Benz | 500SEL                  | 44551.830
 Nissan        | Pathfinder Armada       | 47132.740
 Chevrolet     | Sportvan G30            | 67398.390
 Volkswagen    | Touareg                 | 32480.530
 Oldsmobile    | Bravada                 | 33512.520
 Dodge         | Stratus                 | 60071.120
 Ford          | Aerostar                | 55293.620
 Buick         | Park Avenue             | 59719.350
 Subaru        | Impreza                 | 57645.290

33)

 SELECT SUM(price) FROM car;
     sum
--------------
 55647906.240
(1 row)

34)

SELECT 10 + 2;
 ?column?
----------
       12
(1 row)

35)

 SELECT 10 - 2;
 ?column?
----------
        8
(1 row)

36)

 SELECT 10 * 2;
 ?column?
----------
       20
(1 row)

37)

SELECT 10 / 2;
 ?column?
----------
        5
(1 row)

38)

 SELECT 10 ^ 2;
 ?column?
----------
      100
(1 row)

39)

SELECT id,make,model,price,ROUND(price*.10,2),ROUND(price - (price*.10) , 2) FROM car;
  id  |     make      |          model          |   price   |  round  |  round
------+---------------+-------------------------+-----------+---------+----------
    1 | BMW           | 645                     | 51143.350 | 5114.34 | 46029.02
    2 | Lexus         | HS                      | 93607.710 | 9360.77 | 84246.94
    3 | Audi          | S4                      | 45281.060 | 4528.11 | 40752.95
    4 | Subaru        | Alcyone SVX             | 32751.760 | 3275.18 | 29476.58
    5 | Buick         | Century                 | 79164.450 | 7916.45 | 71248.01
    6 | Chevrolet     | Suburban                | 59295.220 | 5929.52 | 53365.70
    7 | Chrysler      | Sebring                 | 48630.080 | 4863.01 | 43767.07
    8 | Buick         | Regal                   | 92323.660 | 9232.37 | 83091.29
    9 | GMC           | Envoy                   | 46252.430 | 4625.24 | 41627.19
   10 | Suzuki        | Swift                   | 49864.820 | 4986.48 | 44878.34
   11 | Ford          | E-Series                | 85760.860 | 8576.09 | 77184.77
   12 | Toyota        | Camry Solara            | 63650.960 | 6365.10 | 57285.86
   13 | Pontiac       | Firebird                | 35258.810 | 3525.88 | 31732.93
   14 | Volvo         | S80                     | 82779.170 | 8277.92 | 74501.25
   15 | Ford          | Five Hundred            | 68403.890 | 6840.39 | 61563.50
   16 | Dodge         | Colt                    | 92666.780 | 9266.68 | 83400.10
   17 | Mercedes-Benz | E-Class                 | 38951.420 | 3895.14 | 35056.28
   18 | Buick         | Riviera                 | 72164.990 | 7216.50 | 64948.49
   19 | Lamborghini   | Gallardo                | 58756.870 | 5875.69 | 52881.18
   20 | Mitsubishi    | GTO                     | 65171.360 | 6517.14 | 58654.22
   21 | Ford          | Focus ST                | 22822.090 | 2282.21 | 20539.88
   22 | Chevrolet     | Traverse                | 43205.380 | 4320.54 | 38884.84
   23 | Jeep          | Grand Cherokee          | 65487.040 | 6548.70 | 58938.34
   24 | Pontiac       | Sunbird                 | 23703.040 | 2370.30 | 21332.74
   25 | Hyundai       | Accent                  | 42491.430 | 4249.14 | 38242.29
   26 | Jeep          | Grand Cherokee          | 70274.850 | 7027.49 | 63247.37
   27 | Jaguar        | XK Series               | 33624.250 | 3362.43 | 30261.83
   28 | Volkswagen    | Passat                  | 82214.760 | 8221.48 | 73993.28
   29 | Ford          | Tempo                   | 78085.450 | 7808.55 | 70276.91
   30 | Plymouth      | Voyager                 | 46807.170 | 4680.72 | 42126.45
   31 | Volkswagen    | New Beetle              | 85752.690 | 8575.27 | 77177.42
   32 | BMW           | X3                      | 87190.810 | 8719.08 | 78471.73
   33 | Mazda         | 626                     | 23661.430 | 2366.14 | 21295.29
   34 | Saturn        | VUE                     | 72553.410 | 7255.34 | 65298.07
(34 rows)

40)

SELECT COALESCE(null,1) AS number;
 number
--------
      1
(1 row)

41)

SELECT COALESCE(email , 'Email not provided') FROM person;
              coalesce
-------------------------------------
 Email not provided
 nkenson1@patch.com
 bdickerson2@sciencedaily.com
 Email not provided
 Email not provided
 glakin5@is.gd
 Email not provided
 jidwalevans7@edublogs.org
 Email not provided
 fcestard9@booking.com
 mmcgauhya@csmonitor.com
 Email not provided
 cskelhornec@ustream.tv
 Email not provided
 pheighoe@networksolutions.com
 kjephsonf@skype.com
 rsoppethg@phpbb.com
 scavillh@wix.com
 rbirckmanni@wikipedia.org
 rbainej@miibeian.gov.cn
 Email not provided
 lcastellol@google.it
 wcarleym@europa.eu
 emorgann@mysql.com
 pmerrydewo@bloomberg.com
 adirkinp@yellowbook.com
 Email not provided
 rdouchr@who.int
 Email not provided
 tbaltzart@webmd.com
 sbrandou@theglobeandmail.com
 bbinglev@omniture.com
 dteodoriw@oracle.com
 posannex@hc360.com
 adaelmany@homestead.com
 rtunneyz@columbia.edu
 Email not provided

44)

 SELECT NULLIF(10 , 10) ;
 nullif
--------

(1 row)

45)

 SELECT NULLIF(10 , 1) ;
 nullif
--------
     10
(1 row)

46)

SELECT 10 / NULLIF(2,9);
 ?column?
----------
        5
(1 row)

47)

SELECT COALESCE(10 / NULLIF(0,0) , 0);
 coalesce
----------
        0
(1 row)

48)

SELECT NOW() - INTERVAL '1 YEAR';
             ?column?
----------------------------------
 2018-11-16 20:16:56.145351+05:30
(1 row)

49)

 SELECT NOW();
               now
----------------------------------
 2019-11-16 20:14:15.081167+05:30
(1 row)

50)

 SELECT (NOW() + INTERVAL '10 MONTHS')::DATE;
    date
------------
 2020-09-16
(1 row)

51)

SELECT EXTRACT(YEAR FROM NOW());
 date_part
-----------
      2019
(1 row)

52)
SELECT first_name, last_name , gender , date_of_birth , country_of_birth , AGE(NOW() , date_of_birth) AS age FROM person;


  first_name  |    last_name    | gender | date_of_birth |          country_of_birth          |               age
--------------+-----------------+--------+---------------+------------------------------------+---------------------------------
 Carlene      | Corson          | Female | 2019-02-09    | Venezuela                          | 9 mons 7 days 20:25:19.304766
 Natasha      | Kenson          | Female | 2019-04-06    | Malaysia                           | 7 mons 10 days 20:25:19.304766
 Bren         | Dickerson       | Female | 2019-01-12    | Poland                             | 10 mons 4 days 20:25:19.304766
 Harv         | Pindred         | Male   | 2019-02-14    | China                              | 9 mons 2 days 20:25:19.304766
 Karla        | Ovanesian       | Female | 2019-03-20    | China                              | 7 mons 27 days 20:25:19.304766
 Germaine     | Lakin           | Female | 2019-08-29    | Honduras                           | 2 mons 18 days 20:25:19.304766
 Muhammad     | Burwood         | Male   | 2018-12-23    | France                             | 10 mons 24 days 20:25:19.304766
 Jobi         | Idwal Evans     | Female | 2019-11-14    | Colombia                           | 2 days 20:25:19.304766
 Zonnya       | McGenis         | Female | 2019-07-22    | Indonesia                          | 3 mons 25 days 20:25:19.304766
 Florida      | Cestard         | Female | 2019-08-26    | China                              | 2 mons 21 days 20:25:19.304766
 Mellisent    | McGauhy         | Female | 2018-12-04    | Poland                             | 11 mons 12 days 20:25:19.304766
 Erhart       | Tabb            | Male   | 2018-12-12    | China                              | 11 mons 4 days 20:25:19.304766
 Cello        | Skelhorne       | Male   | 2019-06-21    | China                              | 4 mons 25 days 20:25:19.304766
 Chaddie      | Galiford        | Male   | 2019-04-18    | Zimbabwe                           | 6 mons 28 days 20:25:19.304766
 Perle        | Heigho          | Female | 2019-03-21    | Albania                            | 7 mons 26 days 20:25:19.304766
 Kienan       | Jephson         | Male   | 2019-03-26    | Bahrain                            | 7 mons 21 days 20:25:19.304766
 Ryley        | Soppeth         | Male   | 2019-07-11    | China                              | 4 mons 5 days 20:25:19.304766
 Sidonia      | Cavill          | Female | 2019-02-13    | Estonia                            | 9 mons 3 days 20:25:19.304766
 Robinet      | Birckmann       | Male   | 2019-05-26    | China                              | 5 mons 21 days 20:25:19.304766
 Rollins      | Baine           | Male   | 2019-01-23    | China                              | 9 mons 24 days 20:25:19.304766
 Briney       | Huish           | Female | 2019-10-13    | Brazil                             | 1 mon 3 days 20:25:19.304766
 Langston     | Castello        | Male   | 2019-03-01    | China                              | 8 mons 15 days 20:25:19.304766
 Web          | Carley          | Male   | 2019-10-22    | Poland                             | 25 days 20:25:19.304766
 Enos         | Morgan          | Male   | 2019-06-18    | Taiwan                             | 4 mons 28 days 20:25:19.304766
 Pegeen       | Merrydew        | Female | 2019-02-10    | Philippines                        | 9 mons 6 days 20:25:19.304766
 Alena        | Dirkin          | Female | 2019-04-24    | Portugal                           | 6 mons 22 days 20:25:19.304766
 Starla       | Mariolle        | Female | 2019-05-15    | Afghanistan                        | 6 mons 1 day 20:25:19.304766
 Reynolds     | Douch           | Male   | 2019-11-10    | Moldova                            | 6 days 20:25:19.304766
 Pebrook      | Plom            | Male   | 2019-06-03    | Russia                             | 5 mons 13 days 20:25:19.304766
 Ty           | Baltzar         | Male   | 2019-03-24    | Philippines                        | 7 mons 23 days 20:25:19.304766
 Sammy        | Brando          | Male   | 2019-05-23    | Philippines                        | 5 mons 24 days 20:25:19.304766
 Bel          | Bingle          | Female | 2018-12-02    | Russia                             | 11 mons 14 days 20:25:19.304766
 Dani         | Teodori         | Male   | 2019-08-07    | Canada                             | 3 mons 9 days 20:25:19.304766
 Patrica      | Osanne          | Female | 2018-12-23    | Sri Lanka                          | 10 mons 24 days 20:25:19.304766
 Aymer        | Daelman         | Male   | 2019-02-08    | China                              | 9 mons 8 days 20:25:19.304766
 Roshelle     | Tunney          | Female | 2019-10-21    | Slovenia                           | 26 days 20:25:19.304766

53)

SELECT first_name, last_name , gender , date_of_birth , country_of_birth , AGE(NOW()::DATE , date_of_birth) AS age FROM person;
  first_name  |    last_name    | gender | date_of_birth |          country_of_birth          |       age
--------------+-----------------+--------+---------------+------------------------------------+-----------------
 Carlene      | Corson          | Female | 2019-02-09    | Venezuela                          | 9 mons 7 days
 Natasha      | Kenson          | Female | 2019-04-06    | Malaysia                           | 7 mons 10 days
 Bren         | Dickerson       | Female | 2019-01-12    | Poland                             | 10 mons 4 days
 Harv         | Pindred         | Male   | 2019-02-14    | China                              | 9 mons 2 days
 Karla        | Ovanesian       | Female | 2019-03-20    | China                              | 7 mons 27 days
 Germaine     | Lakin           | Female | 2019-08-29    | Honduras                           | 2 mons 18 days
 Muhammad     | Burwood         | Male   | 2018-12-23    | France                             | 10 mons 24 days
 Jobi         | Idwal Evans     | Female | 2019-11-14    | Colombia                           | 2 days
 Zonnya       | McGenis         | Female | 2019-07-22    | Indonesia                          | 3 mons 25 days
 Florida      | Cestard         | Female | 2019-08-26    | China                              | 2 mons 21 days
 Mellisent    | McGauhy         | Female | 2018-12-04    | Poland                             | 11 mons 12 days
 Erhart       | Tabb            | Male   | 2018-12-12    | China                              | 11 mons 4 days
 Cello        | Skelhorne       | Male   | 2019-06-21    | China                              | 4 mons 25 days
 Chaddie      | Galiford        | Male   | 2019-04-18    | Zimbabwe                           | 6 mons 28 days
 Perle        | Heigho          | Female | 2019-03-21    | Albania                            | 7 mons 26 days
 Kienan       | Jephson         | Male   | 2019-03-26    | Bahrain                            | 7 mons 21 days
 Ryley        | Soppeth         | Male   | 2019-07-11    | China                              | 4 mons 5 days
 Sidonia      | Cavill          | Female | 2019-02-13    | Estonia                            | 9 mons 3 days
 Robinet      | Birckmann       | Male   | 2019-05-26    | China                              | 5 mons 21 days
 Rollins      | Baine           | Male   | 2019-01-23    | China                              | 9 mons 24 days
 Briney       | Huish           | Female | 2019-10-13    | Brazil                             | 1 mon 3 days
 Langston     | Castello        | Male   | 2019-03-01    | China                              | 8 mons 15 days
 Web          | Carley          | Male   | 2019-10-22    | Poland                             | 25 days
 Enos         | Morgan          | Male   | 2019-06-18    | Taiwan                             | 4 mons 28 days
 Pegeen       | Merrydew        | Female | 2019-02-10    | Philippines                        | 9 mons 6 days
 Alena        | Dirkin          | Female | 2019-04-24    | Portugal                           | 6 mons 22 days
 Starla       | Mariolle        | Female | 2019-05-15    | Afghanistan                        | 6 mons 1 day
 Reynolds     | Douch           | Male   | 2019-11-10    | Moldova                            | 6 days
 Pebrook      | Plom            | Male   | 2019-06-03    | Russia                             | 5 mons 13 days
 Ty           | Baltzar         | Male   | 2019-03-24    | Philippines                        | 7 mons 23 days
 Sammy        | Brando          | Male   | 2019-05-23    | Philippines                        | 5 mons 24 days
 Bel          | Bingle          | Female | 2018-12-02    | Russia                             | 11 mons 14 days
 Dani         | Teodori         | Male   | 2019-08-07    | Canada                             | 3 mons 9 days
 Patrica      | Osanne          | Female | 2018-12-23    | Sri Lanka                          | 10 mons 24 days
 Aymer        | Daelman         | Male   | 2019-02-08    | China                              | 9 mons 8 days
 Roshelle     | Tunney          | Female | 2019-10-21    | Slovenia                           | 26 days

53)

insert into person (first_name, last_name, gender, date_of_birth, email, country_of_birth) values ('Fred', 'Corson', 'Hello', '2019-02-09', 'nken@patch.com', 'Venezuela');
INSERT 0 1
postgres=# SELECT DISTINCT gender FROM person;
 gender
--------
 Male
 Hello
 Female
(3 rows)


postgres=# ALTER TABLE person ADD CONSTRAINT gender_constraint CHECK(gender = 'Male' OR gender = 'Female');
ERROR:  check constraint "gender_constraint" is violated by some row
postgres=# DELETE FROM person WHERE gender = 'Hello';
DELETE 1
postgres=# ALTER TABLE person ADD CONSTRAINT gender_constraint CHECK(gender = 'Male' OR gender = 'Female');
ALTER TABLE
postgres=# \d person
                           Table "public.person"
      Column      |         Type          | Collation | Nullable | Default
------------------+-----------------------+-----------+----------+---------
 first_name       | character varying(50) |           | not null |
 last_name        | character varying(50) |           | not null |
 gender           | character varying(50) |           | not null |
 date_of_birth    | date                  |           | not null |
 email            | character varying(50) |           |          |
 country_of_birth | character varying(50) |           | not null |
Indexes:
    "unique_email" UNIQUE CONSTRAINT, btree (email)
Check constraints:
    "gender_constraint" CHECK (gender::text = 'Male'::text OR gender::text = 'Female'::text)


postgres=# insert into person (first_name, last_name, gender, date_of_birth, email, country_of_birth) values ('Fred', 'Corson', 'Hello', '2019-02-09', 'nken@patch.com', 'Venezuela');
ERROR:  new row for relation "person" violates check constraint "gender_constraint"
DETAIL:  Failing row contains (Fred, Corson, Hello, 2019-02-09, nken@patch.com, Venezuela).

54)

DELETE FROM person WHERE gender = 'Female' AND country_of_birth = 'Nigeria';
DELETE 4

55)

 UPDATE person SET email = 'harv@gmail.com' WHERE first_name = 'Harv';
UPDATE 1

56)

SELECT * FROM person WHERE first_name = 'Harv';
 first_name | last_name | gender | date_of_birth |     email      | country_of_birth
------------+-----------+--------+---------------+----------------+------------------
 Harv       | Pindred   | Male   | 2019-02-14    | harv@gmail.com | China
(1 row)

57)

 INSERT INTO person (first_name , last_name , gender , date_of_birth , email , country_of_birth , id)
postgres-# VALUES('Natasha' , 'Kenson', 'Female' , DATE '2019-04-06' , 'nkenson1@patch.com' , 'Malaysia' , 2)
postgres-# ON CONFLICT (id) DO NOTHING;-

58 )

INSERT INTO person (first_name , last_name , gender , date_of_birth , email , country_of_birth , id)
postgres-# VALUES('Natasha' , 'Kenson', 'Female' , DATE '2019-04-06' , 'nkenson1@patch.com' , 'Malaysia' , 2)
postgres-# ON CONFLICT (id) DO UPDATE SET email = EXCLUDED.email;-
INSERT 0 1

59)

\i 'C:/Users/Admin/Downloads/person_car.sql';
CREATE TABLE
CREATE TABLE
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
INSERT 0 1
postgres=# SELECT * FROM car;
 id |   make   |  model   |    price
----+----------+----------+-------------
  1 | Audi     | RS-7     | 20000000.00
  2 | BMW      | 7-series |  3000000.00
  3 | Mercedes | C-200    |  1000000.00
(3 rows)


postgres=# SELECT * FROM person;
 id | first_name | last_name |     email     | gender | date_of_birth | country_of_birth | car_id
----+------------+-----------+---------------+--------+---------------+------------------+--------
  1 | Aditya     | Kumar     | abc@gmail.com | Male   | 1990-01-01    | India            |
  2 | Donald     | Trumph    |               | Male   | 1976-12-09    | Unites States    |
  3 | Disha      | Patni     | pqr@gmail.com | Female | 1989-07-06    | Netherlands      |
(3 rows)


postgres=# UPDATE person SET car_id = 2 WHERE id = 1;
UPDATE 1
postgres=# SELECT * FROM person;
 id | first_name | last_name |     email     | gender | date_of_birth | country_of_birth | car_id
----+------------+-----------+---------------+--------+---------------+------------------+--------
  2 | Donald     | Trumph    |               | Male   | 1976-12-09    | Unites States    |
  3 | Disha      | Patni     | pqr@gmail.com | Female | 1989-07-06    | Netherlands      |
  1 | Aditya     | Kumar     | abc@gmail.com | Male   | 1990-01-01    | India            |      2
(3 rows)


postgres=# UPDATE person SET car_id = 3 WHERE id = 2;
UPDATE 1
postgres=# UPDATE person SET car_id = 1 WHERE id = 3;
UPDATE 1
postgres=# SELECT * FROM person;
 id | first_name | last_name |     email     | gender | date_of_birth | country_of_birth | car_id
----+------------+-----------+---------------+--------+---------------+------------------+--------
  1 | Aditya     | Kumar     | abc@gmail.com | Male   | 1990-01-01    | India            |      2
  2 | Donald     | Trumph    |               | Male   | 1976-12-09    | Unites States    |      3
  3 | Disha      | Patni     | pqr@gmail.com | Female | 1989-07-06    | Netherlands      |      1
(3 rows)

60) JOINS :

SELECT * FROM person JOIN car ON person.car_id = car_id;
 id | first_name | last_name |     email     | gender | date_of_birth | country_of_birth | car_id | id |   make   |  model   |    price
----+------------+-----------+---------------+--------+---------------+------------------+--------+----+----------+----------+-------------
  1 | Aditya     | Kumar     | abc@gmail.com | Male   | 1990-01-01    | India            |      2 |  1 | Audi     | RS-7     | 20000000.00
  2 | Donald     | Trumph    |               | Male   | 1976-12-09    | Unites States    |      3 |  1 | Audi     | RS-7     | 20000000.00
  3 | Disha      | Patni     | pqr@gmail.com | Female | 1989-07-06    | Netherlands      |      1 |  1 | Audi     | RS-7     | 20000000.00
  1 | Aditya     | Kumar     | abc@gmail.com | Male   | 1990-01-01    | India            |      2 |  2 | BMW      | 7-series |  3000000.00
  2 | Donald     | Trumph    |               | Male   | 1976-12-09    | Unites States    |      3 |  2 | BMW      | 7-series |  3000000.00
  3 | Disha      | Patni     | pqr@gmail.com | Female | 1989-07-06    | Netherlands      |      1 |  2 | BMW      | 7-series |  3000000.00
  1 | Aditya     | Kumar     | abc@gmail.com | Male   | 1990-01-01    | India            |      2 |  3 | Mercedes | C-200    |  1000000.00
  2 | Donald     | Trumph    |               | Male   | 1976-12-09    | Unites States    |      3 |  3 | Mercedes | C-200    |  1000000.00
  3 | Disha      | Patni     | pqr@gmail.com | Female | 1989-07-06    | Netherlands      |      1 |  3 | Mercedes | C-200    |  1000000.00 

61)

SELECT * FROM person
postgres-# LEFT JOIN car ON car.id = person.car_id;
-[ RECORD 1 ]----+--------------
id               | 3
first_name       | Disha
last_name        | Patni
email            | pqr@gmail.com
gender           | Female
date_of_birth    | 1989-07-06
country_of_birth | Netherlands
car_id           | 1
id               | 1
make             | Audi
model            | RS-7
price            | 20000000.00
-[ RECORD 2 ]----+--------------
id               | 1
first_name       | Aditya
last_name        | Kumar
email            | abc@gmail.com
gender           | Male
date_of_birth    | 1990-01-01
country_of_birth | India
car_id           | 2
id               | 2
make             | BMW
model            | 7-series
price            | 3000000.00
-[ RECORD 3 ]----+--------------
id               | 2
first_name       | Donald
last_name        | Trumph
email            |
gender           | Male
date_of_birth    | 1976-12-09
country_of_birth | Unites States
car_id           | 3
id               | 3
make             | Mercedes
model            | C-200
price            | 1000000.00

62)

DELETE FROM car WHERE id=1;
ERROR:  update or delete on table "car" violates foreign key constraint "person_car_id_fkey" on table "person"
DETAIL:  Key (id)=(1) is still referenced from table "person".
postgres=# SELECT * FROM person WHERE id=3;
 id | first_name | last_name |     email     | gender | date_of_birth | country_of_birth | car_id
----+------------+-----------+---------------+--------+---------------+------------------+--------
  3 | Disha      | Patni     | pqr@gmail.com | Female | 1989-07-06    | Netherlands      |      1
(1 row)


postgres=# DELETE FROM person WHERE id=3;
DELETE 1
postgres=# DELETE FROM car WHERE id=1;
DELETE 1

63 )

 \copy (SELECt * FROM person LEFT JOIN car ON car.id = person.car_id) TO 'C:/Users/Admin/Desktop/results.csv' DELIMITER ',' CSV HEADER;
COPY 1

64)

SELECT * FROM person_id_seq;
 last_value | log_cnt | is_called
------------+---------+-----------
          3 |      30 | t
(1 row)

65)

SELECT nextval('person_id_seq'::regclass);
 nextval
---------
       4
(1 row)

66)

SELECT * FROM person;
 id | first_name | last_name |     email     | gender | date_of_birth | country_of_birth | car_id
----+------------+-----------+---------------+--------+---------------+------------------+--------
  2 | Donald     | Trumph    |               | Male   | 1976-12-09    | Unites States    |      3
  5 | John       | Kumar     | uvw@gmail.com | Male   | 1990-01-01    | England          |
(2 rows)

67)

ALTER SEQUENCE person_id_seq RESTART WITH 3;
ALTER SEQUENCE

68 )

 SELECT * FROM person_id_seq;
 last_value | log_cnt | is_called
------------+---------+-----------
          3 |       0 | f
(1 row)

69)

SELECT * FROM pg_available_extensions;

70) 

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE EXTENSION

71)

 SELECT * FROM pg_available_extensions;

72)

SELECT uuid_generate_v4();
           uuid_generate_v4
--------------------------------------
 a088e9fd-041e-411e-9547-fb0a578efdb7
(1 row)


postgres=# SELECT uuid_generate_v4();
           uuid_generate_v4
--------------------------------------
 71b5d760-f867-42c6-abcf-25a410796392
(1 row)


postgres=# SELECT uuid_generate_v4();
           uuid_generate_v4
--------------------------------------
 5930c0ed-abaf-422f-bc20-c0f1650f63c0
(1 row)

73)

SELECT * FROM person;
              person_uid              | first_name | last_name |     email     | gender | date_of_birth | country_of_birth | car_uid
--------------------------------------+------------+-----------+---------------+--------+---------------+------------------+---------
 94d3473c-0234-4f28-bf59-67427af73155 | John       | Kumar     | uvw@gmail.com | Male   | 1990-01-01    | England          |
 c4d8494f-7703-4c4b-a271-70ae8b9f91c8 | Donald     | Trumph    |               | Male   | 1976-12-09    | Unites States    |
 1ba169a8-87d3-47b5-9dcf-6319161c6e48 | Disha      | Patni     | pqr@gmail.com | Female | 1989-07-06    | Netherlands      |
(3 rows)

74)

 SELECT * FROM car;
-[ RECORD 1 ]---------------------------------
car_uid | e17208cc-98f1-4118-9774-f99f0ea2c590
make    | Audi
model   | RS-7
price   | 20000000.00
-[ RECORD 2 ]---------------------------------
car_uid | eca588f9-a4fb-47ac-9cf5-60be6c2f6a0a
make    | BMW
model   | 7-series
price   | 3000000.00
-[ RECORD 3 ]---------------------------------
car_uid | 86d8e63d-e6f9-436a-b8dd-27affae2f406
make    | Mercedes
model   | C-200
price   | 1000000.00

75)

SELECT * FROM person
postgres-# JOIN car USING (car_uid);
               car_uid                |              person_uid              | first_name | last_name |     email     | gender | date_of_birth | country_of_birth |   make   |  model   |    price
--------------------------------------+--------------------------------------+------------+-----------+---------------+--------+---------------+------------------+----------+----------+-------------
 e17208cc-98f1-4118-9774-f99f0ea2c590 | c4d8494f-7703-4c4b-a271-70ae8b9f91c8 | Donald     | Trumph    |               | Male   | 1976-12-09    | Unites States    | Audi
     | RS-7     | 20000000.00
 eca588f9-a4fb-47ac-9cf5-60be6c2f6a0a | 1ba169a8-87d3-47b5-9dcf-6319161c6e48 | Disha      | Patni     | pqr@gmail.com | Female | 1989-07-06    | Netherlands      | BMW
     | 7-series |  3000000.00
 86d8e63d-e6f9-436a-b8dd-27affae2f406 | 94d3473c-0234-4f28-bf59-67427af73155 | John       | Kumar     | uvw@gmail.com | Male   | 1990-01-01    | England          | Mercedes | C-200    |  1000000.00
(3 rows)
