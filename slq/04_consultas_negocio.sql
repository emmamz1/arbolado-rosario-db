--TP EJERCICIO 4:
USE TP_BBDD1_2025_G12
--4A:
SELECT TOP 1 cuadrillas.idCuadrilla, COUNT(tareas_asignadas.fechaPlaneada) AS total_tareas_realizadas_x_cuadrilla
FROM cuadrillas
JOIN tareas_asignadas ON cuadrillas.idCuadrilla=tareas_asignadas.idCuadrilla
WHERE tareas_asignadas.fechaPlaneada BETWEEN '2025-10-01' AND '2025-10-31'
GROUP BY cuadrillas.idCuadrilla
ORDER BY total_tareas_realizadas_x_cuadrilla DESC
--se aclarò en la creacion de tabla tareas asignadas el profe nos dijo no crear el atributo fechaRealizada, y considerar que la tarea se realiza en la fecha planeada.

--4B: MOSTRAR LOS MOTIVOS DE RECLAMOS QUE TENGAN MAS DE 3 RECLAMOS EN ESTADO NO ASIGNADO(SIN TAREA)
SELECT motivos.tipoMotivo
-- reclamos.emailReclamo, estados_reclamos.nomEstadoReclamo
FROM reclamos
JOIN motivos ON reclamos.idMotivo=motivos.idMotivo
JOIN estados_reclamos ON reclamos.idEstadoReclamo=estados_reclamos.idEstadoReclamo
WHERE estados_reclamos.nomEstadoReclamo='No asignado'
GROUP BY motivos.tipoMotivo
HAVING COUNT(*) > 3

--4C:
SELECT arboles.codArbol, especies.nomComun,
MAX(COALESCE(lugares.nomLugar, calles.nomCalle + ' ' +CONVERT(VARCHAR(50),ubicaciones.calleNroAltura))) AS Ubicacion,
ubicaciones.coordenadas.ToString() AS Coordenadas
FROM arboles
JOIN especies ON arboles.idEspecie=especies.idEspecie
JOIN ubicaciones ON arboles.idUbicacion=ubicaciones.idUbicacion
LEFT JOIN lugares ON ubicaciones.idLugar=lugares.idLugar
LEFT JOIN calles ON ubicaciones.idCalle=calles.idCalle
LEFT JOIN tareas_arbol ON arboles.idArbol=tareas_arbol.idArbol
LEFT JOIN tareas_asignadas ON tareas_arbol.idTarea=tareas_asignadas.idTarea
LEFT JOIN reclamos ON tareas_asignadas.idTarea=reclamos.idTarea
GROUP BY arboles.codArbol, especies.nomComun, ubicaciones.coordenadas.ToString()
HAVING COUNT(reclamos.idTarea)=0


--4D: MOSTRAR LOS 3 ARBOLES (CODIGO, ESPECIE Y UBICACION)MAS ALTOS DE CADA ESPECIE.
--MOSTRAR LOS RESULTADOS ORDENADOS POR ESPECIE
SELECT x_especie.codArbol,
       x_especie.alturaArbol,
       x_especie.nomComun AS especie
FROM (
    SELECT 
        arboles.codArbol,
        arboles.alturaArbol,
        especies.nomComun,
        ROW_NUMBER() OVER (
            PARTITION BY arboles.idEspecie
            ORDER BY arboles.alturaArbol DESC, arboles.codArbol ASC
        ) AS rn
    FROM arboles
    JOIN especies ON arboles.idEspecie = especies.idEspecie
    WHERE arboles.alturaArbol IS NOT NULL
) x_especie
WHERE x_especie.rn <= 3
ORDER BY especie, x_especie.alturaArbol DESC;
