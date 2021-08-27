## patikaSQL Repostory'si.
#### Bu repostory'de patika üzerinden almış olduğum eğitimlerde tamamladığım ödevler ve almış olduğum notlar bulunmaktadır.
[Ödev 1](https://github.com/frattshn/patikaOdevler/blob/main/odev1.sql) <br/><br/>
[Ödev 2](https://github.com/frattshn/patikaOdevler/blob/main/odev2.sql) <br/><br/>
[Ödev 3](https://github.com/frattshn/patikaOdevler/blob/main/odev3.sql) <br/><br/>
[Ödev 4](https://github.com/frattshn/patikaOdevler/blob/main/odev4.sql) <br/><br/>
[Ödev 5](https://github.com/frattshn/patikaOdevler/blob/main/odev5.sql) <br/><br/>
[Ödev 6](https://github.com/frattshn/patikaOdevler/blob/main/odev6.sql) <br/><br/>
[Ödev 7](https://github.com/frattshn/patikaOdevler/blob/main/odev7.sql) <br/><br/>

### Bazı önemli SQL komutları
İki adet sütunu tek sütunda birleştirmek için **CONCAT** kullanılır. <br>
Örnek sorgu: `SELECT CONCAT(first_name, last_name) AS "İsim ve Soyisim" FROM actor;` <br>
#### Tablo Oluşturma
`CREATE TABLE <table_name> (` <br>
`   <column_name> <data_type> <constraint>,` <br>
`   <column_name> <data_type> <constraint>,` <br>
`   <column_name> <data_type> <constraint>,` <br>
`);` <br> <br>
**ÖRNEK** <br> <br>
`CREATE TABLE author (` <br>
`	id SERIAL PRIMARY KEY,` <br>
`	first_name varchar(50) NOT NULL,` <br>
`last_name varchar(50) NOT NULL, `<br>
`	email varchar(100),` <br>
`	birthday DATE` <br>
`); ` <br> <br>
[![image](https://r.resimlink.com/ISDe.png)](https://resimlink.com/ISDe)

#### Tabloya Veri Ekleme
`INSERT INTO author (first_name, last_name, email, birthday)` <br>
`VALUES` <br>
`	('Memduh Fırat', 'Şahin', 'sahinmfirat@gmail.com', '2000-01-15'),` <br>
` ('Fatih', 'Cöne', 'fatih@cone.com', '2000-11-15'),` <br>
`	('Berat', 'Balta', 'berat@balta.com', '2000-08-15'),` <br>
` ('Mert', 'Bulutoğlu', 'mert@bulutoglu.com', '2000-01-15');` <br> <br>
 [![image](https://r.resimlink.com/mFPR0.png)](https://resimlink.com/mFPR0)
 
 #### Aynı Sütun İsimlerine Sahip Başka Bir Tablo Oluşturma
 `CREATE TABLE author2 (LIKE author);` <br>
 
 #### Oluşturulan Yeni Tabloya Bir Diğer Tablodan Veri Ekleme
 `INSERT INTO author2` <br>
 `SELECT * FROM author;`
 
 #### Verileri ile Beraber Bir Tablodan Başka Bir Tablo Oluşturma
 `CREATE TABLE author3` <br>
 `SELECT * FROM author;`
 
 #### Tablo Silme
 `DROP TABLE IF EXISTS author3;`
 
 #### Tabloda Veri Güncelleme
`UPDATE author` <br>
`SET first_name ='Zahir Ömer',` <br>
`	last_name ='Şahin',` <br>
`	email ='omer@sahin.com',` <br>
`	birthday ='2022-01-15'` <br>
`WHERE id =5;` <br>

#### Tabloda Veri Güncelleme ve Veriyi Geri Döndürme
`UPDATE author` <br>
`SET last_name ='UPDATED'` <br>
`WHERE first_name= 'Phebe'` <br>
`RETURNING *;` <br> <br>
[![image](https://r.resimlink.com/65w7Go.png)](https://resimlink.com/65w7Go)

#### Veri Silmek
`DELETE FROM author` <br>
`WHERE id= 6;` <br>

### PSQL
#### PSQL ile PostgreSQL'e bağlanmak
psql -U <kullanıcı adı>

#### Bulunan veritabanlarını listelemek
\l veya \list

#### Veritabanına bağlantıyı sağlamak
\connect dvdrental veya \c dvdrental

#### Bağlanılan veritabanında bulunan tabloları listelemek ve o tabloya ait detayları görüntülemek
\dt ile tablolar listelenir. \dt <tablo_adı> ile de tablo detayları görüntülenir.

#### PSQL terminal ekranından çıkmak için \q kullanılır.
 
