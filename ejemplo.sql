SELECT T.descripcion, T.estado 
FROM Tratamiento T
INNER JOIN Paciente P ON T.idPaciente = P.idPaciente
WHERE P.nombre = 'Maikol Jordan' AND T.estado = 'En Proceso';
