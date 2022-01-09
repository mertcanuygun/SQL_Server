
--DDL(Data Definition Language) Creating, altering and dropping tables, columns

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


CREATE TABLE "Orders"
(
      [OrderId] INT IDENTITY(1,1) NOT NULL,
	  [OrderDate] DATETIME2(7) NOT NULL,
	  [UnitPrice] DECIMAL NOT NULL,
	  [Quantity] INT NOT NULL,
	  [Discount] DECIMAL NOT NULL,
	  [ProductId] INT NOT NULL,
	  [CreateDate] DATETIME2(7) NOT NULL,
	  [UpdateDate] DATETIME2(7) NULL,
	  [DeleteDate] DATETIME2(7) NULL,
	  [Status] INT NOT NULL,
      CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED ([OrderId] ASC),
	  CONSTRAINT [FK_Orders_ProductsId] FOREIGN KEY ([ProductId]) REFERENCES Products([ProductId])
)


CREATE TABLE "Employees"
(
      [EmployeeId] INT IDENTITY(1,1) NOT NULL,
	  [Name] NVARCHAR(MAX) NOT NULL,
	  [LastName] NVARCHAR(MAX) NOT NULL,
	  [Title] NVARCHAR(25) NOT NULL,
	  [Gender] NVARCHAR(10) NOT NULL,
	  [BirthDate] DATETIME2(7) NOT NULL,
	  [HireDate] DATETIME2(7) NOT NULL,
	  [OrderId] INT NOT NULL,
	  [CreateDate] DATETIME2(7) NOT NULL,
	  [UpdateDate] DATETIME2(7) NULL,
	  [DeleteDate] DATETIME2(7) NULL,
	  [Status] INT NOT NULL,
	  CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED ([EmployeeId] ASC),
	  CONSTRAINT [FK_Employees_OrderId] FOREIGN KEY ([OrderId]) REFERENCES Orders([OrderId])
)
