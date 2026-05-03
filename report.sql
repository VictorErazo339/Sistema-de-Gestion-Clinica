SELECT DISTINCT p.nombre
FROM pacientes p
JOIN consultas c ON p.id_paciente = c.id_paciente
JOIN periodos pe ON c.id_periodo = pe.id_periodo
WHERE pe.semestre = 2;