CREATE DATABASE TP_BBDD1_2025_G12;
GO
USE TP_BBDD1_2025_G12;
GO

CREATE TABLE cuadrillas(
	idCuadrilla INT IDENTITY PRIMARY KEY,
	codCuadrilla VARCHAR(50) UNIQUE NOT NULL,
	nomCuadrilla VARCHAR(50) NULL, --nombre de cuadrilla opcional xejemplo 'cuadrilla zona sur'
);

CREATE TABLE empleados(
	idEmpleado INT IDENTITY PRIMARY KEY,
	nomEmpleado VARCHAR(50) NOT NULL,
	apeEmpleado VARCHAR(50) NOT NULL,
	cuilEmpleado VARCHAR(50) UNIQUE NOT NULL,
	telEmpleado VARCHAR(50) NOT NULL,
	fechaIngreso DATE NOT NULL,
	idCuadrilla INT NOT NULL, 
	FOREIGN KEY(idCuadrilla) REFERENCES cuadrillas(idCuadrilla)
);
CREATE NONCLUSTERED INDEX IDX_idCuadrilla_idEmpleado ON empleados(idCuadrilla, idEmpleado)

CREATE TABLE especies(
	idEspecie INT IDENTITY PRIMARY KEY,
	nomComun VARCHAR(50) NOT NULL,
	nomCientifico VARCHAR(50) UNIQUE NOT NULL 
); 

CREATE TABLE estados_salud(
	idEstadoSalud INT IDENTITY PRIMARY KEY,
	nomEstadoSalud VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE lugares(
	idLugar INT IDENTITY PRIMARY KEY,
	nomLugar VARCHAR(100) UNIQUE NOT NULL
)

CREATE TABLE calles(
	idCalle INT IDENTITY PRIMARY KEY,
	nomCalle VARCHAR(100) UNIQUE NOT NULL
)

CREATE TABLE ubicaciones(
	idUbicacion INT IDENTITY PRIMARY KEY,
	idLugar INT NULL,
	idCalle INT NULL,
	calleNroAltura VARCHAR(10) NULL,
	coordenadas GEOGRAPHY NOT NULL, --todos tenemos celular con GPS para coordenadas asi que obligatorio
	FOREIGN KEY(idLugar) REFERENCES lugares(idLugar),
	FOREIGN KEY(idCalle) REFERENCES calles(idCalle),
	--esta regla ya que los profe pidieron que o "lugar" o "calle+altura", y coordenadas:
	CONSTRAINT check_ubicacion_valida CHECK (
		((idLugar IS NOT NULL) OR ( idCalle IS NOT NULL AND calleNroAltura IS NOT NULL))
		AND ((idCalle IS NULL AND calleNroAltura IS NULL) OR (idCalle IS NOT NULL AND calleNroAltura IS NOT NULL))
	)
);
--creo que un indice asi habria que buscar de crear
--CREATE NONCLUSTERED INDEX IDX_nomCalle_calleNroAlt 
CREATE TABLE arboles(
	idArbol INT IDENTITY PRIMARY KEY,
	codArbol VARCHAR(50) UNIQUE, --codigo unico alfanumerico identificatorio
	idEspecie INT NOT NULL,
	idUbicacion INT NOT NULL,
	fechaPlantado DATE NULL,
	alturaArbol DECIMAL(6,2) NULL,
	fechaMedido DATE NULL,
	idEstadoSalud INT NOT NULL,
	otrasObservaciones NVARCHAR(MAX) NULL, -- nos pareció muy util agregarlo
	FOREIGN KEY(idEspecie) REFERENCES especies(idEspecie),
	FOREIGN KEY(idEstadoSalud) REFERENCES estados_salud(idEstadoSalud),
	FOREIGN KEY(idUbicacion) REFERENCES ubicaciones(idUbicacion)
); --SOLO REGISTRO DE LA ULTIMA MEDICION COMO ESTIPULADO CON EL PROFESOR :
	-- dijo NO SE DESEAN SEGUIMIENTOS DE REGISTROS

CREATE NONCLUSTERED INDEX IDX_idEspecie ON arboles(idEspecie)
CREATE NONCLUSTERED INDEX IDX_idUbicacion ON arboles(idUbicacion)
CREATE NONCLUSTERED INDEX IDX_fechaPlantado ON arboles(fechaPlantado)
CREATE NONCLUSTERED INDEX IDX_alturaArbol ON arboles(alturaArbol)
CREATE NONCLUSTERED INDEX IDX_idEstadoSalud ON arboles(idEstadoSalud)

-- aca va si es PREVENTIVA o CORRECTIVA 
CREATE TABLE categorias_tareas(
	idCategoriaTarea INT IDENTITY PRIMARY KEY,
	nomCategoriaTarea VARCHAR(50) UNIQUE NOT NULL
);
-- aca va PODA PLANTADO REMOCION ETC
CREATE TABLE tipos_tareas(
	idTipoTarea INT IDENTITY PRIMARY KEY,
	nomTipoTarea VARCHAR(50) UNIQUE NOT NULL
);

-- el profesor dijo que una tarea puede estar asignada
--a un grupo de arboles de determinada plaza
CREATE TABLE tareas_asignadas(
	idTarea INT IDENTITY PRIMARY KEY,
	idCategoriaTarea INT NOT NULL, --profes: CORRECTIVA SI ES POR RECLAMO/PREVENTIVA SI NO TIENE RECLAMO
	idTipoTarea INT NOT NULL,
	idCuadrilla INT NOT NULL,
	fechaAsignada DATE NOT NULL DEFAULT GETDATE(), --se le asigna la fecha del dia que se carga
	fechaPlaneada DATE NULL, --dejamos null considerando que se analiza cada caso en particular, puede que no se sepa en el momento de crear el registro que fecha exacta asignarle y se le asigna luego una fecha
	comentarioTarea NVARCHAR(MAX) NULL, --aca se agrega la fecha de realizado tambien en caso de no realizada en la fecha planeada
	FOREIGN KEY(idTipoTarea) REFERENCES tipos_tareas(idTipoTarea),
	FOREIGN KEY(idCategoriaTarea) REFERENCES categorias_tareas(idCategoriaTarea),
	FOREIGN KEY(idCuadrilla) REFERENCES cuadrillas(idCuadrilla)
);
CREATE NONCLUSTERED INDEX IDX_idCuadrilla ON tareas_asignadas(idCuadrilla)
CREATE NONCLUSTERED INDEX IDX_fechaAsignada ON tareas_asignadas(fechaAsignada)
CREATE NONCLUSTERED INDEX IDX_tareas_fechaPlaneada_idCuadrilla ON tareas_asignadas (fechaPlaneada, idCuadrilla)
INCLUDE (idTarea);
--EL PROFE DIJO SI HAY UN GRUPO GRANDE DE ARBOLES SE TERMINA TODA LA TAREA EN LA MISMA FECHA:
CREATE TABLE tareas_arbol(
	idTarea INT NOT NULL,
	idArbol INT NOT NULL,
	FOREIGN KEY(idTarea) REFERENCES tareas_asignadas(idTarea),
	FOREIGN KEY(idArbol) REFERENCES arboles(idArbol),
	PRIMARY KEY(idTarea,idArbol)
);
CREATE NONCLUSTERED INDEX IDX_idArbol ON tareas_arbol(idArbol)

CREATE TABLE estados_reclamos(
	idEstadoReclamo INT IDENTITY PRIMARY KEY,
	nomEstadoReclamo VARCHAR(50) NOT NULL
);

CREATE TABLE motivos(
	idMotivo INT IDENTITY PRIMARY KEY,
	tipoMotivo VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE reclamos(
	idReclamo INT IDENTITY PRIMARY KEY, --solo clave subrogada porque no especifica que tenga otro codigo mas el reclamo
	emailReclamo VARCHAR(100) NOT NULL CHECK (emailReclamo LIKE '%_@%_._%'), --esta bien? o mas complejo le metemos?
	idMotivo INT NOT NULL,
	motivoDescripcion NVARCHAR(MAX) NOT NULL, --util para que el que reclama pueda ser mas descriptivo y decir la ubicacion ademas
	fechaReclamo DATE NOT NULL DEFAULT GETDATE(),
	idEstadoReclamo INT NOT NULL DEFAULT 1, --acordarnos de poner 1 como default -- 1 sin asignar   -2 asignado  -3 resuelto por ejemplo
	idTarea INT NULL, -- NULL, queda vacio hasta que se decida que tarea asignarle
	FOREIGN KEY(idMotivo) REFERENCES motivos(idMotivo),
	FOREIGN KEY(idEstadoReclamo) REFERENCES estados_reclamos(idEstadoReclamo),
	FOREIGN KEY(idTarea) REFERENCES tareas_asignadas(idTarea)
);

CREATE NONCLUSTERED INDEX IDX_fechaReclamo_idEstadoReclamo ON reclamos(fechaReclamo, idEstadoReclamo)
CREATE NONCLUSTERED INDEX IDX_idTarea ON reclamos(idTarea)
GO
