--TP EJERCICIO 5:
USE TP_BBDD1_2025_G12;
GO
--EJERCICIO 5A:
CREATE OR ALTER VIEW v_info_reclamos AS
SELECT reclamos.emailReclamo, reclamos.fechaReclamo, tipos_tareas.nomTipoTarea ,
    arboles.codArbol, tareas_asignadas.fechaAsignada, tareas_asignadas.fechaPlaneada, estados_reclamos.nomEstadoReclamo,
    DATEDIFF(
        DAY,
        reclamos.fechaReclamo,
        ISNULL(tareas_asignadas.fechaAsignada, GETDATE())
    ) AS diasParaAsignar,
    DATEDIFF(
        DAY,
        reclamos.fechaReclamo,
        ISNULL(tareas_asignadas.fechaPlaneada, GETDATE())
    ) AS diasParaResolver
FROM reclamos
JOIN estados_reclamos ON reclamos.idEstadoReclamo=estados_reclamos.idEstadoReclamo
LEFT JOIN tareas_asignadas ON reclamos.idTarea = tareas_asignadas.idTarea
LEFT JOIN tipos_tareas ON tareas_asignadas.idTipoTarea=tipos_tareas.idTipoTarea
LEFT JOIN tareas_arbol ON tareas_asignadas.idTarea = tareas_arbol.idTarea
LEFT JOIN arboles ON tareas_arbol.idArbol = arboles.idArbol;
GO

--EJERCICIO 5B:
CREATE OR ALTER VIEW v_resumen_tareas_realizadas AS
SELECT
    tipos_tareas.nomTipoTarea,
    MIN(tareas_asignadas.fechaPlaneada) AS fechaPrimerTarea,
    MAX(tareas_asignadas.fechaPlaneada) AS fechaUltimaTarea,
    COUNT(*) AS cantidadTareasRealizadas
FROM tareas_asignadas
JOIN tipos_tareas ON tareas_asignadas.idTipoTarea = tipos_tareas.idTipoTarea
WHERE tareas_asignadas.fechaPlaneada IS NOT NULL
  AND tareas_asignadas.fechaPlaneada <= GETDATE()
GROUP BY tipos_tareas.nomTipoTarea;
GO

--EJEMPLOS DE EJECUCION:
SELECT TOP 20 *
FROM v_info_reclamos
ORDER BY fechaReclamo DESC;
GO

SELECT emailReclamo, nomEstadoReclamo, fechaReclamo, diasParaAsignar, diasParaResolver
FROM v_info_reclamos
ORDER BY diasParaAsignar DESC;
GO

SELECT *
FROM v_resumen_tareas_realizadas
ORDER BY cantidadTareasRealizadas DESC;
GO