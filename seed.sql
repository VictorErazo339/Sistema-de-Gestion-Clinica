-- Especialidades
INSERT INTO especialidades (nombre) VALUES
('Cardiología'),
('Pediatría'),
('Traumatología'),
('Medicina General');

-- Médicos
INSERT INTO medicos (rut, nombre, id_especialidad, estado) VALUES
('11.111.111-1', 'Dr. Pérez', 1, 'activo'),
('22.222.222-2', 'Dra. Soto', 2, 'activo'),
('33.333.333-3', 'Dr. Rojas', 3, 'activo'),
('44.444.444-4', 'Dr. Muñoz', 4, 'inactivo');

-- Pacientes
INSERT INTO pacientes (rut, nombre, fecha_nacimiento, estado) VALUES
('9.111.111-1', 'Ana López', '1990-05-10', 'activo'),
('9.222.222-2', 'Juan Díaz', '1985-08-21', 'activo'),
('9.333.333-3', 'Pedro Torres', '1970-03-15', 'activo'),
('9.444.444-4', 'María Ríos', '2000-11-30', 'activo');

-- Períodos
INSERT INTO periodos (anio, semestre) VALUES
(2024,1),
(2024,2);

-- Consultas
INSERT INTO consultas (id_paciente, id_medico, id_periodo, fecha, costo, observacion) VALUES
(1,1,1,'2024-03-10',30000,'Chequeo general'),
(2,2,1,'2024-04-15',25000,'Control niño sano'),
(3,1,2,'2024-09-01',40000,'Dolor torácico'),
(4,3,2,'2024-09-10',35000,'Dolor rodilla');

-- Diagnósticos
INSERT INTO diagnosticos (id_consulta, descripcion, gravedad) VALUES
(1,'Paciente sano','baja'),
(3,'Hipertensión','media');
