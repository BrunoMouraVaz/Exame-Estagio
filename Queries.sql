-- Insere produtos
INSERT INTO [Products]
(
     [Name]
     ,[Value]
)
VALUES
(
    'Notebook'
    , 2500
);
INSERT INTO [Products]
(
     [Name]
     ,[Value]
)
VALUES
(
    'Teclado'
    , 600
);

-- Insere pedidos
INSERT INTO [PurchaseOrders]
(
    [CustomerName]
    ,[CreatedOn]
    ,[Value]
    ,[ProductId]
    ,[Quantity]
)
VALUES
(
    'Bruno'
    , '2023-01-13 22:30:00'
    , 5000
    , 1
    , 2
);

-- Edita pedido
UPDATE [PurchaseOrders] SET [CustomerName] = 'Bruno Moura' WHERE [CustomerName] = 'Bruno';

-- Apaga pedido
DELETE [PurchaseOrders] WHERE [Id] = 1;

-- Consulta
SELECT TOP (1000) [Id]
    ,[Name]
    ,[Value]
FROM [Elections].[dbo].[Products];

SELECT TOP (1000) [Id]
    ,[CustomerName]
    ,[CreatedOn]
    ,[Value]
    ,[ProductId]
    ,[Quantity]
FROM [Elections].[dbo].[PurchaseOrders];