CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE "Productos" (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    nombre VARCHAR(150) NOT NULL UNIQUE,
    precio_venta NUMERIC(10,2) NOT NULL,
    stock INT NOT NULL,
    categoria VARCHAR(100) NOT NULL,
    imagen_url TEXT,
    costo NUMERIC(10,2) NOT NULL,
    codigo_producto INT NOT NULL,
    codigo_visible VARCHAR(50) NOT NULL,
    marca VARCHAR(100),
    talla VARCHAR(20),
    color VARCHAR(50),
    genero VARCHAR(50)
);
