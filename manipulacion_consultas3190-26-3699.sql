INSERT INTO Cliente3190_26_3699 (Nombre, Apellido, Telefono, Correo, Direccion) VALUES
('Carlos', 'Gómez', '5551-2020', 'carlos@gmail.com', 'Zona 1'),
('Ana', 'López', '5552-3030', 'ana@gmail.com', 'Zona 7'),
('Luis', 'Pérez', '5553-4040', 'luis@gmail.com', 'Mixco'),
('María', 'Ramírez', '5554-5050', 'maria@gmail.com', 'Villa Nueva'),
('José', 'Morales', '5555-6060', 'jose@gmail.com', 'Zona 18');

INSERT INTO Empleado3190_26_3699 (Nombre, Apellido, Puesto, Telefono, Correo) VALUES
('Andrea', 'Castillo', 'Barista', '5556-1111', 'andrea@cafeaurora.com'),
('Pedro', 'Méndez', 'Cajero', '5556-2222', 'pedro@cafeaurora.com'),
('Sofía', 'Herrera', 'Mesera', '5556-3333', 'sofia@cafeaurora.com'),
('Diego', 'Rojas', 'Administrador', '5556-4444', 'diego@cafeaurora.com'),
('Lucía', 'Vásquez', 'Repostera', '5556-5555', 'lucia@cafeaurora.com');

INSERT INTO Categoria3190_26_3699 (Nombre, Descripcion) VALUES
('Bebida Caliente', 'Café, chocolate y bebidas calientes'),
('Bebida Fría', 'Frappés, smoothies y bebidas frías'),
('Postre', 'Pasteles, donas y repostería'),
('Snack', 'Comida ligera'),
('Combo', 'Promociones combinadas'); 

INSERT INTO Proveedor3190_26_3699 (Nombre, Telefono, Correo, Direccion) VALUES
('Distribuidora Café Maya', '2440-1111', 'ventas@cafemaya.com', 'Guatemala'),
('Lácteos del Valle', '2440-2222', 'info@lacteosvalle.com', 'Mixco'),
('Repostería Central', '2440-3333', 'contacto@reposteriacentral.com', 'Zona 4'),
('Dulces Chapines', '2440-4444', 'ventas@dulceschapines.com', 'Zona 1'),
('Panadería El Trigo', '2440-5555', 'pedidos@eltrigo.com', 'Villa Nueva');

INSERT INTO Metodo_Pago3190_26_3699 (Nombre, Descripcion) VALUES
('Efectivo', 'Pago en caja con efectivo'),
('Tarjeta', 'Pago con tarjeta de crédito o débito'),
('Transferencia', 'Pago mediante transferencia bancaria'),
('Código QR', 'Pago digital por QR'),
('Depósito', 'Pago mediante depósito bancario');

INSERT INTO Producto3190_26_3699 (Id_Categoria, Id_Proveedor, Nombre, Descripcion, Precio, Stock) VALUES
(1, 1, 'Cappuccino', 'Café con leche espumada', 22.00, 40),
(1, 1, 'Latte', 'Café suave con leche', 24.00, 35),
(2, 2, 'Frappé de Vainilla', 'Bebida fría sabor vainilla', 28.00, 30),
(3, 3, 'Cheesecake', 'Pastel de queso individual', 30.00, 20),
(3, 5, 'Dona Glaseada', 'Dona dulce tradicional', 12.00, 50);

INSERT INTO Pedido3190_26_3699 (Id_Cliente, Id_Empleado, Id_Metodo_Pago, Fecha, Total, Estado) VALUES
(1, 2, 1, '2026-05-20', 34.00, 'Pagado'),
(2, 1, 2, '2026-05-21', 52.00, 'Pagado'),
(3, 3, 1, '2026-05-21', 30.00, 'Pendiente'),
(4, 2, 4, '2026-05-22', 58.00, 'Pagado'),
(5, 1, 3, '2026-05-23', 42.00, 'Cancelado');

INSERT INTO Detalle_Pedido3190_26_3699 
(Id_Pedido, Id_Producto, Cantidad, Precio_Unitario, Subtotal) 
VALUES
(6, 1, 1, 22.00, 22.00),
(6, 5, 1, 12.00, 12.00),
(7, 3, 1, 28.00, 28.00),
(7, 2, 1, 24.00, 24.00),
(8, 4, 1, 30.00, 30.00);


UPDATE Producto3190_26_3699
SET Precio = 25.00
WHERE Id_Producto = '2';

UPDATE Cliente3190_26_3699
SET Telefono = '5999-8888'
WHERE Id_Cliente = 1;

UPDATE Pedido3190_26_3699
SET Estado = 'Pagado'
WHERE Id_Pedido = 8;


DELETE FROM Detalle_Pedido3190_26_3699
WHERE Id_Detalle_Pedido = 5;

DELETE FROM Pedido3190_26_3699
WHERE Id_Pedido = 10;

DELETE FROM Producto3190_26_3699
WHERE Id_Producto = 10;


SELECT Estado, COUNT(Id_Pedido) AS Cantidad_Pedidos
FROM Pedido3190_26_3699
GROUP BY Estado;

SELECT Id_Metodo_Pago, SUM(Total) AS Total_Vendido
FROM Pedido3190_26_3699
GROUP BY Id_Metodo_Pago;

SELECT Id_Categoria, AVG(Precio) AS Precio_Promedio
FROM Producto3190_26_3699
GROUP BY Id_Categoria;

SELECT Id_Categoria, MAX(Precio) AS Producto_Mas_Caro
FROM Producto3190_26_3699
GROUP BY Id_Categoria;

SELECT Id_Categoria, MIN(Precio) AS Producto_Mas_Barato
FROM Producto3190_26_3699
GROUP BY Id_Categoria;
