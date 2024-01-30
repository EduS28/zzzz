CREATE DATABASE actividad_uno;
USE actividad_uno;

CREATE TABLE tb_cargos(
	id_cargo INT PRIMARY KEY AUTO_INCREMENT,
	nombre_cargo VARCHAR(255) NOT NULL
);


CREATE TABLE tb_departamentos(
    id_departamento INT AUTO_INCREMENT PRIMARY KEY,
    nombre_departamento VARCHAR(255) NOT NULL
);

CREATE TABLE tb_empleados(
	id_empleado INT PRIMARY KEY AUTO_INCREMENT,
	nombre_empleado VARCHAR(30),
	apellido_empleado VARCHAR(30),
	salario DECIMAL(10,2),
	fecha_incio DATE,	
	id_cargo INT,
	id_departamento INT	
);

ALTER TABLE tb_empleados
ADD CONSTRAINT fk_cargo_empleado
FOREIGN KEY (id_cargo)
REFERENCES tb_cargos (id_cargo); 

ALTER TABLE tb_empleados
ADD CONSTRAINT fk_departamento_empleado
FOREIGN KEY (id_departamento)
REFERENCES tb_departamentos (id_departamento); 

CREATE TABLE tb_proyectos(
	id_proyecto INT PRIMARY KEY AUTO_INCREMENT,
	nombre_proyecto VARCHAR(255)
);

CREATE TABLE tb_actividades(
	id_actividad INT PRIMARY KEY AUTO_INCREMENT,
	id_proyecto INT,
	id_empleado INT
);

ALTER TABLE tb_actividades
ADD CONSTRAINT fk_proyecto_actividad
FOREIGN KEY (id_proyecto)
REFERENCES tb_proyectos (id_proyecto); 

ALTER TABLE tb_actividades
ADD CONSTRAINT fk_empleado_actividad
FOREIGN KEY (id_empleado)
REFERENCES tb_empleados (id_empleado); 

-- Que lindo Wil -- 


