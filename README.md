## patikaSQL Repostory'si.
#### Bu repostory'de patika üzerinden almış olduğum eğitimlerde tamamladığım ödevler ve almış olduğum notlar bulunmaktadır.
[Ödev 1](https://github.com/frattshn/patikaOdevler/blob/main/odev1.sql) <br/><br/>
[Ödev 2](https://github.com/frattshn/patikaOdevler/blob/main/odev2.sql) <br/><br/>
[Ödev 3](https://github.com/frattshn/patikaOdevler/blob/main/odev3.sql) <br/><br/>
[Ödev 4](https://github.com/frattshn/patikaOdevler/blob/main/odev4.sql) <br/><br/>
[Ödev 5](https://github.com/frattshn/patikaOdevler/blob/main/odev5.sql) <br/><br/>
[Ödev 6](https://github.com/frattshn/patikaOdevler/blob/main/odev6.sql) <br/><br/>
[Ödev 7](https://github.com/frattshn/patikaOdevler/blob/main/odev7.sql) <br/><br/>
[Ödev 8](https://github.com/frattshn/patikaOdevler/blob/main/odev8.sql) <br/><br/>
[Ödev 9](https://github.com/frattshn/patikaOdevler/blob/main/odev9.sql) <br/><br/>
[Ödev 10](https://github.com/frattshn/patikaOdevler/blob/main/odev10.sql) <br/><br/>
[Ödev 11](https://github.com/frattshn/patikaOdevler/blob/main/odev11.sql) <br/><br/>


### Bazı önemli SQL komutları
İki adet sütunu tek sütunda birleştirmek için **CONCAT** kullanılır.
Örnek sorgu:
```
SELECT CONCAT(first_name, last_name) AS "İsim ve Soyisim" FROM actor;
```
#### Tablo Oluşturma
```
CREATE TABLE <table_name> (
   <column_name> <data_type> <constraint>,
   <column_name> <data_type> <constraint>,
   <column_name> <data_type> <constraint>,
);
```
**ÖRNEK** <br>
```
CREATE TABLE author (
 id SERIAL PRIMARY KEY,
 first_name varchar(50) NOT NULL,
 last_name varchar(50) NOT NULL,
 email varchar(100),
 birthday DATE
);
```
[![image](https://r.resimlink.com/ISDe.png)](https://resimlink.com/ISDe)

#### Tabloya Veri Ekleme
```
INSERT INTO author (first_name, last_name, email, birthday)
VALUES
 ('Memduh Fırat', 'Şahin', 'sahinmfirat@gmail.com', '2000-01-15'),
 ('Fatih', 'Cöne', 'fatih@cone.com', '2000-11-15'),
 ('Berat', 'Balta', 'berat@balta.com', '2000-08-15'),
 ('Mert', 'Bulutoğlu', 'mert@bulutoglu.com', '2000-01-15');
```
 [![image](https://r.resimlink.com/mFPR0.png)](https://resimlink.com/mFPR0)
 
 #### Aynı Sütun İsimlerine Sahip Başka Bir Tablo Oluşturma
 ```
 CREATE TABLE author2 (LIKE author);
 ```
 
 #### Oluşturulan Yeni Tabloya Bir Diğer Tablodan Veri Ekleme
 ```
 INSERT INTO author2
 SELECT * FROM author;
 ```
 
 #### Verileri ile Beraber Bir Tablodan Başka Bir Tablo Oluşturma
 ```
 CREATE TABLE author3
 SELECT * FROM author;
 ```
 
 #### Tablo Silme
 ```
 DROP TABLE IF EXISTS author3;
 ```
 
 #### Tabloda Veri Güncelleme
 ```
UPDATE author
SET first_name ='Zahir Ömer',
	last_name ='Şahin',
	email ='omer@sahin.com',
	birthday ='2022-01-15'
WHERE id =5; <br>
```

#### Tabloda Veri Güncelleme ve Veriyi Geri Döndürme
```
UPDATE author
SET last_name ='UPDATED'
WHERE first_name= 'Phebe'
RETURNING *;
```
[![image](https://r.resimlink.com/65w7Go.png)](https://resimlink.com/65w7Go)

#### Veri Silmek
```
DELETE FROM author
WHERE id= 6;
```

#### PRIMARY KEY ve FOREIGN KEY
Aşağıdaki SQL komutları ile oluşturulan **book** tablosu, **author** tablosuna author_id ile bağlıdır. Bu tablodaki author_id, author tablosundaki id ile eşleşmiştir.
```
CREATE TABLE book(
 id SERIAL PRIMARY KEY,
 title VARCHAR(100) NOT NULL,
 page_number INTEGER NOT NULL,
 author_id INTEGER REFERENCES author(id)
);
```

#### NOT NULL ve ALTER
Önceden oluşturduğumuz tabloda, herhangi bir sütuna kısıt eklemek istediğimiz zaman **ALTER** komutunu kullanırız. Bu örnekte **NOT NULL** kısıtı bulunmayan bir tablonun sütununa bu kısıtı ekleyeceğiz.
```
CREATE TABLE Employees (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    age INTEGER
);
```
Görüldüğü üzere oluşturulan tabloda herhangi bir **NOT NULL** kısıtı bulunmamaktadır. Bu tabloya [null] bir veri ekledikten sonra **NOT NULL** kısıtı eklemek istersek bir hata alırız. Çünkü kısıtı eklemeden önce tablonun sütununda herhangi bir [null] değeri olmaması gerekir. Bu durumda aşağıdaki komutla boş veriye sahip sütunun satırını sileriz:
```
DELETE FROM <tablo adı>
WHERE username IS NULL;
```
*Dipnot: Bu örnekte "username" niteliği NULL tipindedir.* <br>
Söz konusu NULL tipine sahip satırı sildikten sonra aşağıdaki **ALTER** kodu ile tablomuzdaki bir özniteliğe(bu örnekte username) **NOT NULL** kısıtı ekleyebiliriz.
```
ALTER TABLE <tablo adı>
ALTER COLUMN <sütun adı>
SET NOT NULL;
```

#### INNER JOIN
Kullanım şekli:
```
SELECT <sütun_adi1> , <sütun_adi2>, ... , <sütun_adiN>
FROM <tablo1_adi>
INNER JOIN <tablo_adi2> ON <tablo1_adi>.<sütun_adi> = <tablo2_adi>.<sütun_adi>;
```
Bu örnekte kullanılan INNER JOIN:
```
SELECT * FROM book
INNER JOIN author ON author.id= book.author_id;
```
#### LEFT JOIN
Kullanım şekli:
```
SELECT <sütun_adi1>, <sütun_adi2>, ... , <sütun_adiN>
FROM <tablo_adi1>
INNER JOIN <tablo_adi2> ON <tablo1_adi>.<sütun_adi> = <tablo2_adi>.<sütun_adi>;
```
***LEFT JOIN**'de **FROM**'dan sonra yazılacak olan tablo ismine dikkat edilmelidir. Sırası önemlidir.*

Bu örnekte kullanılan LEFT JOIN:
```
SELECT book.title, author.first_name, author.last_name FROM book
LEFT JOIN author ON author.id = book.author_id;
```

#### UNION ve UNION ALL
Bu SQL komutu iki farklı sorgunun birleştirilmesini sağlar. Dikkat edilmesi gereken noktalar vardır. Bunlardan ilki her iki sorguda da kullanılan **sütun sayısı** aynı olmalıdır. Ayrıca birbirine denk gelen sütunlar, **aynı veri tipinde** olmak zorundadırlar. **UNION** komutu her iki sorgudan eşsiz verileri gösterirken, **UNION ALL** komutu veriler aynı olsa dahi bize verileri gösterir.
**UNION ve UNION ALL'ın Sözdizimi:**
```
SELECT <sütun_adlari> FROM <tablo_ismi>
UNION / UNION ALL
SELECT <sütun_adlari> FROM <tablo_ismi2>;
```

#### INTERSECT ve EXCEPT
**INTERSECT** SQL komutu ilk sorgu ile ikinci sorgunun kesişim kümesini ifade eder. **EXCEPT** SQL komutu ise; yapılan ilk sorguda olup, ikinci sorguda olmayan ifadeleri temsil eder. Kümeler ile ifade etmek istersek; İlk sorgu 'A' ve ikinci sorgumuz 'B' olmak üzere, AUB INTERSECT, A\B ise EXCEPT olarak anlatılabilir. Aşağıda bu iki sorgunun sözdizimi bulunmaktadır:
```
SELECT <sütun_adlari> FROM <tablo_adi>
INTERSECT / EXCEPT
SELECT <sütun_adlari> FROM <tablo_adi2>;
```
_Dipnot: Her iki sorguda da UNION sorgularında olduğu gibi eşit sayıda sütun adı ve aynı tipte veri taşıyan sütunlar olmalıdır._
### PSQL
#### PSQL ile PostgreSQL'e bağlanmak
psql -U <kullanıcı adı>

#### PSQL ile PostgreSQL'e host, port, kullanıcı adı ve veritabanı ismi ile bağlanmak için:
```
psql -h <host_name> -p <port_name> -U <kullanici_adi> <veritabanı_adi>
```

#### Yeni veritabanı oluşturmak
```
CREATE DATABASE <database_name>
```

#### Bulunan veritabanlarını listelemek
`\l` veya `\list`

#### Veritabanına bağlantıyı sağlamak
`\connect dvdrental` veya `\c dvdrental`

#### Bağlanılan veritabanında bulunan tabloları listelemek ve o tabloya ait detayları görüntülemek
`\dt` ile tablolar listelenir. `\dt+ <tablo_adi>` ve `\dt <tablo_adı>` ile de tablo detayları görüntülenir.

#### Bir tablodaki sütun ismini değiştirme
```
ALTER TABLE <tablo_adi> RENAME COLUMN <sütun_adi> TO <yeni_sütun_adi>;
```

#### Bir sütuna UNIQUE kısıtı eklemek
```
ALTER TABLE <tablo_adi> ADD CONSTRAINT <kisitlama_adi> UNIQUE(<sütun_adi>);
```

#### PSQL terminal ekranından çıkmak için \q kullanılır.
 
