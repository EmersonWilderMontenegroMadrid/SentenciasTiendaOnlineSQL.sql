
--Crear la tabla Clientes
Create table Clientes(
ID_Cliente number(4,0) PRIMARY KEY,
Nombres varchar(50),
Apellidos varchar(50),
Pais_cliente varchar (50),
Dirección varchar(50),
Correo varchar(50),
Numero_telefono number(9,0)
);

--Crear la tabla Pedidos
CREATE TABLE Pedidos (
    ID_pedido NUMBER(9,0) PRIMARY KEY,
    Fecha_pedido DATE,
    Total_pedido NUMBER(5,2),
    Estado_pedido VARCHAR2(20),
    IDCliente NUMBER(4,0),
    FOREIGN KEY (IDCliente) REFERENCES Clientes(ID_Cliente)
);

--Crear la tabla Tienda
Create table Tienda(
ID_Tienda number(5,0) PRIMARY KEY,
Nombre_tienda varchar2(50),
Dirección_tienda varchar2(50),
Ciudad_tienda varchar2(50),
Pais_Tienda varchar2(50)
);

--Crear tabla Productos
CREATE TABLE Productos (
    ID_Producto VARCHAR2(7) PRIMARY KEY,
    Nombre_producto VARCHAR2(50),
    Marca_producto VARCHAR2(50),
    Precio NUMBER(9,2),
    Categoria VARCHAR2(50),
    Stock NUMBER(5),
    IDTienda NUMBER(5),
    FOREIGN KEY (IDTienda) REFERENCES Tienda(ID_Tienda)
);

--Crear tabla Valoración
Create table Valoración(
IDProducto varchar2(7),
IDClientes number (4,0),
PRIMARY KEY (IDProducto,IDClientes),
FOREIGN KEY (IDProducto) REFERENCES Productos(ID_Producto),
FOREIGN KEY (IDClientes) REFERENCES Clientes(ID_Cliente),
Fecha_Valoracion date,
Puntuacion number(1,0)
);

-- Insertar registros en la tabla Clientes
INSERT INTO Clientes VALUES (1001, 'Juan', 'Pérez', 'España', 'Calle Principal 123', 'juan@gmail.com', 912345678);
INSERT INTO Clientes VALUES (1002, 'María', 'López', 'México', 'Avenida Central 456', 'maria@gmail.com', 912345679);
INSERT INTO Clientes VALUES (1003, 'Pedro', 'Gómez', 'Argentina', 'Calle Secundaria 789', 'pedro@gmail.com', 912345680);
INSERT INTO Clientes VALUES (1004, 'Ana', 'Rodríguez', 'Chile', 'Avenida Principal 789', 'ana@gmail.com', 912345681);
INSERT INTO Clientes VALUES (1005, 'Carlos', 'Martínez', 'Perú', 'Calle Central 456', 'carlos@gmail.com', 912345682);
INSERT INTO Clientes VALUES (1006, 'Luis', 'Hernández', 'México', 'Avenida Principal 123', 'luis@gmail.com', 912345691);
INSERT INTO Clientes VALUES (1007, 'Maria', 'García', 'España', 'Calle Central 456', 'maria@gmail.com', 912345692);
INSERT INTO Clientes VALUES (1008, 'Chen', 'Li', 'China', 'Avenida Secundaria 789', 'chen@gmail.com', 912345693);
INSERT INTO Clientes VALUES (1009, 'Roberto', 'López', 'México', 'Calle Principal 789', 'roberto@gmail.com', 912345694);
INSERT INTO Clientes VALUES (1010, 'Kanika', 'Patel', 'India', 'Avenida Central 456', 'kanika@gmail.com', 912345695);
INSERT INTO Clientes VALUES (1011, 'Hiroshi', 'Tanaka', 'Japón', 'Calle Secundaria 123', 'hiroshi@gmail.com', 912345696);
INSERT INTO Clientes VALUES (1012, 'Pablo', 'Fernández', 'España', 'Avenida Principal 456', 'pablo@gmail.com', 912345697);
INSERT INTO Clientes VALUES (1013, 'Maria', 'López', 'México', 'Calle Central 789', 'maria2@gmail.com', 912345698);
INSERT INTO Clientes VALUES (1014, 'Anna', 'Kowalska', 'Polonia', 'Avenida Secundaria 123', 'anna@gmail.com', 912345699);
INSERT INTO Clientes VALUES (1015, 'Luisa', 'Silva', 'Brasil', 'Calle Principal 789', 'luisa@gmail.com', 912345610);
INSERT INTO Clientes VALUES (1016, 'Javier', 'Gómez', 'España', 'Avenida Central 456', 'javier@gmail.com', 912345611);
INSERT INTO Clientes VALUES (1017, 'Yuna', 'Kim', 'Corea del Sur', 'Calle Secundaria 123', 'yuna@gmail.com', 912345612);
INSERT INTO Clientes VALUES (1018, 'Emma', 'Smith', 'Reino Unido', 'Avenida Principal 456', 'emma@gmail.com', 912345613);
INSERT INTO Clientes VALUES (1019, 'Andrés', 'Gutiérrez', 'México', 'Calle Central 789', 'andres@gmail.com', 912345614);
INSERT INTO Clientes VALUES (1020, 'Sophia', 'Chen', 'China', 'Avenida Secundaria 123', 'sophia@gmail.com', 912345615);

-- Insertar registros en la tabla Pedidos
INSERT INTO Pedidos VALUES (100001, '01/JANUARY/2023', 150, 'Pendiente', 1001);
INSERT INTO Pedidos VALUES (100002, '20/FEBRUARY/2023', 75, 'En proceso', 1003);
INSERT INTO Pedidos VALUES (100003, '10/MARCH/2023', 200, 'Entregado', 1002);
INSERT INTO Pedidos VALUES (100004, '05/APRIL/2023', 50, 'Cancelado', 1005);
INSERT INTO Pedidos VALUES (100005, '18/MAY/2023', 120, 'En proceso', 1004);
INSERT INTO Pedidos VALUES (100006, '01/JANUARY/2023', 80, 'En proceso', 1006);
INSERT INTO Pedidos VALUES (100007, '20/FEBRUARY/2023', 150, 'Pendiente', 1007);
INSERT INTO Pedidos VALUES (100008, '10/MARCH/2023', 100, 'Entregado', 1008);
INSERT INTO Pedidos VALUES (100009, '05/APRIL/2023', 70, 'Cancelado', 1009);
INSERT INTO Pedidos VALUES (100010, '18/MAY/2023', 120, 'En proceso', 1010);
INSERT INTO Pedidos VALUES (100011, '01/JANUARY/2023', 90, 'Pendiente', 1011);
INSERT INTO Pedidos VALUES (100012, '20/FEBRUARY/2023', 160, 'En proceso', 1012);
INSERT INTO Pedidos VALUES (100013, '10/MARCH/2023', 110, 'Entregado', 1013);
INSERT INTO Pedidos VALUES (100014, '05/APRIL/2023', 50, 'Cancelado', 1014);
INSERT INTO Pedidos VALUES (100015, '18/MAY/2023', 130, 'En proceso', 1015);
INSERT INTO Pedidos VALUES (100016, '01/JANUARY/2023', 120, 'Pendiente', 1016);
INSERT INTO Pedidos VALUES (100017, '20/FEBRUARY/2023', 180, 'En proceso', 1017);
INSERT INTO Pedidos VALUES (100018, '10/MARCH/2023', 90, 'Entregado', 1018);
INSERT INTO Pedidos VALUES (100019, '05/APRIL/2023', 70, 'Cancelado', 1019);
INSERT INTO Pedidos VALUES (100020, '18/MAY/2023', 140, 'En proceso', 1020);

-- Insertar registros en la tabla Tienda
INSERT INTO Tienda VALUES (10001, 'Tienda A', 'Calle Principal 123', 'Tokio', 'Japón');
INSERT INTO Tienda VALUES (10002, 'Tienda B', 'Avenida Central 456', 'Shanghái', 'China');
INSERT INTO Tienda VALUES (10003, 'Tienda C', 'Calle Secundaria 789', 'Delhi', 'India');
INSERT INTO Tienda VALUES (10004, 'Tienda D', 'Avenida Principal 789', 'Seúl', 'Corea del Sur');
INSERT INTO Tienda VALUES (10005, 'Tienda E', 'Calle Central 456', 'Singapur', 'Singapur');
INSERT INTO Tienda VALUES (10006, 'Tienda F', 'Avenida Principal 123', 'Tokio', 'Japón');
INSERT INTO Tienda VALUES (10007, 'Tienda G', 'Avenida Central 456', 'Shanghái', 'China');
INSERT INTO Tienda VALUES (10008, 'Tienda H', 'Calle Secundaria 789', 'Delhi', 'India');
INSERT INTO Tienda VALUES (10009, 'Tienda I', 'Avenida Principal 789', 'Seúl', 'Corea del Sur');
INSERT INTO Tienda VALUES (10010, 'Tienda J', 'Calle Central 456', 'Singapur', 'Singapur');
INSERT INTO Tienda VALUES (10011, 'Tienda K', 'Avenida Principal 123', 'Tokio', 'Japón');
INSERT INTO Tienda VALUES (10012, 'Tienda G', 'Avenida Central 456', 'Shanghái', 'China');
INSERT INTO Tienda VALUES (10013, 'Tienda H', 'Calle Secundaria 789', 'Delhi', 'India');
INSERT INTO Tienda VALUES (10014, 'Tienda I', 'Avenida Principal 789', 'Seúl', 'Corea del Sur');
INSERT INTO Tienda VALUES (10015, 'Tienda J', 'Calle Central 456', 'Singapur', 'Singapur');
INSERT INTO Tienda VALUES (10016, 'Tienda F', 'Avenida Principal 123', 'Tokio', 'Japón');
INSERT INTO Tienda VALUES (10017, 'Tienda K', 'Avenida Central 456', 'Shanghái', 'China');
INSERT INTO Tienda VALUES (10018, 'Tienda H', 'Calle Secundaria 789', 'Delhi', 'India');
INSERT INTO Tienda VALUES (10019, 'Tienda I', 'Avenida Principal 789', 'Seúl', 'Corea del Sur');
INSERT INTO Tienda VALUES (10020, 'Tienda J', 'Calle Central 456', 'Singapur', 'Singapur');

-- Insertar registros en la tabla Productos
INSERT INTO Productos VALUES ('P1001', 'Teléfono móvil', 'Samsung', 500, 'Electrónica', 50, 10001);
INSERT INTO Productos VALUES ('P1002', 'Anillo de plata', 'Tiffany & Co.', 250, 'Joyas', 30, 10002);
INSERT INTO Productos VALUES ('P1003', 'Zapatillas deportivas', 'Nike', 120, 'Calzado', 20, 10003);
INSERT INTO Productos VALUES ('P1004', 'Portátil', 'HP', 800, 'Informática', 15, 10004);
INSERT INTO Productos VALUES ('P1005', 'Reloj de pulsera', 'Casio', 100, 'Relojes', 10, 10005);
INSERT INTO Productos VALUES ('P1006', 'Teléfono inteligente', 'Samsung', 600, 'Electrónica', 40, 10006);
INSERT INTO Productos VALUES ('P1007', 'Anillo de diamantes', 'Tiffany & Co.', 350, 'Joyas', 25, 10007);
INSERT INTO Productos VALUES ('P1008', 'Zapatillas deportivas', 'Nike', 120, 'Calzado', 20, 10008);
INSERT INTO Productos VALUES ('P1009', 'Ordenador portátil', 'HP', 1000, 'Informática', 10, 10009);
INSERT INTO Productos VALUES ('P1010', 'Reloj de pulsera', 'Casio', 80, 'Relojes', 15, 10010);
INSERT INTO Productos VALUES ('P1011', 'Altavoz Bluetooth', 'JBL', 150, 'Electrónica', 20, 10011);
INSERT INTO Productos VALUES ('P1012', 'Collar de diamantes', 'Tiffany & Co.', 5000, 'Joyas', 5, 10012);
INSERT INTO Productos VALUES ('P1013', 'Zapatillas running', 'Nike', 130, 'Calzado', 15, 10013);
INSERT INTO Productos VALUES ('P1014', 'Ordenador de sobremesa', 'HP', 1200, 'Informática', 10, 10014);
INSERT INTO Productos VALUES ('P1015', 'Reloj de lujo', 'Patek Philippe', 10000, 'Relojes', 2, 10015);
INSERT INTO Productos VAlUES ('P1016', 'Cámara réflex', 'Nikon', 800, 'Electrónica', 12, 10016);
INSERT INTO Productos VALUES ('P1017', 'Pendientes de oro', 'Bvlgari', 400, 'Joyas', 8, 10017);
INSERT INTO Productos VALUES ('P1018', 'Botas de fútbol', 'Nike', 90, 'Calzado', 20, 10018);
INSERT INTO Productos VALUES ('P1019', 'Impresora láser', 'HP', 200, 'Informática', 7, 10019);
INSERT INTO Productos VALUES ('P1020', 'Reloj deportivo', 'Garmin', 300, 'Relojes', 5, 10020);

-- Insertar registros en la tabla Valoración
INSERT INTO Valoración VALUES ('P1001', 1001, '15/JANUARY/2023', 4);
INSERT INTO Valoración VALUES ('P1002', 1001, '20/FEBRUARY/2023', 3);
INSERT INTO Valoración VALUES ('P1001', 1002, '10/MARCH/2023', 5);
INSERT INTO Valoración VALUES ('P1003', 1003, '05/APRIL/2023', 4);
INSERT INTO Valoración VALUES ('P1002', 1004, '18/MAY/2023', 2);
INSERT INTO Valoración VALUES ('P1006', 1014, '25/JANUARY/2023', 4);
INSERT INTO Valoración VALUES ('P1007', 1015, '05/FEBRUARY/2023', 3);
INSERT INTO Valoración VALUES ('P1008', 1016, '15/MARCH/2023', 5);
INSERT INTO Valoración VALUES ('P1009', 1017, '20/APRIL/2023', 4);
INSERT INTO Valoración VALUES ('P1010', 1018, '10/MAY/2023', 2);
INSERT INTO Valoración VALUES ('P1006', 1019, '25/JANUARY/2023', 5);
INSERT INTO Valoración VALUES ('P1007', 1020, '05/FEBRUARY/2023', 4);
INSERT INTO Valoración VALUES ('P1008', 1006, '15/MARCH/2023', 3);
INSERT INTO Valoración VALUES ('P1009', 1007, '20/APRIL/2023', 2);
INSERT INTO Valoración VALUES ('P1010', 1008, '10/MAY/2023', 4);
INSERT INTO Valoración VALUES ('P1011', 1009, '25/JANUARY/2023', 3);
INSERT INTO Valoración VALUES ('P1012', 1010, '05/FEBRUARY/2023', 4);
INSERT INTO Valoración VALUES ('P1011', 1011, '15/MARCH/2023', 2);
INSERT INTO Valoración VALUES ('P1012', 1012, '20/APRIL/2023', 3);
INSERT INTO Valoración VALUES ('P1013', 1013, '10/MAY/2023', 5);

--Subconsultas
--1. Mostrar las tiendas y sus productos que hayan sido puntuados por encima del promedio de los puntajes de todos los productos
select Nombre_tienda as "Tienda",Nombre_producto as "Producto",Nombres as "Nombre del cliente",Puntuacion 
from Tienda inner join Productos on Productos.IDTienda=Tienda.ID_Tienda inner join Valoración on Valoración.IDProducto=Productos.ID_Producto inner join Clientes on Valoración.IDClientes=Clientes.ID_Cliente inner join Pedidos on Pedidos.IDCliente=Clientes.ID_Cliente
where ID_Producto in (select IDProducto from Valoración where Puntuacion>(select AVG(Puntuacion) from Valoración)) 
ORDER BY Tienda.Nombre_tienda ASC;

--2. Mostrar el id del pedido que tengan productos de la categoria electronica junto con su nombre de la tienda
select ID_Pedido as "ID del pedido",Nombre_Tienda as "Tienda",Nombre_producto as "Producto",Categoria as "Categoria"
from Tienda inner join Productos on Productos.IDTienda=Tienda.ID_Tienda inner join Valoración on Valoración.IDProducto=Productos.ID_Producto inner join Clientes on Valoración.IDClientes=Clientes.ID_Cliente inner join Pedidos on Pedidos.IDCliente=Clientes.ID_Cliente
where ID_Tienda in (select IDTienda from Productos where Categoria='Electrónica');

--3. Mostrar los nombres y apellidos de los clientes cuyos pedidos esten completados y hayan dejado una valoracion de 5 estrellas en la tienda A
select Nombres as "Nombre del cliente",Apellidos as "Apellidos del cliente",Estado_pedido as "Estado del pedido",Puntuacion as "Puntaje",Nombre_Tienda as "Nombre de la tienda"
from Tienda inner join Productos on Productos.IDTienda=Tienda.ID_Tienda inner join Valoración on Valoración.IDProducto=Productos.ID_Producto inner join Clientes on Valoración.IDClientes=Clientes.ID_Cliente inner join Pedidos on Pedidos.IDCliente=Clientes.ID_Cliente
where ID_Cliente in (select IDCliente from Pedidos where Estado_pedido='Entregado') and Nombre_Tienda='Tienda A' and Puntuacion='5';

--4. Mostrar las marcas cuyos productos tengan un precio mayor al promedio del precio de todos los productos vendidos por la tienda G, ademas, mostrar que cliente compro cada proucto
SELECT Productos.Marca_producto AS "Marca",Productos.Nombre_producto AS "Producto",Productos.Precio AS "Precio",Tienda.Nombre_tienda AS "Tienda",ID_Cliente as "ID del cliente",Clientes.Nombres AS "Cliente que lo compró"
FROM Tienda INNER JOIN Productos ON Productos.IDTienda = Tienda.ID_Tienda INNER JOIN Valoración ON Valoración.IDProducto = Productos.ID_Producto INNER JOIN Clientes ON Valoración.IDClientes = Clientes.ID_Cliente INNER JOIN Pedidos ON Pedidos.IDCliente = Clientes.ID_Cliente
WHERE Tienda.ID_Tienda IN (SELECT ID_Tienda FROM Tienda WHERE Nombre_tienda = 'Tienda G')
AND Productos.Precio > (SELECT AVG(Precio) FROM Productos);
    
--Bloques PL/SQL
--%TYPE
--1. Mostrar el nombre, apellido y el país de origen del cliente cuyo id es 1001
DECLARE
CURSOR C IS SELECT ID_Cliente,Nombres,Apellidos,Pais_cliente from Clientes where ID_Cliente='1001';
IDC Clientes.ID_Cliente%TYPE;
NC Clientes.Nombres%TYPE;
AC Clientes.Apellidos%TYPE;
PC Clientes.Pais_cliente%TYPE;
BEGIN
    OPEN C;
FETCH C INTO IDC,NC,AC,PC;
DBMS_OUTPUT.PUT_LINE('ID del cliente: '||IDC);
DBMS_OUTPUT.PUT_LINE('Nombre del cliente: '||NC);
DBMS_OUTPUT.PUT_LINE('Apellido del cliente: '||AC);
DBMS_OUTPUT.PUT_LINE('País de origen del cliente: '||PC);
EXCEPTION
    WHEN No_Data_Found THEN
    DBMS_OUTPUT.PUT_LINE('No se encontraron datos');
    WHEN Too_Many_Rows THEN
    DBMS_OUTPUT.PUT_LINE('El selector devuelve demasiadas filas');
    WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Error no especificado');
END;
--%ROWTYPE
--2. Este bloque te permitirá recorrer los registros de la tabla Tienda y mostrar la información de la tienda A.
DECLARE
  CURSOR C IS SELECT * FROM Tienda WHERE Nombre_tienda = 'Tienda A';
  R Tienda%ROWTYPE;
BEGIN
  OPEN C;
    FETCH C INTO R;
    DBMS_OUTPUT.PUT_LINE('ID Tienda: ' || R.ID_Tienda);
    DBMS_OUTPUT.PUT_LINE('Nombre: ' || R.Nombre_tienda);
    DBMS_OUTPUT.PUT_LINE('Dirección: ' || R.Dirección_tienda);
    DBMS_OUTPUT.PUT_LINE('Ciudad: ' || R.Ciudad_tienda);
    DBMS_OUTPUT.PUT_LINE('País: ' || R.Pais_Tienda);
  CLOSE C;
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('No se encontraron datos');
  WHEN TOO_MANY_ROWS THEN
    DBMS_OUTPUT.PUT_LINE('El selector devuelve demasiadas filas');
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Error no especificado');
END;
--Bloques PL/SQL con consultas multitabla (LOOP)
--1. Monstrar el nombre y apellido del cliente, el nombre del producto y su precio, el id del pedido, el total del pedido y el nombre de la tienda que vende el producto
DECLARE
  CURSOR C IS SELECT Nombres as NOM,Apellidos as APL,Nombre_Producto,Precio,ID_Pedido as IDP,Total_pedido as Total,Nombre_Tienda as Tienda
    from Tienda inner join Productos on Productos.IDTienda=Tienda.ID_Tienda inner join Valoración on Valoración.IDProducto=Productos.ID_Producto inner join Clientes on Valoración.IDClientes=Clientes.ID_Cliente inner join Pedidos on Pedidos.IDCliente=Clientes.ID_Cliente
    ORDER BY Nombre_Tienda;
  R C%ROWTYPE;
BEGIN
  OPEN C;
LOOP
    FETCH C INTO R;
EXIT WHEN C%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE('Nombre: ' || R.NOM);
    DBMS_OUTPUT.PUT_LINE('Apellidos: ' || R.APL);
    DBMS_OUTPUT.PUT_LINE('Producto: ' || R.Nombre_Producto);
	DBMS_OUTPUT.PUT_LINE('Precio: ' || R.Precio);
	DBMS_OUTPUT.PUT_LINE('ID del pedido: ' || R.IDP);
	DBMS_OUTPUT.PUT_LINE('Total del pedido: ' || R.Total);
	DBMS_OUTPUT.PUT_LINE('Nombre de la tienda: ' || R.Tienda||CHR(10));
END LOOP;
  CLOSE C;
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('No se encontraron datos');
  WHEN TOO_MANY_ROWS THEN
    DBMS_OUTPUT.PUT_LINE('El selector devuelve demasiadas filas');
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Error no especificado');
END;

--2. Mostrar el nombre y apellido del cliente, así como los datos del producto que compró (nombre, categoría y marca) y la puntuación que dejó para el producto, junto con una descripción de esta.
DECLARE
  CURSOR C IS
    SELECT Clientes.Nombres AS NOM, Clientes.Apellidos AS APL, Clientes.Pais_Cliente, Productos.Nombre_Producto, Productos.Categoria, Productos.Marca_Producto, Valoración.Puntuacion
    FROM Clientes
    INNER JOIN Valoración ON Valoración.IDClientes = Clientes.ID_Cliente
    INNER JOIN Productos ON Valoración.IDProducto = Productos.ID_Producto
    ORDER BY Puntuacion;
  R C%ROWTYPE;
BEGIN
  OPEN C;
  LOOP
    FETCH C INTO R;
    EXIT WHEN C%NOTFOUND;

    DBMS_OUTPUT.PUT_LINE('Nombre: ' || R.NOM);
    DBMS_OUTPUT.PUT_LINE('Apellidos: ' || R.APL);
    DBMS_OUTPUT.PUT_LINE('País: ' || R.Pais_Cliente);
    DBMS_OUTPUT.PUT_LINE('Producto: ' || R.Nombre_Producto);
    DBMS_OUTPUT.PUT_LINE('Categoría: ' || R.Categoria);
    DBMS_OUTPUT.PUT_LINE('Marca: ' || R.Marca_Producto);
    DBMS_OUTPUT.PUT_LINE('Puntuación: ' || R.Puntuacion);

    CASE R.Puntuacion
      WHEN 1 THEN
        DBMS_OUTPUT.PUT_LINE('Puntuación (descripción): La puntuación que dejó el cliente es pésima.');
      WHEN 2 THEN
        DBMS_OUTPUT.PUT_LINE('Puntuación (descripción): La puntuación que dejó el cliente es baja.');
      WHEN 3 THEN
        DBMS_OUTPUT.PUT_LINE('Puntuación (descripción): La puntuación que dejó el cliente es regular.');
      WHEN 4 THEN
        DBMS_OUTPUT.PUT_LINE('Puntuación (descripción): La puntuación que dejó el cliente es buena.');
      WHEN 5 THEN
        DBMS_OUTPUT.PUT_LINE('Puntuación (descripción): La puntuación que dejó el cliente es excelente.');
      ELSE
        DBMS_OUTPUT.PUT_LINE('Puntuación (descripción): La puntuación que dejó el cliente es desconocida.');
    END CASE;
    DBMS_OUTPUT.PUT_LINE(CHR(10));
  END LOOP;
  CLOSE C;
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('No se encontraron datos');
  WHEN TOO_MANY_ROWS THEN
    DBMS_OUTPUT.PUT_LINE('El selector devuelve demasiadas filas');
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Error no especificado');
END;
--3. Muestra la información de cada producto (nombre del producto y su nivel de stock) y basándose en el nivel de stock, se muestra una recomendación correspondiente.
DECLARE
  CURSOR C IS
    SELECT Nombre_tienda,Nombre_Producto,Stock
    FROM Productos INNER JOIN Tienda ON Productos.IDTienda=Tienda.ID_Tienda
	ORDER BY Nombre_tienda;
  R C%ROWTYPE;
BEGIN
  OPEN C;
  LOOP
    FETCH C INTO R;
    EXIT WHEN C%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE('Tienda: ' || R.Nombre_tienda);
    DBMS_OUTPUT.PUT_LINE('Producto: ' || R.Nombre_Producto);
    DBMS_OUTPUT.PUT_LINE('Stock: ' || R.Stock);
    IF R.Stock = 0 THEN
      DBMS_OUTPUT.PUT_LINE('Recomendación: Restablecer producto');
    ELSIF R.Stock < 10 THEN
      DBMS_OUTPUT.PUT_LINE('Recomendación: Comprar más unidades');
    ELSE
      DBMS_OUTPUT.PUT_LINE('Recomendación: Suficiente stock disponible');
    END IF;
    DBMS_OUTPUT.PUT_LINE(CHR(10));
  END LOOP;
  CLOSE C;
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('No se encontraron datos');
  WHEN TOO_MANY_ROWS THEN
    DBMS_OUTPUT.PUT_LINE('El selector devuelve demasiadas filas');
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Error no especificado');
END;

--Bloques PL/SQL con consultas multitabla (FOR)
--1. Monstrar el nombre y apellido del cliente, el nombre del producto y su precio, el id del pedido, el total del pedido y el nombre de la tienda que vende el producto
DECLARE
  CURSOR C IS
    SELECT Clientes.Nombres AS NOM, Clientes.Apellidos AS APL, Productos.Nombre_Producto, Productos.Precio, Pedidos.ID_Pedido AS IDP, Pedidos.Total_pedido AS Total, Tienda.Nombre_Tienda AS Tienda
    FROM Tienda
    INNER JOIN Productos ON Productos.IDTienda = Tienda.ID_Tienda
    INNER JOIN Valoración ON Valoración.IDProducto = Productos.ID_Producto
    INNER JOIN Clientes ON Valoración.IDClientes = Clientes.ID_Cliente
    INNER JOIN Pedidos ON Pedidos.IDCliente = Clientes.ID_Cliente
    ORDER BY Tienda.Nombre_Tienda;
BEGIN
  FOR R IN C LOOP
    DBMS_OUTPUT.PUT_LINE('Nombre: ' || R.NOM);
    DBMS_OUTPUT.PUT_LINE('Apellidos: ' || R.APL);
    DBMS_OUTPUT.PUT_LINE('Producto: ' || R.Nombre_Producto);
    DBMS_OUTPUT.PUT_LINE('Precio: ' || R.Precio);
    DBMS_OUTPUT.PUT_LINE('ID del pedido: ' || R.IDP);
    DBMS_OUTPUT.PUT_LINE('Total del pedido: ' || R.Total);
    DBMS_OUTPUT.PUT_LINE('Nombre de la tienda: ' || R.Tienda || CHR(10));
  END LOOP;
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('No se encontraron datos');
  WHEN TOO_MANY_ROWS THEN
    DBMS_OUTPUT.PUT_LINE('El selector devuelve demasiadas filas');
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Error no especificado');
END;

--2. Mostrar el nombre y apellido del cliente, así como los datos del producto que compró (nombre, categoría y marca) y la puntuación que dejó para el producto, junto con una descripción de esta.
DECLARE
  CURSOR C IS
    SELECT Clientes.Nombres AS NOM, Clientes.Apellidos AS APL, Clientes.Pais_Cliente, Productos.Nombre_Producto, Productos.Categoria, Productos.Marca_Producto, Valoración.Puntuacion
    FROM Clientes
    INNER JOIN Valoración ON Valoración.IDClientes = Clientes.ID_Cliente
    INNER JOIN Productos ON Valoración.IDProducto = Productos.ID_Producto
    ORDER BY Puntuacion;
BEGIN
  FOR R IN C LOOP
    DBMS_OUTPUT.PUT_LINE('Nombre: ' || R.NOM);
    DBMS_OUTPUT.PUT_LINE('Apellidos: ' || R.APL);
    DBMS_OUTPUT.PUT_LINE('País: ' || R.Pais_Cliente);
    DBMS_OUTPUT.PUT_LINE('Producto: ' || R.Nombre_Producto);
    DBMS_OUTPUT.PUT_LINE('Categoría: ' || R.Categoria);
    DBMS_OUTPUT.PUT_LINE('Marca: ' || R.Marca_Producto);
    DBMS_OUTPUT.PUT_LINE('Puntuación: ' || R.Puntuacion);

    CASE R.Puntuacion
      WHEN 1 THEN
        DBMS_OUTPUT.PUT_LINE('Puntuación (descripción): La puntuación que dejó el cliente es pésima.');
      WHEN 2 THEN
        DBMS_OUTPUT.PUT_LINE('Puntuación (descripción): La puntuación que dejó el cliente es baja.');
      WHEN 3 THEN
        DBMS_OUTPUT.PUT_LINE('Puntuación (descripción): La puntuación que dejó el cliente es regular.');
      WHEN 4 THEN
        DBMS_OUTPUT.PUT_LINE('Puntuación (descripción): La puntuación que dejó el cliente es buena.');
      WHEN 5 THEN
        DBMS_OUTPUT.PUT_LINE('Puntuación (descripción): La puntuación que dejó el cliente es excelente.');
      ELSE
        DBMS_OUTPUT.PUT_LINE('Puntuación (descripción): La puntuación que dejó el cliente es desconocida.');
    END CASE;
    DBMS_OUTPUT.PUT_LINE(CHR(10));
  END LOOP;
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('No se encontraron datos');
  WHEN TOO_MANY_ROWS THEN
    DBMS_OUTPUT.PUT_LINE('El selector devuelve demasiadas filas');
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Error no especificado');
END;

--3. Muestra la información de cada producto (nombre del producto y su nivel de stock) y basándose en el nivel de stock, se muestra una recomendación correspondiente.
DECLARE
  CURSOR C IS
    SELECT Nombre_tienda,Nombre_Producto,Stock
    FROM Productos INNER JOIN Tienda ON Productos.IDTienda=Tienda.ID_Tienda
	ORDER BY Nombre_tienda;
	R C%ROWTYPE;
BEGIN
  FOR R IN C LOOP
    DBMS_OUTPUT.PUT_LINE('Tienda: ' || R.Nombre_tienda);
    DBMS_OUTPUT.PUT_LINE('Producto: ' || R.Nombre_Producto);
    DBMS_OUTPUT.PUT_LINE('Stock: ' || R.Stock);

    IF R.Stock = 0 THEN
      DBMS_OUTPUT.PUT_LINE('Recomendación: Restablecer producto');
    ELSIF R.Stock < 10 THEN
      DBMS_OUTPUT.PUT_LINE('Recomendación: Comprar más unidades');
    ELSE
      DBMS_OUTPUT.PUT_LINE('Recomendación: Suficiente stock disponible');
    END IF;

    DBMS_OUTPUT.PUT_LINE(CHR(10));
  END LOOP;
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('No se encontraron datos');
  WHEN TOO_MANY_ROWS THEN
    DBMS_OUTPUT.PUT_LINE('El selector devuelve demasiadas filas');
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Error no especificado');
END;

--Procedimientos Almacenados
-- Para obtener el nombre de un cliente mediante su ID
CREATE OR REPLACE PROCEDURE PA1(
  id_cliente IN NUMBER) 
IS nombre_cliente Clientes.Nombres%TYPE;
BEGIN
  SELECT Nombres INTO nombre_cliente
  FROM Clientes
  WHERE ID_Cliente = id_cliente AND ROWNUM = 1;-- Se pone la "ROWNUM" para limitar el resultado a una sola fila.

  DBMS_OUTPUT.PUT_LINE('El nombre del cliente con ID ' || id_cliente || ' es: ' || nombre_cliente);
END;
-- Ejecutar el procedimiento para obtener el nombre del cliente
DECLARE
  id_cliente NUMBER := 1007; -- ID del cliente a obtener su nombre
BEGIN
  PA1(id_cliente);
END;

--Procedimiento de salida para obtener la cantidad total de clientes
CREATE OR REPLACE PROCEDURE PA2(
  cantidad OUT NUMBER) IS
BEGIN
  SELECT COUNT(*) INTO cantidad
  FROM Clientes;
  DBMS_OUTPUT.PUT_LINE('La cantidad de clientes es: ' || cantidad);
END;
-- Ejecutar el procedimiento obtener_cantidad_clientes
DECLARE
  cantidad_clientes NUMBER; -- Variable para almacenar la cantidad de clientes
BEGIN
  PA2(cantidad_clientes);
END;

-- Procedimiento para actualizar el precio total de los pedidos según estado
create or replace procedure P3(estado in Pedidos.Estado_pedido%type, aumento in number default 10)
is	
begin	update Pedidos set Total_pedido=Total_pedido+(aumento*Total_pedido)/100 where Estado_pedido=estado; 
end;
--Ejecutar el procedimiento
execute P3('Pendiente',30);
select * from Pedidos;
execute P3('Cancelado');


--Funciones almacenadas con parámetros de entrada
--Para saber  la cantidad de tiendas en un país específico.
CREATE OR REPLACE FUNCTION FA1 (
  pais IN Tienda.Pais_Tienda%TYPE
) RETURN NUMBER IS
  cantidad NUMBER;
BEGIN
  SELECT COUNT(*) INTO cantidad
  FROM Tienda
  WHERE Pais_Tienda = pais;
  RETURN cantidad;-- Para devolver la cantidad de tiendas
END;
--Para ejecutar y mostrar la cantidad de tiendas que hay en "Corea del Sur"
DECLARE
  cantidad_tiendas NUMBER;
BEGIN
  cantidad_tiendas := FA1('Corea del Sur');
  DBMS_OUTPUT.PUT_LINE('La cantidad de tiendas en Corea del Sur es: ' || cantidad_tiendas);
END;

-- Para Obtener el precio total de los pedidos realizados por un cliente:
CREATE OR REPLACE FUNCTION FA2(
  id_cliente IN NUMBER
) RETURN NUMBER IS
  precio_total NUMBER;
BEGIN
  SELECT SUM(Total_pedido) INTO precio_total
  FROM Pedidos
  WHERE IDCliente = id_cliente;
  RETURN precio_total;-- Para devolver el precio_total
END;
-- Para ejecutar y mostrar el precio total de los pedidos de un cliente
DECLARE
  precio_total NUMBER;
BEGIN
  precio_total := FA2(1002);
  DBMS_OUTPUT.PUT_LINE('El precio total de los pedidos del cliente es: ' || precio_total);
END;

--TRIGGERS 
--1. Trigger para actualizar la puntuación de los clientes en la valoración de los productos
CREATE OR REPLACE TRIGGER T1
BEFORE UPDATE ON Valoración FOR EACH ROW
DECLARE
BEGIN
    DBMS_OUTPUT.PUT_LINE('REGISTRO ANTES DE LOS CAMBIOS');
    DBMS_OUTPUT.PUT_LINE('Antiguo ID del producto: '||:OLD.IDProducto);
    DBMS_OUTPUT.PUT_LINE('Antiguo ID del cliente: '||:OLD.IDClientes);
    DBMS_OUTPUT.PUT_LINE('Antigua fecha de valoración: '||:OLD.Fecha_Valoracion);
    DBMS_OUTPUT.PUT_LINE('Antigua puntuación: '||:OLD.Puntuacion||CHR(10));

    DBMS_OUTPUT.PUT_LINE('REGISTRO DESPUÉS DE LOS CAMBIOS');
    DBMS_OUTPUT.PUT_LINE('Antiguo ID del producto: '||:NEW.IDProducto);
    DBMS_OUTPUT.PUT_LINE('Antiguo ID del cliente: '||:NEW.IDClientes);
    DBMS_OUTPUT.PUT_LINE('Antigua fecha de valoración: '||:NEW.Fecha_Valoracion);
    DBMS_OUTPUT.PUT_LINE('Antigua puntuación: '||:NEW.Puntuacion||CHR(10));
END;

UPDATE Valoración SET PUNTUACION='4' WHERE IDClientes='1002';

--2. Despues de insertar un nuevo cliente en la tabla "Clientes" se mostrará el nombre de todos los clientes, junto con sus apellidos y paises. Y segun el pais se recomendara un servicio de correos
CREATE OR REPLACE TRIGGER T2
AFTER INSERT ON Clientes
DECLARE
  CURSOR C IS
    SELECT *
    FROM Clientes
    ORDER BY Nombres;
  R C%ROWTYPE;
  Servicio_sugerido VARCHAR(100);
BEGIN
  OPEN C;
  LOOP
    FETCH C INTO R;
    EXIT WHEN C%NOTFOUND;
    
    CASE R.Pais_cliente
      WHEN 'España' THEN Servicio_sugerido := 'Servicio de correspondencia sugerido: Correos';
      WHEN 'México' THEN Servicio_sugerido := 'Servicio de correspondencia sugerido: Correos de México';
      WHEN 'Argentina' THEN Servicio_sugerido := 'Servicio de correspondencia sugerido: CorreoArgentino';
      WHEN 'Chile' THEN Servicio_sugerido := 'Servicio de correspondencia sugerido: CorreosChile';
      WHEN 'Perú' THEN Servicio_sugerido := 'Servicio de correspondencia sugerido: Serpost';
      WHEN 'China' THEN Servicio_sugerido := 'Servicio de correspondencia sugerido: China Post';
      WHEN 'India' THEN Servicio_sugerido := 'Servicio de correspondencia sugerido: India Post';
      WHEN 'Japón' THEN Servicio_sugerido := 'Servicio de correspondencia sugerido: Japan Post';
      WHEN 'Polonia' THEN Servicio_sugerido := 'Servicio de correspondencia sugerido: Poczta Polska';
      WHEN 'Brasil' THEN Servicio_sugerido := 'Servicio de correspondencia sugerido: Correios';
      WHEN 'Corea del Sur' THEN Servicio_sugerido := 'Servicio de correspondencia sugerido: Korea Post';
      WHEN 'Reino Unido' THEN Servicio_sugerido := 'Servicio de correspondencia sugerido: Royal Mail';
      ELSE Servicio_sugerido := NULL;
    END CASE;

    DBMS_OUTPUT.PUT_LINE('Nombre del cliente: ' || R.Nombres);
    DBMS_OUTPUT.PUT_LINE('Apellido del cliente: ' || R.Apellidos);
    DBMS_OUTPUT.PUT_LINE('País de destino: ' || R.Pais_cliente);
    IF Servicio_sugerido IS NOT NULL THEN
      DBMS_OUTPUT.PUT_LINE(Servicio_sugerido||CHR(10));
    END IF;
  END LOOP;
  CLOSE C;
END;

--Se ejecuta el trigger
INSERT INTO Clientes VALUES (1021, 'Gabriela', 'González', 'Argentina', 'Calle Principal 456', 'gabriela@gmail.com', 912345616);
--En caso de error:
DELETE FROM Clientes WHERE ID_Cliente = 1021;

--3. Trigger para obtener el promedio de todas las valoraciones
CREATE OR REPLACE TRIGGER T3
AFTER INSERT ON Valoración
DECLARE
   total_puntuacion NUMBER;
   total_valoraciones NUMBER;
   promedio_puntuacion NUMBER;
BEGIN
   SELECT SUM(Puntuacion), COUNT(*) INTO total_puntuacion, total_valoraciones
   FROM Valoración;
   
   IF total_valoraciones > 0 THEN
      promedio_puntuacion := ROUND(total_puntuacion / total_valoraciones, 2);
   ELSE
      promedio_puntuacion := 0;
   END IF;
   
   DBMS_OUTPUT.PUT_LINE('El promedio de todas las valoraciones es: ' || promedio_puntuacion);
END;

--Inserta estos registros primero:
-- Insertar en la tabla Pedidos
INSERT INTO Pedidos VALUES (100021, '10/JUNE/2023', 180, 'En proceso', 1002);

-- Insertar en la tabla Tienda
INSERT INTO Tienda VALUES (10021, 'Tienda L', 'Calle Secundaria 123', 'Buenos Aires', 'Argentina');

-- Insertar en la tabla Productos
INSERT INTO Productos VALUES ('P1021', 'Televisor LED', 'LG', 700, 'Electrónica', 35, 10021);


-- Insertar en la tabla Valoración
INSERT INTO Valoración VALUES ('P1021', 1005, '12/JUNE/2023', 4);

--En caso de que ocurra un error:
DELETE FROM Valoración
WHERE IDProducto = 'P1021' AND IDClientes = 1005;
