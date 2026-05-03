-- Especialidades
CREATE TABLE especialidades (
    id_especialidad INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL UNIQUE
);

-- Médicos
CREATE TABLE medicos (
    id_medico INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    rut VARCHAR(12) UNIQUE NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    id_especialidad INT NOT NULL,
    estado VARCHAR(20) NOT NULL,
    FOREIGN KEY (id_especialidad) REFERENCES especialidades(id_especialidad)
);

-- Pacientes
CREATE TABLE pacientes (
    id_paciente INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    rut VARCHAR(12) UNIQUE NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    estado VARCHAR(20) NOT NULL
);

-- Períodos clínicos
CREATE TABLE periodos (
    id_periodo INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    anio INT NOT NULL,
    semestre INT CHECK (semestre IN (1,2))
);

-- Consultas médicas
CREATE TABLE consultas (
    id_consulta INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_paciente INT NOT NULL,
    id_medico INT NOT NULL,
    id_periodo INT NOT NULL,
    fecha DATE NOT NULL,
    costo INT CHECK (costo >= 0),
    observacion TEXT,
    FOREIGN KEY (id_paciente) REFERENCES pacientes(id_paciente),
    FOREIGN KEY (id_medico) REFERENCES medicos(id_medico),
    FOREIGN KEY (id_periodo) REFERENCES periodos(id_periodo)
);

-- Diagnósticos
CREATE TABLE diagnosticos (
    id_diagnostico INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_consulta INT UNIQUE,
    descripcion TEXT NOT NULL,
    gravedad VARCHAR(20),
    FOREIGN KEY (id_consulta) REFERENCES consultas(id_consulta)
);
