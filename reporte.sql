SELECT P.nombre, T.descripcion, T.estado 
FROM Tratamiento T
INNER JOIN Paciente P ON T.idPaciente = P.idPaciente
WHERE T.estado = 'Completado';
