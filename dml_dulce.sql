-- Insertar un recibo
INSERT INTO recibo (ruc, telefono, precio)
VALUES ('12345678901', 987654321, 150.00);

-- Insertar una entrega (usando id_rec del recibo anterior — es 1)
INSERT INTO entrega (fecha, hora, orden, id_reciboi)
VALUES ('2025-05-17', '15:00:00', 1, 1);

-- Insertar un pastel (usando id_ent de la entrega anterior — es 1)
INSERT INTO pastel (colores, pisos, kilos, id_ent)
VALUES ('Azul y Blanco', '3', '2.5', 1);

-- Insertar un café (usando id_pastel del pastel anterior — es 1)
INSERT INTO cafe (Espresso, Latte, Cappuccino, Americano, id_pastel)
VALUES ('Sí', 'No', 'Sí', 'No', 1);

-- Insertar un cliente (usando id_cafe del café anterior — es 1)
INSERT INTO cliente (nombre, apellido, telefono, id_cafe)
VALUES ('Carlos', 'Pérez', '987654321', 1);

-- Insertar un empleado (usando id_cliente del cliente anterior — es 1)
INSERT INTO empleado (nombre, apellido, telefono, id_cliente)
VALUES ('Ana', 'Gómez', '912345678', 1);