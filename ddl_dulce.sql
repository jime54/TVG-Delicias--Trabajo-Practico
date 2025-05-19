-- Tabla recibo
CREATE TABLE recibo (
    id_rec SERIAL PRIMARY KEY,
    ruc VARCHAR,
    telefono INTEGER,
    precio DECIMAL
);

-- Tabla entrega
CREATE TABLE entrega (
    id_ent SERIAL PRIMARY KEY,
    fecha VARCHAR,
    hora TIME,
    orden DECIMAL,
    id_reciboi INTEGER NOT NULL,
    CONSTRAINT fk_entrega_id_reciboi FOREIGN KEY (id_reciboi) REFERENCES recibo(id_rec)
        ON DELETE RESTRICT ON UPDATE CASCADE
);

-- Tabla pastel
CREATE TABLE pastel (
    id_pastel SERIAL PRIMARY KEY,
    colores VARCHAR,
    pisos VARCHAR,
    kilos VARCHAR,
    id_ent INTEGER NOT NULL,
    CONSTRAINT fk_pastel_id_ent FOREIGN KEY (id_ent) REFERENCES entrega(id_ent)
        ON DELETE RESTRICT ON UPDATE CASCADE
);

-- Tabla cafe
CREATE TABLE cafe (
    id_cafe SERIAL PRIMARY KEY,
    Espresso VARCHAR,
    Latte VARCHAR,
    Cappuccino VARCHAR,
    Americano VARCHAR,
    id_pastel INTEGER NOT NULL,
    CONSTRAINT fk_cafe_id_pastel FOREIGN KEY (id_pastel) REFERENCES pastel(id_pastel)
        ON DELETE RESTRICT ON UPDATE CASCADE
);

-- Tabla cliente
CREATE TABLE cliente (
    id_cliente SERIAL PRIMARY KEY,
    nombre VARCHAR,
    apellido VARCHAR,
    telefono VARCHAR,
    id_cafe INTEGER NOT NULL,
    CONSTRAINT fk_cliente_id_cafe FOREIGN KEY (id_cafe) REFERENCES cafe(id_cafe)
        ON DELETE RESTRICT ON UPDATE CASCADE
);

-- Tabla empleado (corrigiendo doble id_cliente)
CREATE TABLE empleado (
    id_emp SERIAL PRIMARY KEY,
    nombre VARCHAR,
    apellido VARCHAR,
    telefono VARCHAR,
    id_cliente INTEGER NOT NULL,
    CONSTRAINT fk_empleado_id_cliente FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
        ON DELETE NO ACTION ON UPDATE NO ACTION
);