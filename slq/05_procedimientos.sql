USE TP_BBDD1_2025_G12;
GO
--EJERCICIO6
/*
Escriba un procedimiento almacenado para identificar si existen tareas no realizadas
dado un árbol en particular y un tipo de tareas. El procedimiento debe devolver:
a. Como parámetro de salida, la fecha de la próxima tarea del tipo indicado a
realizarse sobre el árbol, si existiera.
b. Debe retornar (como valor de retorno) la cantidad de tareas pendientes de
realizar para el tipo de tarea y árbol proporcionados
*/
IF OBJECT_ID('proc_tareas_pendientes', 'P') IS NOT NULL
    DROP PROCEDURE proc_tareas_pendientes;
GO
CREATE PROCEDURE proc_tareas_pendientes
    @idArbol INT,
    @idTipoTarea INT,
    @proximaFecha DATE OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT @proximaFecha = MIN(tareas_asignadas.fechaPlaneada)
    FROM tareas_asignadas
    INNER JOIN tareas_arbol ON tareas_asignadas.idTarea = tareas_arbol.idTarea
    WHERE tareas_arbol.idArbol = @idArbol
      AND tareas_asignadas.idTipoTarea = @idTipoTarea
      AND tareas_asignadas.fechaPlaneada >= CAST(GETDATE() AS DATE);

    RETURN (
        SELECT COUNT(*)
        FROM tareas_asignadas
        INNER JOIN tareas_arbol ON tareas_asignadas.idTarea = tareas_arbol.idTarea
        WHERE tareas_arbol.idArbol = @idArbol
          AND tareas_asignadas.idTipoTarea = @idTipoTarea
          AND (
                tareas_asignadas.fechaPlaneada IS NULL 
                OR tareas_asignadas.fechaPlaneada >= CAST(GETDATE() AS DATE)
              )
    );
END;
GO

-- EJEMPLO 1: ENCONTRADO
DECLARE @fechaProxima DATE;
DECLARE @cantPendientes INT;

EXEC @cantPendientes = proc_tareas_pendientes
        @idArbol = 83,
        @idTipoTarea = 8,
        @proximaFecha = @fechaProxima OUTPUT;

SELECT 
    @cantPendientes AS cantidadPendientes,
    @fechaProxima AS proximaFecha;

GO

-- EJEMPLO 2: NO ENCONTRADO
DECLARE @fechaProxima2 DATE;
DECLARE @cantPendientes2 INT;

EXEC @cantPendientes2 = proc_tareas_pendientes
        @idArbol = 8,
        @idTipoTarea = 2,
        @proximaFecha = @fechaProxima2 OUTPUT;

SELECT 
    @cantPendientes2 AS cantidadPendientes,
    @fechaProxima2 AS proximaFecha;
GO