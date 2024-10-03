CREATE TABLE proveedores (
id INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR(50) NOT NULL,
correo VARCHAR(100) NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO proveedores (nombre, correo)
VALUES
('Leandro Azcurra', 'LeandroAzcurra@gmail.com'),
('Luciana Gareca','LucianaGareca@gmail.com'),
('Eren Azcurra','ErenAzcurra@gmail.com'),
('Luli','Luli@gmail.com'),
('Narda','Narda@gmail.com');



