SELECT 
    c.ContactName AS 'Nome de contato',
    s.ShipperName AS 'Empresa que fez o envio', 
    o.OrderDate AS 'Data do pedido'
FROM
    w3schools.orders AS o
        INNER JOIN
    w3schools.customers AS c ON o.CustomerID = c.CustomerID
        INNER JOIN
    w3schools.shippers AS s ON o.ShipperID = s.ShipperID
WHERE
    o.ShipperID BETWEEN 1 AND 2
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
