/*
   sexta-feira, 13 de janeiro de 202322:28:07
   User: admin
   Server: sotessql2019.c1ordbh9wib8.sa-east-1.rds.amazonaws.com
   Database: Elections
   Application: 
*/

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.Products
	(
	Id int NOT NULL IDENTITY (1, 1),
	Name nvarchar(50) NOT NULL,
	Value float(53) NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Products ADD CONSTRAINT
	PK_Products PRIMARY KEY CLUSTERED 
	(
	Id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.Products SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.Products', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Products', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Products', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
CREATE TABLE dbo.PurchaseOrders
	(
	Id int NOT NULL IDENTITY (1, 1),
	CustomerName nvarchar(255) NOT NULL,
	CreatedOn datetime NOT NULL,
	Value float(53) NOT NULL,
	ProductId int NOT NULL,
	Quantity int NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.PurchaseOrders ADD CONSTRAINT
	PK_PurchaseOrders PRIMARY KEY CLUSTERED 
	(
	Id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.PurchaseOrders ADD CONSTRAINT
	FK_PurchaseOrders_Products FOREIGN KEY
	(
	ProductId
	) REFERENCES dbo.Products
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.PurchaseOrders SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.PurchaseOrders', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.PurchaseOrders', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.PurchaseOrders', 'Object', 'CONTROL') as Contr_Per 