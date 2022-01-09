
--DML (Data Manipulation Language) Inserting, updating and deleting data from tables

use MyDataBase


Insert Brands ([Brand Name],CreateDate,Status) values ('Ülker', GETDATE(), 1)
INSERT Countries ([Country Name],CreateDate,Status) values ('Türkiye', GETDATE(),1)
Insert Suppliers ([Supplier Name],CreateDate,Status) values ('Tatlý AÞ',GETDATE(), 1)
INSERT Products ([Product Name], Price,CategoryId, BrandId, SupplierId,CreateDate,Status) values ('Çikolatalý Gofret', '12.95',1,2,5,GETDATE(),1)
INSERT Suppliers ([Supplier Name],CountryId,CreateDate,Status) values ('Þekerci AÞ',1,GETDATE(),1)

select * from Suppliers
select * from Countries

update Brands
set [Brand Name] = 'Ulker'

select * from Brands

INSERT Categories ([Category Name],CreateDate,Status) VALUES ('Çikolatalar',GETDATE(),1)

INSERT Products ([Product Name],BrandId,CategoryId,SupplierId,Price,CreateDate,Status) VALUES ('Çikolatalý Gofret',2,1,1,'12.90',GETDATE(),1)



INSERT Brands ([Brand Name],CreateDate,Status) VALUES ('Eti',GETDATE(),1)
INSERT Brands ([Brand Name],CreateDate,Status) VALUES ('Nestle',GETDATE(),1)
INSERT Brands ([Brand Name],CreateDate,Status) VALUES ('Ömür',GETDATE(),1)
INSERT Brands ([Brand Name],CreateDate,Status) VALUES ('Kinder',GETDATE(),1)
INSERT Brands ([Brand Name],CreateDate,Status) VALUES ('Omo',GETDATE(),1)


INSERT Brands ([Brand Name],CreateDate,Status) VALUES ('Pýnar',GETDATE(),1)
INSERT Brands ([Brand Name],CreateDate,Status) VALUES ('Migros',GETDATE(),1)
INSERT Brands ([Brand Name],CreateDate,Status) VALUES ('Þok',GETDATE(),1)
INSERT Brands ([Brand Name],CreateDate,Status) VALUES ('Ozmo',GETDATE(),1)
INSERT Brands ([Brand Name],CreateDate,Status) VALUES ('Þölen',GETDATE(),1)
INSERT Brands ([Brand Name],CreateDate,Status) VALUES ('Biscolata',GETDATE(),1)
INSERT Brands ([Brand Name],CreateDate,Status) VALUES ('Coca-Cola',GETDATE(),1)
INSERT Brands ([Brand Name],CreateDate,Status) VALUES ('Cappy',GETDATE(),1)
INSERT Brands ([Brand Name],CreateDate,Status) VALUES ('Kýzýlay',GETDATE(),1)
INSERT Brands ([Brand Name],CreateDate,Status) VALUES ('Beypazarý',GETDATE(),1)
INSERT Brands ([Brand Name],CreateDate,Status) VALUES ('Sýrma',GETDATE(),1)
INSERT Brands ([Brand Name],CreateDate,Status) VALUES ('Milka',GETDATE(),1)
INSERT Brands ([Brand Name],CreateDate,Status) VALUES ('Bingo',GETDATE(),1)
INSERT Brands ([Brand Name],CreateDate,Status) VALUES ('ABC',GETDATE(),1)
INSERT Brands ([Brand Name],CreateDate,Status) VALUES ('Bim',GETDATE(),1)
INSERT Brands ([Brand Name],CreateDate,Status) VALUES ('Sütaþ',GETDATE(),1)
INSERT Brands ([Brand Name],CreateDate,Status) VALUES ('Torku',GETDATE(),1)
INSERT Brands ([Brand Name],CreateDate,Status) VALUES ('Algida',GETDATE(),1)
INSERT Brands ([Brand Name],CreateDate,Status) VALUES ('Golf',GETDATE(),1)
INSERT Brands ([Brand Name],CreateDate,Status) VALUES ('Selpak',GETDATE(),1)
INSERT Brands ([Brand Name],CreateDate,Status) VALUES ('Papia',GETDATE(),1)
INSERT Brands ([Brand Name],CreateDate,Status) VALUES ('Yumoþ',GETDATE(),1)
INSERT Brands ([Brand Name],CreateDate,Status) VALUES ('Familia',GETDATE(),1)
INSERT Brands ([Brand Name],CreateDate,Status) VALUES ('Solo',GETDATE(),1)
INSERT Brands ([Brand Name],CreateDate,Status) VALUES ('Barilla',GETDATE(),1)
INSERT Brands ([Brand Name],CreateDate,Status) VALUES ('Filiz',GETDATE(),1)
INSERT Brands ([Brand Name],CreateDate,Status) VALUES ('Pastavilla',GETDATE(),1)


INSERT Categories ([Category Name],CreateDate,Status) VALUES ('Bisküviler',GETDATE(),1)
INSERT Categories ([Category Name],CreateDate,Status) VALUES ('Krakerler',GETDATE(),1)
INSERT Categories ([Category Name],CreateDate,Status) VALUES ('Süt ve Süt Ürünleri',GETDATE(),1)
INSERT Categories ([Category Name],CreateDate,Status) VALUES ('Ýçecekler',GETDATE(),1)
INSERT Categories ([Category Name],CreateDate,Status) VALUES ('Deterjanlar',GETDATE(),1)
INSERT Categories ([Category Name],CreateDate,Status) VALUES ('Dondurmalar',GETDATE(),1)
INSERT Categories ([Category Name],CreateDate,Status) VALUES ('Tuvalet Kaðýtlarý',GETDATE(),1)
INSERT Categories ([Category Name],CreateDate,Status) VALUES ('Makarnalar',GETDATE(),1)


INSERT Countries ([Country Name],CreateDate,Status) values ('Almanya',GETDATE(),1)
INSERT Countries ([Country Name],CreateDate,Status) values ('Ýngiltere',GETDATE(),1)
INSERT Countries ([Country Name],CreateDate,Status) values ('Ýtalya',GETDATE(),1)
INSERT Countries ([Country Name],CreateDate,Status) values ('Bangladeþ',GETDATE(),1)
INSERT Countries ([Country Name],CreateDate,Status) values ('Çin',GETDATE(),1)
INSERT Countries ([Country Name],CreateDate,Status) values ('ABD',GETDATE(),1)
INSERT Countries ([Country Name],CreateDate,Status) values ('Fransa',GETDATE(),1)
INSERT Countries ([Country Name],CreateDate,Status) values ('Polonya',GETDATE(),1)
INSERT Countries ([Country Name],CreateDate,Status) values ('Vietman',GETDATE(),1)
INSERT Countries ([Country Name],CreateDate,Status) values ('Rusya',GETDATE(),1)
INSERT Countries ([Country Name],CreateDate,Status) values ('Meksika',GETDATE(),1)
INSERT Countries ([Country Name],CreateDate,Status) values ('Endonezya',GETDATE(),1)
INSERT Countries ([Country Name],CreateDate,Status) values ('Mýsýr',GETDATE(),1)
INSERT Countries ([Country Name],CreateDate,Status) values ('Kýbrýs',GETDATE(),1)
INSERT Countries ([Country Name],CreateDate,Status) values ('Japonya',GETDATE(),1)
INSERT Countries ([Country Name],CreateDate,Status) values ('Güney Kore',GETDATE(),1)
INSERT Countries ([Country Name],CreateDate,Status) values ('Ýspanya',GETDATE(),1)
INSERT Countries ([Country Name],CreateDate,Status) values ('Ýsveç',GETDATE(),1)




INSERT Suppliers ([Supplier Name],CountryId,CreateDate,Status) values ('Plansýz Yemekçilik',1,GETDATE(),1)
INSERT Suppliers ([Supplier Name],CountryId,CreateDate,Status) values ('Haupbahnhof',2,GETDATE(),1)
INSERT Suppliers ([Supplier Name],CountryId,CreateDate,Status) values ('Mars',7,GETDATE(),1)
INSERT Suppliers ([Supplier Name],CountryId,CreateDate,Status) values ('Jupiter',10,GETDATE(),1)
INSERT Suppliers ([Supplier Name],CountryId,CreateDate,Status) values ('Venusial',17,GETDATE(),1)
INSERT Suppliers ([Supplier Name],CountryId,CreateDate,Status) values ('Constryijk',19,GETDATE(),1)
INSERT Suppliers ([Supplier Name],CountryId,CreateDate,Status) values ('Dobrevecer RU',11,GETDATE(),1)
INSERT Suppliers ([Supplier Name],CountryId,CreateDate,Status) values ('Spotify AB',19,GETDATE(),1)
INSERT Suppliers ([Supplier Name],CountryId,CreateDate,Status) values ('DeutcheKopf ADLER',2,GETDATE(),1)
INSERT Suppliers ([Supplier Name],CountryId,CreateDate,Status) values ('Chrysler',7,GETDATE(),1)
INSERT Suppliers ([Supplier Name],CountryId,CreateDate,Status) values ('Browsers Land',3,GETDATE(),1)
INSERT Suppliers ([Supplier Name],CountryId,CreateDate,Status) values ('Bellamia Pasta',4,GETDATE(),1)
INSERT Suppliers ([Supplier Name],CountryId,CreateDate,Status) values ('Ferrorero Italiano',4,GETDATE(),1)
INSERT Suppliers ([Supplier Name],CountryId,CreateDate,Status) values ('Eiffelier FR',8,GETDATE(),1)
INSERT Suppliers ([Supplier Name],CountryId,CreateDate,Status) values ('Renaultounce',8,GETDATE(),1)
INSERT Suppliers ([Supplier Name],CountryId,CreateDate,Status) values ('Bangladesianoertissiano',5,GETDATE(),1)
INSERT Suppliers ([Supplier Name],CountryId,CreateDate,Status) values ('Bengalianomeg',5,GETDATE(),1)
INSERT Suppliers ([Supplier Name],CountryId,CreateDate,Status) values ('Empire State of Mind',7,GETDATE(),1)
INSERT Suppliers ([Supplier Name],CountryId,CreateDate,Status) values ('Lenchd',9,GETDATE(),1)
INSERT Suppliers ([Supplier Name],CountryId,CreateDate,Status) values ('Poldsz',9,GETDATE(),1)
INSERT Suppliers ([Supplier Name],CountryId,CreateDate,Status) values ('Vietnamesezzi',10,GETDATE(),1)
INSERT Suppliers ([Supplier Name],CountryId,CreateDate,Status) values ('Elbizzomjak',10,GETDATE(),1)
INSERT Suppliers ([Supplier Name],CountryId,CreateDate,Status) values ('Kýbrýs Eli',15,GETDATE(),1)
INSERT Suppliers ([Supplier Name],CountryId,CreateDate,Status) values ('Annesinin Kuzusu Sütleri',15,GETDATE(),1)
INSERT Suppliers ([Supplier Name],CountryId,CreateDate,Status) values ('No Hablo Angle',12,GETDATE(),1)
INSERT Suppliers ([Supplier Name],CountryId,CreateDate,Status) values ('Mejicanto',12,GETDATE(),1)
INSERT Suppliers ([Supplier Name],CountryId,CreateDate,Status) values ('GazProm',11,GETDATE(),1)
INSERT Suppliers ([Supplier Name],CountryId,CreateDate,Status) values ('El Egyptian',14,GETDATE(),1)
INSERT Suppliers ([Supplier Name],CountryId,CreateDate,Status) values ('El Huble Kýsýr Mýsýr',14,GETDATE(),1)
INSERT Suppliers ([Supplier Name],CountryId,CreateDate,Status) values ('Oda Moda Aþçýlýk',1,GETDATE(),1)
INSERT Suppliers ([Supplier Name],CountryId,CreateDate,Status) values ('Konnichiwa',16,GETDATE(),1)
INSERT Suppliers ([Supplier Name],CountryId,CreateDate,Status) values ('Andonisianiploymem',13,GETDATE(),1)
INSERT Suppliers ([Supplier Name],CountryId,CreateDate,Status) values ('Samsungamil Paperi',17,GETDATE(),1)
INSERT Suppliers ([Supplier Name],CountryId,CreateDate,Status) values ('Siesta Fiestas',18,GETDATE(),1)
INSERT Suppliers ([Supplier Name],CountryId,CreateDate,Status) values ('Plaza Mallorca',18,GETDATE(),1)
INSERT Suppliers ([Supplier Name],CountryId,CreateDate,Status) values ('Times New San Andreas',7,GETDATE(),1)
INSERT Suppliers ([Supplier Name],CountryId,CreateDate,Status) values ('Disneylandia',7,GETDATE(),1)



INSERT Products ([Product Name],BrandId,CategoryId,SupplierId,Price,CreateDate,Status) VALUES ('Taze Makarna',32,4,19,12.95,GETDATE(),1)
INSERT Products ([Product Name],BrandId,CategoryId,SupplierId,Price,CreateDate,Status) VALUES ('Papia Kaðýt Havlu',28,11,30,5.25,GETDATE(),1)
INSERT Products ([Product Name],BrandId,CategoryId,SupplierId,Price,CreateDate,Status) VALUES ('Eti Antepfýstýklý Çikolata',3,1,8,1.85,GETDATE(),1)

INSERT Products ([Product Name],BrandId,CategoryId,SupplierId,Price,CreateDate,Status) VALUES ('Kirlere Elveda',21,9,15,22.15,GETDATE(),1)
INSERT Products ([Product Name],BrandId,CategoryId,SupplierId,Price,CreateDate,Status) VALUES ('Tatlý Eller',26,5,43,6.35,GETDATE(),1)
INSERT Products ([Product Name],BrandId,CategoryId,SupplierId,Price,CreateDate,Status) VALUES ('Bellonaçika',31,9,35,10.90,GETDATE(),1)
INSERT Products ([Product Name],BrandId,CategoryId,SupplierId,Price,CreateDate,Status) VALUES ('Uranüs Mozaik',25,7,23,5.99,GETDATE(),1)
INSERT Products ([Product Name],BrandId,CategoryId,SupplierId,Price,CreateDate,Status) VALUES ('Mausçu Kazaný',32,6,33,7.75,GETDATE(),1)


INSERT Products ([Product Name],BrandId,CategoryId,SupplierId,Price,CreateDate,Status) VALUES ('Klavye Delikanlýsý',25,8,12,32.25,GETDATE(),1)

INSERT Products ([Product Name],BrandId,CategoryId,SupplierId,Price,CreateDate,Status) VALUES ('Ürüncüler Kralý',29,6,40,42.15,GETDATE(),1)

INSERT Products ([Product Name],BrandId,CategoryId,SupplierId,Price,CreateDate,Status) VALUES ('Termos Kapakçýklýsý',27,4,17,17.90,GETDATE(),1)

INSERT Products ([Product Name],BrandId,CategoryId,SupplierId,Price,CreateDate,Status) VALUES ('Muz Kabuðu',11,10,11,17.90,GETDATE(),1)

INSERT Products ([Product Name],BrandId,CategoryId,SupplierId,Price,CreateDate,Status) VALUES ('Býçaktan Keskin Kalem',4,10,12,12.55,GETDATE(),1)
INSERT Products ([Product Name],BrandId,CategoryId,SupplierId,Price,CreateDate,Status) VALUES ('Kalemcik',4,6,7,7.90,GETDATE(),1)

INSERT Products ([Product Name],BrandId,CategoryId,SupplierId,Price,CreateDate,Status) VALUES ('Simbalamba',13,8,13,13.35,GETDATE(),1)
INSERT Products ([Product Name],BrandId,CategoryId,SupplierId,Price,CreateDate,Status) VALUES ('Kapkacak',15,6,19,6.65,GETDATE(),1)
INSERT Products ([Product Name],BrandId,CategoryId,SupplierId,Price,CreateDate,Status) VALUES ('Jakarta',9,9,9,9.95,GETDATE(),1)

INSERT Products ([Product Name],BrandId,CategoryId,SupplierId,Price,CreateDate,Status) VALUES ('Litrelerce',19,5,14,14.45,GETDATE(),1)
INSERT Products ([Product Name],BrandId,CategoryId,SupplierId,Price,CreateDate,Status) VALUES ('Tuþlu Masa',34,7,22,22.15,GETDATE(),1)
INSERT Products ([Product Name],BrandId,CategoryId,SupplierId,Price,CreateDate,Status) VALUES ('Defter Týpasý',7,5,8,8.65,GETDATE(),1)
INSERT Products ([Product Name],BrandId,CategoryId,SupplierId,Price,CreateDate,Status) VALUES ('Ömür Törpüsü',34,11,44,44.45,GETDATE(),1)

INSERT Products ([Product Name],BrandId,CategoryId,SupplierId,Price,CreateDate,Status) VALUES ('Ýnsan Çerçevesi',30,4,42,42.35,GETDATE(),1)
INSERT Products ([Product Name],BrandId,CategoryId,SupplierId,Price,CreateDate,Status) VALUES ('Deve Piresi',20,8,10,10.90,GETDATE(),1)

INSERT Products ([Product Name],BrandId,CategoryId,SupplierId,Price,CreateDate,Status) VALUES ('Askýcýlý',5,5,20,20.25,GETDATE(),1)
INSERT Products ([Product Name],BrandId,CategoryId,SupplierId,Price,CreateDate,Status) VALUES ('Týrnak Arasý',16,6,16,16.95,GETDATE(),1)
INSERT Products ([Product Name],BrandId,CategoryId,SupplierId,Price,CreateDate,Status) VALUES ('Portakal Kabuðu Isýrýðý',7,7,13,13.75,GETDATE(),1)
INSERT Products ([Product Name],BrandId,CategoryId,SupplierId,Price,CreateDate,Status) VALUES ('Yuvacý Kalbi',21,6,8,8.85,GETDATE(),1)
INSERT Products ([Product Name],BrandId,CategoryId,SupplierId,Price,CreateDate,Status) VALUES ('Kalp Kýrýcý',24,11,31,30.95,GETDATE(),1)

INSERT Products ([Product Name],BrandId,CategoryId,SupplierId,Price,CreateDate,Status) VALUES ('Poþet Torbasý',18,4,32,51.50,GETDATE(),1)
INSERT Products ([Product Name],BrandId,CategoryId,SupplierId,Price,CreateDate,Status) VALUES ('Torba Poþeti',27,9,9,9.90,GETDATE(),1)

INSERT Products ([Product Name],BrandId,CategoryId,SupplierId,Price,CreateDate,Status) VALUES ('Çanta Tasmasý',12,11,18,18.75,GETDATE(),1)
INSERT Products ([Product Name],BrandId,CategoryId,SupplierId,Price,CreateDate,Status) VALUES ('Karton Kutu',2,1,39,6.65,GETDATE(),1)
INSERT Products ([Product Name],BrandId,CategoryId,SupplierId,Price,CreateDate,Status) VALUES ('Ütü Sehpasý',6,8,18,18.70,GETDATE(),1)
INSERT Products ([Product Name],BrandId,CategoryId,SupplierId,Price,CreateDate,Status) VALUES ('Yatak Kýlýfý',2,10,28,28.25,GETDATE(),1)
INSERT Products ([Product Name],BrandId,CategoryId,SupplierId,Price,CreateDate,Status) VALUES ('Kýlýf Yataðý',3,4,5,65.60,GETDATE(),1)
INSERT Products ([Product Name],BrandId,CategoryId,SupplierId,Price,CreateDate,Status) VALUES ('Saat Çalar',33,7,42,42.15,GETDATE(),1)
INSERT Products ([Product Name],BrandId,CategoryId,SupplierId,Price,CreateDate,Status) VALUES ('Þarj Telefonu',34,10,41,55.50,GETDATE(),1)


select * from Countries
select * from Suppliers
select * from Categories
select * from Products
select * from Brands


DELETE FROM Categories WHERE CategoryId=2
DELETE FROM Categories WHERE CategoryId=3