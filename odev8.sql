--test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
CREATE TABLE employee(
	id SERIAL,
	name VARCHAR(50),
	birthday DATE,
	email VARCHAR(50)
);

--Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
insert into employee (name, birthday, email) values ('Alexandros', '1969-04-09', 'akobierzycki0@oracle.com');
insert into employee (name, birthday, email) values ('Hillel', '1985-08-29', 'hdate1@slashdot.org');
insert into employee (name, birthday, email) values ('Chrystal', '1915-08-15', 'csoonhouse2@fastcompany.com');
insert into employee (name, birthday, email) values ('Giana', '1959-12-07', 'gsherewood3@diigo.com');
insert into employee (name, birthday, email) values ('Milty', '1928-03-25', 'mharriman4@shinystat.com');
insert into employee (name, birthday, email) values ('Andras', '1981-05-12', 'atidswell5@shutterfly.com');
insert into employee (name, birthday, email) values ('Darb', '1910-06-20', 'djahnel6@woothemes.com');
insert into employee (name, birthday, email) values ('Lenka', '1932-02-06', 'lbroddle7@example.com');
insert into employee (name, birthday, email) values ('Emyle', '1978-10-18', 'egreenley8@epa.gov');
insert into employee (name, birthday, email) values ('Charlton', '1927-06-28', 'cjobson9@livejournal.com');
insert into employee (name, birthday, email) values ('Bradly', '1980-09-29', 'bakessa@hatena.ne.jp');
insert into employee (name, birthday, email) values ('Eloisa', '1947-12-21', 'egyfordb@icio.us');
insert into employee (name, birthday, email) values ('Lynette', '1904-02-09', 'lbunneyc@google.com.br');
insert into employee (name, birthday, email) values ('Adamo', '1916-06-06', 'aveltend@github.com');
insert into employee (name, birthday, email) values ('Kelila', '1932-08-11', 'kgleede@webmd.com');
insert into employee (name, birthday, email) values ('Nannie', '1907-12-23', 'ncapelinf@nytimes.com');
insert into employee (name, birthday, email) values ('Rowan', '1954-09-27', 'ralmang@home.pl');
insert into employee (name, birthday, email) values ('Gretna', '1976-11-02', 'ghalversenh@amazon.com');
insert into employee (name, birthday, email) values ('Bess', '1937-05-28', 'bplastowi@house.gov');
insert into employee (name, birthday, email) values ('Trudie', '1991-04-04', 'tmoncreiffj@sina.com.cn');
insert into employee (name, birthday, email) values ('Damaris', '1997-05-17', 'dcaplenk@scientificamerican.com');
insert into employee (name, birthday, email) values ('Taddeusz', '1931-01-29', 'tjoscelynel@ning.com');
insert into employee (name, birthday, email) values ('Sheila', '1940-02-14', 'ssouthonm@ycombinator.com');
insert into employee (name, birthday, email) values ('Winona', '1990-11-09', 'wgudgen@blogs.com');
insert into employee (name, birthday, email) values ('Hubey', '1907-01-27', 'hhaneyo@phoca.cz');
insert into employee (name, birthday, email) values ('Sheila', '1981-05-08', 'shumphriesp@livejournal.com');
insert into employee (name, birthday, email) values ('Fawnia', '1990-04-03', 'fserrurierq@chicagotribune.com');
insert into employee (name, birthday, email) values ('Freddie', '1957-12-24', 'fknevettr@mysql.com');
insert into employee (name, birthday, email) values ('Dusty', '1952-11-06', 'dvenmores@blogger.com');
insert into employee (name, birthday, email) values ('Demetre', '1983-05-02', 'dlabint@ucsd.edu');
insert into employee (name, birthday, email) values ('Vikki', '1989-03-12', 'vtoynbeeu@networksolutions.com');
insert into employee (name, birthday, email) values ('Wyndham', '1999-06-07', 'wemersonv@123-reg.co.uk');
insert into employee (name, birthday, email) values ('Simone', '1936-02-16', 'sparmleyw@trellian.com');
insert into employee (name, birthday, email) values ('Ansel', '1943-06-13', 'achingex@sina.com.cn');
insert into employee (name, birthday, email) values ('Alvie', '1974-04-24', 'acampbelly@sciencedaily.com');
insert into employee (name, birthday, email) values ('Drucill', '1909-04-12', 'dimriez@slashdot.org');
insert into employee (name, birthday, email) values ('Alida', '1912-06-08', 'adoohan10@weather.com');
insert into employee (name, birthday, email) values ('Dorolice', '1999-06-27', 'dmccrea11@paginegialle.it');
insert into employee (name, birthday, email) values ('Oralle', '1941-04-18', 'ohopfner12@epa.gov');
insert into employee (name, birthday, email) values ('Reggis', '1939-11-08', 'rcaiger13@delicious.com');
insert into employee (name, birthday, email) values ('Jordon', '1942-09-15', 'jfernandez14@icq.com');
insert into employee (name, birthday, email) values ('Sybille', '1930-08-12', 'shalpin15@nhs.uk');
insert into employee (name, birthday, email) values ('Kamillah', '1968-11-26', 'kdellatorre16@unicef.org');
insert into employee (name, birthday, email) values ('Gwenora', '1994-04-28', 'gstollen17@wunderground.com');
insert into employee (name, birthday, email) values ('Guillermo', '1976-02-09', 'gwebbbowen18@fda.gov');
insert into employee (name, birthday, email) values ('Haze', '1931-02-06', 'hbragger19@netvibes.com');
insert into employee (name, birthday, email) values ('Marti', '1994-04-23', 'mgierhard1a@wired.com');
insert into employee (name, birthday, email) values ('Faina', '1984-11-11', 'fginie1b@ask.com');
insert into employee (name, birthday, email) values ('Nessy', '1932-07-11', 'nmatuskiewicz1c@noaa.gov');
insert into employee (name, birthday, email) values ('Padraig', '1982-09-06', 'pmarshfield1d@cnbc.com');

--Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
UPDATE employee
SET name ='Fırat', birthday ='2021-01-15', email ='sahinmfirat@gmail.com'
WHERE id =1;

UPDATE employee
SET name='Ahmet', birthday='1990-01-01', email='abc@gmail.com'
WHERE id=2;

UPDATE employee
SET name='Zahir' , birthday='1999-09-09' , email='abcd@gmail.com'
WHERE id=10;

UPDATE employee
SET name='Mikail', email='abcde@gmail.com', birthday='1998-05-05'
WHERE id=25;

UPDATE employee
SET name='Sadece İsim'
WHERE id=50;

--Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.
DELETE FROM employee
WHERE id=3;

DELETE FROM employee
WHERE name='Mikail';

DELETE FROM employee
WHERE email='abc@gmail.com';

DELETE FROM employee
WHERE birthday='1959-12-07';
