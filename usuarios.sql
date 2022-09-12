--Si la Tabla ya existe 
DROP TABLE IF EXISTS usuarios;
--Tabla Usuarios
CREATE TABLE usuarios (
	u_id SERIAL,
	u_nombre VARCHAR(100) NOT NULL,
	u_email VARCHAR(100) NOT NULL,
	u_contrasena VARCHAR(100) NOT NULL,
	u_rol VARCHAR(10) DEFAULT 'usuario',
	PRIMARY KEY (u_id)
);
--Seleccionar Tabla
SELECT * FROM usuarios;


--Proceso Alamcenado para Agregar Usuario
DROP PROCEDURE IF EXISTS sp_agregarUsuario; 

CREATE OR REPLACE PROCEDURE sp_agregarUsuario (
	_u_nombre VARCHAR(100),
	_u_email VARCHAR(100),
	_u_contrasena VARCHAR(100),
	_u_rol VARCHAR(10) DEFAULT 'usuario'
)
lANGUAGE plpgsql
AS $$
BEGIN
	INSERT INTO usuarios (u_nombre, u_email, u_contrasena, u_rol) 
    VALUES (_u_nombre, _u_email, _u_contrasena, _u_rol);
END $$;


--Procedimiento Almacenado Eliminar Usuario
DROP PROCEDURE IF EXISTS sp_eliminarUsuario; 

CREATE OR REPLACE PROCEDURE sp_eliminarUsuario(
	_u_id INT
)
LANGUAGE plpgsql
AS $$
BEGIN 
	DELETE FROM usuarios WHERE u_id = _u_id;
END $$;
