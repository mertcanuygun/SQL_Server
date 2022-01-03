use MyDataBase

CREATE TABLE "Categories"
(
     [CategoryId] INT IDENTITY(1,1) NOT NULL,
	 [Category Name] VARCHAR(50) not null,
	 [CreateDate] DATETIME2(7) NOT NULL,
	 [UpdateDate] DATETIME2(7) NULL,
	 [DeleteDate] DATETIME2(7) NULL,
	 [Status] INT NOT NULL,
	 CONSTRAINT [PK_Categories] PRIMARY KEY ([CategoryId] ASC)
)

CREATE TABLE "Brands"
(
     [BrandId] INT IDENTITY(1,1) NOT NULL,
	 [Brand Name] VARCHAR(50) NOT NULL,
	 [Origin] VARCHAR(50) NOT NULL,
	 [CreateDate] DATETIME2(7) NOT NULL,
	 [UpdateDate] DATETIME2(7) NULL,
	 [DeleteDate] DATETIME2(7) NULL,
	 [Status] INT NOT NULL,
	 CONSTRAINT [PK_Brands] PRIMARY KEY ([BrandId] ASC)
)

ALTER TABLE "BRANDS"
DROP COLUMN origin

CREATE TABLE "Countries"
(
     [CountryId] INT IDENTITY(1,1) NOT NULL,
	 [Country Name] VARCHAR(20) NOT NULL,
	 [Region] VARCHAR(40) NULL,
	 [CreateDate] DATETIME2(7) NOT NULL,
	 [UpdateDate] DATETIME2(7) NULL,
	 [DeleteDate] DATETIME2(7) NULL,
	 [Status] INT NOT NULL,
	 CONSTRAINT [PK_Countries] PRIMARY KEY ([CountryId] ASC)
)

CREATE TABLE "Suppliers"
(
     [SupplierId] INT IDENTITY(1,1) NOT NULL,
	 [Supplier Name] VARCHAR(50) NOT NULL,
	 [CountryId] INT NOT NULL,
	 [CreateDate] DATETIME2(7) NOT NULL,
	 [UpdateDate] DATETIME2(7) NULL,
	 [DeleteDate] DATETIME2(7) NULL,
	 [Status] INT NOT NULL,
	 CONSTRAINT [PK_Suppliers] PRIMARY KEY ([SupplierId] ASC),
	 CONSTRAINT [FK_Suppliers_CountryId] FOREIGN KEY ([CountryId]) REFERENCES Countries([CountryId])
)



CREATE TABLE "Products"
(
     [ProductId] INT IDENTITY(1,1) NOT NULL,
	 [Product Name] VARCHAR(50) NOT NULL,
	 [Description] VARCHAR(50) NULL,
	 [Price] DECIMAL(36,2) NOT NULL,
	 [CategoryId] INT NOT NULL,
	 [BrandId] INT NOT NULL,
	 [SupplierId] INT NOT NULL,
	 [CreateDate] DATETIME2(7) NOT NULL,
	 [UpdateDate] DATETIME2(7) NULL,
	 [DeleteDate] DATETIME2(7) NULL,
	 [Status] INT NOT NULL,
	 CONSTRAINT [PK_Products] PRIMARY KEY ([ProductId] ASC),
	 CONSTRAINT [FK_Products_CategoryId] FOREIGN KEY ([CategoryId]) REFERENCES Categories ([CategoryId]),
	 CONSTRAINT [FK_Products_BrandId] FOREIGN KEY ([BrandId]) REFERENCES Brands ([BrandId]),
	 CONSTRAINT [FK_Products_SupplierId] FOREIGN KEY ([SupplierId]) REFERENCES Suppliers ([SupplierId])
)



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

