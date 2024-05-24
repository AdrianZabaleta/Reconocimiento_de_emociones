-- Crear la base de datos
CREATE DATABASE ParqueDeAtracciones;
USE ParqueDeAtracciones;

-- Crear la tabla principal para t_id
CREATE TABLE t_ids (
    id_fotos INT PRIMARY KEY AUTO_INCREMENT,
    t_id VARCHAR(50)
);

-- Crear la tabla emocion
CREATE TABLE emocion (
   id_fotos INT,
    emocion ENUM('angry', 'surprise', 'disgust', 'fear', 'happy', 'neutral', 'sad'),
    tiempo SMALLINT,
    FOREIGN KEY (id) REFERENCES t_ids(id)
);

-- Crear la tabla valoraciones
CREATE TABLE valoraciones (
   id_fotos INT,
    valoracion TINYINT,
    FOREIGN KEY (id) REFERENCES t_ids(id)
);

-- Crear la tabla duracion
CREATE TABLE duracion (
    id_fotos INT,
    duracion SMALLINT,
    FOREIGN KEY (id) REFERENCES t_ids(id)
);

-- Crear la tabla atracciones
CREATE TABLE atracciones (
    id_fotos INT,
    id_atraccion SMALLINT,
    comienzo_atraccion SMALLINT,
    tiempo_de_espera TINYINT,
    FOREIGN KEY (id) REFERENCES t_ids(id)
);
-- Crear la tabla id_atracciones
CREATE TABLE atracciones (
    id_atraccion SMALLINT,
    atraccion VARCHAR(20),
);
-- Crear la tabla ticket
CREATE TABLE ticket (
    id_fotos INT,
    tipo_entrada VARCHAR(50),
    coste DECIMAL(5,2),
    antelacion_de_compra SMALLINT,
    FOREIGN KEY (d) REFERENCES t_ids(id)
);