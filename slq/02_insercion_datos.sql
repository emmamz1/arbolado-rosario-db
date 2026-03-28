USE TP_BBDD1_2025_G12

--ESPECIES DE ARBOLES
INSERT INTO especies (nomComun, nomCientifico) VALUES 
('Jacarandá','Jacaranda mimosifolia'),
('Tilo','Tilia x moltkei'),
('Lapacho','Handroanthus impetiginosus'),
('Nogal','Liquidambar styraciflua'),
('Eucalipto','Eucalyptus spp.'),
('Ceibo','Erythrina crista-galli'),
('Palo borracho','Ceiba speciosa'),
('Palmera Fénix','Phoenix canariensis'),
('Palmera Pindo','Butia capitata'),
('Timbó','Enterolobium contortisiliquum'),
('Cedro','Cedrus libani'),
('Magnolia','Magnolia spp.'),
('Aguaribay','Schinus molle'),
('Pino','Pinus spp.'),
('Plátano','Platanus × hispanica'),
('Roble','Quercus spp.'),
('Jazmín','Jasminum spp.'),
('Palmera Washingtonia','Washingtonia filifera');
GO

INSERT INTO cuadrillas (codCuadrilla, nomCuadrilla) VALUES
('CRZS0004','Cuadrilla Zona Sur'),
('CRZN0003','Cuadrilla Zona Norte'),
('CRZO0005','Cuadrilla Zona Noroeste'),
('CRZS0001','Cuadrilla Zona Sudoeste'),
('CRZC0000','Cuadrilla Zona Centro'),
('CRZO0002','Cuadrilla Zona Oeste');

-- EMPLEADOS
INSERT INTO empleados (nomEmpleado, apeEmpleado, cuilEmpleado, telEmpleado, fechaIngreso, idCuadrilla) VALUES
('Ramiro', 'Gómez', '20345678901', '341-5551111', '2021-03-15', 3),
('Carlos', 'Pereyra', '20345789123', '341-5552222', '2024-06-10', 1),
('Marta', 'Ferreyra', '27345987654', '341-5553333', '2023-02-20', 2),
('Diego', 'Ledesma', '20346789543', '341-5554444', '2021-09-01', 2),
('José', 'Benítez', '20345876432', '341-5555555', '2014-12-12', 1),
('Vanesa', 'Sosa', '27345671234', '341-5556666', '2023-04-08', 4),
('Nahuel', 'Rodríguez', '20346871234', '341-5557777', '2021-11-05', 3),
('Jorge', 'García', '20326724544', '341-2549224', '2011-01-17', 5),
('Sergio', 'Acosta', '20346984567', '341-5558888', '2022-07-17', 1),
('Roxana', 'Juarez', '27292526525', '3476-5420325', '2019-10-30', 6),
('Lucía', 'Almirón', '27346598765', '341-5559999', '2020-01-23', 4),
('Héctor', 'Bazan', '20347981234', '341-5550001', '2020-05-10', 3),
('Oscar', 'Páez', '20348983456', '341-5550002', '2012-08-29', 4),
('Ramiro', 'Matioli', '20348983454', '341-2222554', '2013-04-16', 5),
('Juan Ignacio', 'Gómez', '20316243226', '351-3552502', '2025-01-20', 4),
('José', 'Gimenez', '20378223182', '341-5550002', '2012-08-29', 5),
('Alfredo', 'Juarez', '20289626523', '11-25420014', '2022-07-02', 6),
('Viviana', 'Domínguez', '27349876543', '341-5550003', '2023-06-14', 2);
GO

--TIPOS DE TAREAS A ASIGNAR
INSERT INTO tipos_tareas (nomTipoTarea) VALUES
('Plantado'),				--1
('Reposición'),				--2
('Poda de mantenimiento'),	--3
('Retirar árbol caído'),	--4
('Control de raíces'),		--5
('Remoción de ramas y hojas'),	--6
('Riego'),					--7
('Poda ornamental'),		--8
('Tratamiento de plagas');	--9


--CATEGORIAS DE TAREAS: aclaracion de los profesores:
--correctiva si es por un reclamo, preventiva si es planeada, 
--correctiva tambien puede ser para solucionar algo que alguien vio
INSERT INTO categorias_tareas (nomCategoriaTarea) VALUES
('Preventiva'), --1
('Correctiva'); --2 
GO

INSERT INTO estados_salud (nomEstadoSalud) VALUES
('Sano'),							--1
('Débil'),							--2
('Seco'),							--3
('Enfermo'),						--4
('Con presencia de plagas'),		--5
('Daño estructural'),				--6
('Inclinado/Riesgo de Caída'),		--7
('Muerto'),							--8
('Se desconoce');					--9
GO

INSERT INTO calles (nomCalle) VALUES
('Av. Pellegrini'),		--1
('San Martín'),   --2
('Ayolas'),     --3
('Leandro N. Alem'), --4
('Italia'), --5
('Mendoza'), --6
('Mitre'), --7
('Ayacucho'), --8
('Cochabamba'), --9
('San Juan'), --10
('San Luis'), --11
('Corrientes'), --12
('Sarmiento'), --13
('España'),  --14
('Av. Colombres'), --15
('Av. de los Trabajadores'), --16
('3 de Febrero'), --17
('Bv. Oroño'), --18
('Buenos Aires'), --19
('Colón'), --20
('Rivadavia'), --21
('San Lorenzo'), --22
('Chacabuco'), --23
('Callao'), --24
('Laprade'), --25
('Bv. 27 de Febrero'), --26
('Eudoro Carrasco'), --27
('Nansen'), --28 
('Balcarce'), --29
('9 de Julio'), --30
('Uriburu'), --31
('Tucumán'), --32
('Santiago'), --33
('Lamadrid'), --34
('Pueyrredón'), --35
('Paraguay'), --36
('Rondeau'), --37
('Córdoba'), --38
('Montevideo'), --39
('Entre Ríos'), --40
('Santa Fe'); --41


INSERT INTO lugares (nomLugar) VALUES
('Parque Scalabrini Ortíz'),		--1
('Plaza Lopez'),					--2
('Parque Independencia'),			--3
('Parque Urquiza'),					--4
('Plaza Libertad'),					--5
('Plaza Sarmiento'),				--6
('Parque España'),					--7
('Plaza Ernesto Che Guevara'),		--8
('Paseo del Caminante'),			--9
('Cuatro Plazas - Parque Mitre'),	--10
('Parque Oeste'),					--11
('Balneario La Florida');			--12
GO

INSERT INTO estados_reclamos (nomEstadoReclamo) VALUES
('No asignado'),  --este queda por default si no se pone nada en estado cuando se genera
('Asignado'),
('Resuelto');
GO


INSERT INTO ubicaciones (idLugar, idCalle, calleNroAltura, coordenadas) VALUES
(2, NULL, NULL,  geography::Point(-32.960900, -60.650700, 4326)),		--1
(NULL, 2,          '2900',  geography::Point(-32.979200, -60.635000, 4326)),		--2
(3, NULL, NULL,  geography::Point(-32.952450, -60.661220, 4326)),		--3
(NULL, 3,              '700',   geography::Point(-32.985400, -60.640300, 4326)),		--4
(4, NULL, NULL,   geography::Point(-32.952000, -60.626700, 4326)),		--5
(NULL, 5,              '1800',  geography::Point(-32.950900, -60.654000, 4326)),		--6
(10, NULL, NULL,  geography::Point(-32.950600, -60.703000, 4326)),		--7
(NULL, 7,               '2500',  geography::Point(-32.949900, -60.654100, 4326)),		--8
(5, NULL, NULL,  geography::Point(-32.947800, -60.648000, 4326)),		--9
(NULL, 8,            '1500',  geography::Point(-32.982100, -60.639800, 4326)),		--10
(NULL, 15,       '2100',  geography::Point(-32.908000, -60.670800, 4326)),		--11
(NULL, 6,             '3200',  geography::Point(-32.945500, -60.670000, 4326)),		--12
(11, NULL,NULL,geography::Point(-32.910900, -60.678500, 4326)),		--13
(NULL, 1,          '4200',  geography::Point(-32.953400, -60.680000, 4326)),		--14
(6, NULL, NULL,  geography::Point(-32.953800, -60.642000, 4326)),		--15
(NULL, 10,            '2000',  geography::Point(-32.950700, -60.655700, 4326)),		--16
(3, NULL, NULL,  geography::Point(-32.954800, -60.662500, 4326)),		--17
(NULL, 12,          '2100',  geography::Point(-32.950300, -60.653600, 4326)),		--18
(5, NULL, NULL,  geography::Point(-32.947600, -60.647900, 4326)),		--19
(NULL, 14,              '2800',  geography::Point(-32.951900, -60.661200, 4326)),		--20
(2, NULL,          NULL,  geography::Point(-32.961200, -60.651600, 4326)),		--21
(NULL, 38,             '3100',  geography::Point(-32.946300, -60.671200, 4326)),		--22
(6, NULL,          NULL,  geography::Point(-32.953700, -60.642300, 4326)),		--23
(NULL, 36,            '2700',  geography::Point(-32.952800, -60.654700, 4326)),		--24
(NULL, 15,       '2400',  geography::Point(-32.908700, -60.671800, 4326)),		--25
(NULL, 40,          '2200',  geography::Point(-32.950100, -60.652700, 4326)),		--26
(4, NULL,        NULL,   geography::Point(-32.952400, -60.628200, 4326)),		--27
(NULL, 36,            '1500',  geography::Point(-32.952900, -60.648300, 4326)),		--28
(10, NULL,             NULL,  geography::Point(-32.950800, -60.702300, 4326)),		--29
(NULL, 18,           '3500',  geography::Point(-32.954400, -60.670800, 4326)),		--30
(5, NULL,            NULL,  geography::Point(-32.947700, -60.648200, 4326)),		--31
(NULL, 34,            '2200',  geography::Point(-32.978800, -60.637200, 4326)),		--32
(11, NULL,     NULL,  geography::Point(-32.911200, -60.678700, 4326)),		--33
(NULL, 35,          '500',   geography::Point(-32.945000, -60.657000, 4326)),		--34
(3, NULL,   NULL,  geography::Point(-32.956700, -60.664100, 4326)),		--35
(NULL, 21,           '1700',  geography::Point(-32.947400, -60.640900, 4326)),		--36
(2, NULL,          NULL,   geography::Point(-32.953900, -60.641800, 4326)),		--37
(NULL, 22,         '700',   geography::Point(-32.946100, -60.639000, 4326)),		--38
(5, NULL,             NULL,  geography::Point(-32.947900, -60.648400, 4326)),		--39
(NULL, 7,               '3100',  geography::Point(-32.947200, -60.672800, 4326)),		--40
(NULL, 15,       '2000',  geography::Point(-32.907800, -60.670400, 4326)),		--41
(NULL, 24,              '2000',  geography::Point(-32.947700, -60.666500, 4326)),		--42
(4, NULL, NULL,   geography::Point(-32.951800, -60.625900, 4326)),		--43
(NULL, 5,              '2700',  geography::Point(-32.950400, -60.661400, 4326)),		--44
(10, NULL,NULL,  geography::Point(-32.950200, -60.704400, 4326)),		--45
(NULL, 40,          '3000',  geography::Point(-32.950000, -60.673400, 4326)),		--46
(2, NULL, NULL,  geography::Point(-32.960900, -60.650700, 4326)),		--47
(NULL, 39,          '2300',  geography::Point(-32.951100, -60.662500, 4326)),		--48
(6, NULL,          NULL,  geography::Point(-32.953600, -60.642600, 4326)),		--49
(NULL, 32, '1600',  geography::Point(-32.951900, -60.650600, 4326)),		--50
(11, NULL, NULL,  geography::Point(-32.911000, -60.678000, 4326)),		--51
(NULL, 41,            '1900',  geography::Point(-32.946900, -60.642400, 4326)),		--52
(3, NULL,  NULL,  geography::Point(-32.951000, -60.660000, 4326)),		--53
(NULL, 24,              '400',   geography::Point(-32.944500, -60.646900, 4326)),		--54
(2, NULL, NULL,  geography::Point(-32.960800, -60.650900, 4326)),		--55
(NULL, 2,          '2000',  geography::Point(-32.956900, -60.640000, 4326)),		--56
(NULL, 15,       '2200',  geography::Point(-32.908300, -60.671100, 4326)),		--57
(NULL, 30,          '2500',  geography::Point(-32.952200, -60.659500, 4326)),		--58
(5, NULL, NULL,  geography::Point(-32.947900, -60.648405, 4326)),		--59
(NULL, 36,            '2800',  geography::Point(-32.952100, -60.652900, 4326)),		--60
(4, NULL, NULL,    geography::Point(-32.952200, -60.627800, 4326)),		--61
(NULL, 14,              '3100',  geography::Point(-32.951700, -60.672200, 4326)),		--62
(6, NULL,  NULL,   geography::Point(-32.953910, -60.641810, 4326)),		--63
(NULL, 29,            '1800',  geography::Point(-32.951500, -60.656000, 4326)),		--64
(10, NULL,  NULL,  geography::Point(-32.950000, -60.705000, 4326)),		--65
(NULL, 38,             '3200',  geography::Point(-32.946500, -60.672000, 4326)),		--66
(2, NULL, NULL,  geography::Point(-32.961100, -60.651300, 4326)),		--67
(NULL, 31,             '900',   geography::Point(-32.983000, -60.645200, 4326)),		--68
(11,	NULL, NULL, geography::Point(-32.910700, -60.678200, 4326)),		--69
(NULL,	39,  '2400',geography::Point(-32.952500, -60.662000, 4326)),		--70
(3,		NULL, NULL, geography::Point(-32.951010, -60.660010, 4326)),		--71
(NULL,	10,	 '2100',geography::Point(-32.951200, -60.656500, 4326)),		--72
(6,     NULL, NULL, geography::Point(-32.953610, -60.642310, 4326)),		--73
(NULL,	37,  '1200',geography::Point(-32.948900, -60.650200, 4326)),		--74
(4,		NULL, NULL, geography::Point(-32.952050, -60.626850, 4326)),		--75
(NULL,	22,	 '900',	geography::Point(-32.945900, -60.639200, 4326)),		--76
(NULL,	15,	 '2350',geography::Point(-32.907900, -60.670600, 4326)),		--77
(NULL,	18,	 '3600',geography::Point(-32.954600, -60.671000, 4326)),		--78
(5,		NULL, NULL, geography::Point(-32.947850, -60.647950, 4326)),		--79
(NULL,	6, 	 '3000',geography::Point(-32.946700, -60.699000, 4326)),		--80
(NULL,	1,	 '100',	geography::Point(-32.957000, -60.636000, 4326)),		--81
(NULL,	1,	 '120',	geography::Point(-32.957200, -60.636200, 4326)),		--82
(NULL,	1,	 '140',	geography::Point(-32.957400, -60.636400, 4326)),		--83
(NULL,	1,	 '160',	geography::Point(-32.957600, -60.636600, 4326)),		--84
(NULL,	1,	 '180',	geography::Point(-32.957800, -60.636800, 4326)),		--85
(7,		NULL, NULL, geography::Point(-32.950500, -60.655500, 4326)),		--86
(7,		NULL, NULL, geography::Point(-32.950600, -60.655600, 4326)),		--87
(7,		NULL, NULL, geography::Point(-32.950700, -60.655700, 4326)),		--88
(7,		NULL, NULL, geography::Point(-32.950800, -60.655800, 4326)),		--89
(7,		NULL, NULL, geography::Point(-32.950900, -60.655900, 4326)),		--90
(8,		NULL, NULL, geography::Point(-32.946000, -60.660000, 4326)),		--91
(8,		NULL, NULL, geography::Point(-32.946200, -60.660200, 4326)),		--92
(8,		NULL, NULL, geography::Point(-32.946400, -60.660400, 4326)),		--93
(8, NULL, NULL,geography::Point(-32.946600, -60.660600, 4326)),		--94
(8, NULL, NULL,geography::Point(-32.946800, -60.660800, 4326)),		--95
(9, NULL, NULL, geography::Point(-32.902000, -60.680000, 4326)),		--96
(9, NULL, NULL, geography::Point(-32.902200, -60.680200, 4326)),		--97
(9, NULL, NULL, geography::Point(-32.902400, -60.680400, 4326)),		--98
(9, NULL, NULL, geography::Point(-32.902600, -60.680600, 4326)),		--99
(12, NULL, NULL, geography::Point(-32.938000, -60.650000, 4326)),		--100
(12, NULL, NULL, geography::Point(-32.938200, -60.650200, 4326)),		--101
(12, NULL, NULL, geography::Point(-32.938400, -60.650400, 4326)),		--102
(12, NULL, NULL,geography::Point(-32.938600, -60.650600, 4326)),		--103
(NULL, 18,   '4002', geography::Point(-32.953000, -60.674000, 4326)),		--104
(NULL, 18,   '4100', geography::Point(-32.953200, -60.674200, 4326)),		--105
(NULL, 18,   '4200', geography::Point(-32.953400, -60.674400, 4326)),		--106
(NULL, 18,   '4300', geography::Point(-32.953600, -60.674600, 4326)),		--107
(NULL, 18,   '4400', geography::Point(-32.953800, -60.674800, 4326)),		--108
(NULL, 1, '2100', geography::Point(-32.955000, -60.634000, 4326)),		--109
(NULL, 1, '2120', geography::Point(-32.955200, -60.634200, 4326)),		--110
(NULL, 1, '2140', geography::Point(-32.955400, -60.634400, 4326)),		--111
(NULL, 1, '2160', geography::Point(-32.955600, -60.634600, 4326)),		--112
(NULL, 18, '1250', geography::Point(-32.957600, -60.634400, 4326)),		--113
(NULL, 18, '320', geography::Point(-32.957600, -60.634400, 4326)),		--114
(NULL, 18, '450', geography::Point(-32.957600, -60.634400, 4326)),		--115
(NULL, 18, '470', geography::Point(-32.957600, -60.634400, 4326)),		--116
(NULL, 18, '380', geography::Point(-32.957600, -60.634400, 4326));		--117
-- 
INSERT INTO arboles (codArbol, idEspecie, idUbicacion, fechaPlantado, alturaArbol, fechaMedido, idEstadoSalud, otrasObservaciones) VALUES
('G7X2P9',  3, 1, '2016-04-12', 2.30, '2017-04-12', 2, 'Follaje débil - seguimiento'),
('Q1Z6K4',  1, 2, '2020-01-12', 1.10, '2021-01-12', 1, NULL),
('L3V9T7',  7, 3, '2012-08-15', 4.95, '2013-08-15', 1, NULL),
('P8R0C2',  5, 4, NULL,        NULL,   NULL,      5, 'Presencia de plagas detectada'),
('N5D6S8', 12, 5, NULL,        NULL,   NULL,      1, NULL),
('Z2K3F1',  9, 6, '2019-11-05', 4.65, '2025-06-02', 7, 'Inclinación notable - riesgo'),
('H9C4Q0', 14, 7, '2022-07-18', 6.40, '2023-12-02', 1, NULL),
('M6P2W3',  2, 8, '2017-08-05', 2.20, '2020-09-06', 9, NULL),
('R1J8L2', 16, 9, '2017-11-11', 6.10, '2022-12-11', 1, NULL),
('B2F7U1',  6, 10,'2017-09-25', 3.60, '2019-10-14', 1, NULL),
('Y8S3V4', 18, 11, NULL,        NULL,   NULL,      1, NULL),
('C7N1A9', 11, 12,'2018-04-07', 5.35, '2024-02-12', 1, NULL),
('D3R5M0',  4, 13,'2018-09-27', 2.90, '2025-10-22', 1, NULL),
('F6T4B8',  8, 14,'2016-07-09', 4.30, '2017-07-09', 1, NULL),
('S2W9H1', 10, 15,'2012-04-20', 4.00, '2015-01-24', 1, NULL),
('K4E5P0',  1, 16, NULL,        NULL,   NULL,      9, NULL),
('U3X0L9', 13, 17,'2018-03-11', 5.05, '2019-03-11', 1, NULL),
('G1Z6R1',  3, 18,'2014-05-23', 2.05, '2015-05-23', 1, NULL),
('V5Q2N7',  5, 19,'2016-12-01', 3.25, '2017-12-01', 4, NULL),
('T8L1C3',  2, 20,'2019-03-17', 2.20, '2020-03-17', 1, NULL),
('J9M3S1', 17, 21,'2010-05-10', 6.05, '2011-05-10', 1, NULL),
('A1P7B3', 15, 22,'2016-10-01', 6.00, '2017-10-01', 1, NULL),
('L8C2X1',  6, 23,'2018-09-15', 3.60, '2019-09-15', 4, NULL),
('W6H9D0',  9, 24,'2014-08-13', 4.65, '2015-08-13', 1, NULL),
('Z7V1K2',  1, 25,'2016-12-24', 1.50, '2017-12-24', 1, NULL),
('Q4N3F0',  4, 26,'2015-06-14', 2.90, '2016-06-14', 1, NULL),
('P6G8S1',  8, 27,'2022-10-04', 4.00, '2023-10-04', 1, NULL),
('M9R2Y8', 11, 28,'2019-06-18', 5.35, '2020-06-18', 8, NULL),
('E5K7Z0', 14, 29,'2013-01-10', 5.90, '2014-01-10', 1, NULL),
('N2T6B0', 12, 30,'2020-07-19', 5.35, '2021-07-19', 1, NULL),
('R3J5V0', 16, 31, NULL,        NULL,   NULL,      1, NULL),
('H2C8W1',  7, 32,'2022-02-10', 4.00, '2023-02-10', 1, NULL),
('B9F4Q0', 10, 33,'2014-06-14', 4.00, '2015-06-14', 1, NULL),
('S7V3L8',  2, 34, NULL,        NULL,   NULL,      1, NULL),
('Y4P1N1', 18, 35,'2016-11-23', 7.80, '2017-11-23', 3, 'Seco parcial - requiere inspección'),
('C6M2D0',  5, 36,'2023-02-12', 3.25, '2024-02-12', 1, NULL),
('F1T8R0',  3, 37,'2020-11-12', 2.55, '2021-11-12', 6, 'Daño estructural en tronco por vandalismo'),
('K5E7Q0',  6, 38,'2015-01-07', 3.60, '2016-01-07', 1, NULL),
('V2Q9J0', 13, 39,'2020-02-09', 5.05, '2021-02-09', 1, NULL),
('T3L6S0',  9, 40,'2012-10-15', 4.65, '2013-10-15', 5, NULL),
('J8M1A0',  1, 41,'2020-03-20', 1.85, '2021-03-20', 1, NULL),
('A6P4B0',  4, 42, NULL,        NULL,   NULL,      1, NULL),
('L1C9X0', 12, 43,'2011-05-30', 5.35, '2012-05-30', 1, NULL),
('W3H6D1', 11, 44,'2017-01-26', 5.35, '2018-01-26', 1, NULL),
('Z5V2K0', 15, 45,'2021-11-05', 6.00, '2022-11-05', 1, NULL),
('Q1N8F0', 17, 46,'2019-12-21', 6.45, '2020-12-21', 1, NULL),
('P4G6S0',  2, 47,'2021-04-05', 1.90, '2022-04-05', 1, NULL),
('M8R2Y0', 10, 48,'2021-10-14', 4.00, '2022-10-14', 1, NULL),
('E9K7Z0', 14, 49, NULL,        NULL,   NULL,      2, NULL),
('N6T1B0', 16, 50,'2018-02-15', 6.10, '2019-02-15', 1, NULL),
('R7J3V0',  8, 51,'2013-07-09', 4.50, '2014-07-09', 1, NULL),
('H4C2W0', 13, 52,'2015-12-02', 5.05, '2016-12-02', 1, NULL),
('B5F8Q0',  7, 53,'2019-10-02', 4.80, '2020-10-02', 1, NULL),
('S1V4L0',  6, 54,'2016-12-20', 3.60, '2017-12-20', 1, NULL),
('Y2P7N0',  3, 55,'2014-07-09', 2.70, '2015-07-09', 1, NULL),
('C8M5D0', 11, 56,'2014-04-12', 5.80, '2015-04-12', 1, NULL),
('F4T1R0',  5, 57,'2018-06-30', 3.25, '2019-06-30', 5, NULL),
('K2E9Q0', 17, 58,'2011-11-22', 7.00, '2012-11-22', 4, 'Manchitas en las hojas'),
('V8Q3J0',  9, 59,'2020-02-10', 4.65, '2021-02-10', 1, NULL),
('T6L0S0', 12, 60,'2013-03-03', 5.35, '2014-03-03', 1, NULL),
('J3M8A0', 10, 61,'2017-03-18', 3.80, '2018-03-18', 1, NULL),
('A9P5B1',  1, 62, NULL,        NULL,   NULL,      1, NULL),
('L3C7X0', 18, 63,'2020-12-01', 8.45, '2021-12-01', 1, NULL),
('W2H4D0', 14, 64,'2021-11-30', 6.40, '2022-11-30', 1, NULL),
('Z6V8K0',  2, 65,'2015-04-04', 2.20, '2016-04-04', 1, NULL),
('Q3N2F0', 15, 66,'2017-10-21', 6.00, '2018-10-21', 1, NULL),
('P1G9S0', 13, 67, NULL,        NULL,   NULL,      1, NULL),
('M4R6Y0',  4, 68,'2018-03-15', 2.90, '2019-03-15', 9, NULL),
('E2K3Z0', 16, 69,'2021-05-03', 6.10, '2022-05-03', 1, NULL),
('N8T7B1', 11, 70,'2012-09-09', 5.35, '2013-09-09', 1, NULL),
('R5J1V0',  8, 71,'2015-09-03', 4.30, '2016-09-03', 1, NULL),
('H7C9W0',  6, 72,'2019-07-07', 3.60, '2020-07-07', 1, NULL),
('B1F6Q0',  3, 73,'2019-01-15', 2.10, '2020-01-15', 1, NULL),
('S9V2L0',  5, 74,'2020-08-08', 3.25, '2021-08-08', 6, NULL),
('Y6P3N0', 17, 75,'2014-05-05', 6.45, '2015-05-05', 1, NULL),
('C4M8D0', 10, 76,'2013-12-12', 4.00, '2014-12-12', 3, NULL),
('F9T5R1',  1, 77,'2018-02-02', 1.20, '2019-02-02', 1, NULL),
('K7E2Q0', 12, 78,'2016-06-06', 3.20, '2017-06-06', 1, NULL),
('V1Q6J0',  9, 79,'2014-08-22', 4.65, '2015-08-22', 1, NULL),
('T4L8S0', 14, 80,'2011-03-03', 6.40, '2012-03-03', 1, NULL),
('N4G7B2',  4, 81,'2017-03-03', 2.90, '2018-03-03', 1, NULL),
('P8H5Q3',  7, 82,'2018-04-04', 4.95, '2019-04-04', 4, NULL),
('S2J9T6', 11, 83, NULL,        NULL,   NULL,      1, NULL),
('R6K1V8',  2, 84,'2020-09-09', 2.20, '2021-09-09', 1, NULL),
('B3L4M9', 13, 85,'2016-06-06', 5.05, '2017-06-06', 1, NULL),
('Q7R2Y1',  5, 86,'2014-05-05', 3.25, '2015-05-05', 1, NULL),
('T1V8W0', 12, 87, NULL,        NULL,   NULL,      1, NULL),
('M5X3C2',  6, 88,'2015-08-08', 3.60, '2016-08-08', 1, NULL),
('H9Z4N7',  1, 89,'2019-09-09', 1.75, '2020-09-09', 1, NULL),
('L0D6F5', 10, 90, NULL,        NULL,   NULL,      9, NULL),
('C8Q1R3',  3, 91,'2012-02-02', 2.55, '2013-02-02', 1, NULL),
('V2M7P4',  9, 92,'2013-03-03', 4.65, '2014-03-03', 1, NULL),
('Z5H8T9', 15, 93, NULL,        NULL,   NULL,      1, NULL),
('G1N2K7', 11, 94,'2010-10-10', 5.50, '2011-10-10', 6, NULL),
('F3S6L0',  2, 95,'2018-08-08', 2.20, '2019-08-08', 1, NULL),
('W4E9R2',  6, 96, NULL,        NULL,   NULL,      1, NULL),
('Y7J0M5', 14, 97,'2016-01-01', 6.40, '2017-01-01', 1, NULL),
('K2P6Q8',  1, 98,'2019-09-09', 1.85, '2020-09-09', 1, NULL),
('D9R3S1',  8, 99, NULL,        NULL,   NULL,      1, NULL),
('S6V1L3', 12,100,'2017-07-07', 5.35, '2018-07-07', 1, NULL),
('U0B4C9',  4,101,'2014-04-04', 2.20, '2015-04-04', 1, NULL),
('R8H2N6',  7,102, NULL,        NULL,   NULL,      1, NULL),
('P5K3D2', 10,103,'2016-06-06', 4.30, '2017-06-06', 1, NULL),
('Z3L7G1',  2,104,'2015-05-05', 2.20, '2016-05-05', 1, NULL),
('X6M2F8', 16,105, NULL,        NULL,   NULL,      1, NULL),
('A4Q9V0', 11,106,'2013-03-03', 5.35, '2014-03-03', 1, NULL),
('B8W1N6',  5,107,'2011-11-11', 3.25, '2012-11-11', 1, NULL),
('C0R5T2',  3,108,'2020-02-02', 2.55, '2021-02-02', 1, NULL),
('M7E3K9',  9,109, NULL,        NULL,   NULL,      7, NULL),
('N1F4P6',  6,110,'2016-06-06', 4.50, '2017-06-06', 6, 'Ramas destrozadas por tormenta'),
('O2G8R5', 13,111,'2018-08-08', 5.25, '2019-08-08', 1, NULL),
('T9H0V7',  1,112,'2019-09-09', 2.30, '2020-09-09', 1, NULL),
('F9R6L2',  1,113,'2025-09-16', 0.85, '2025-09-16', 1, NULL),
('H7R9C1',  1,114,'2025-10-31', 2.5, '2025-10-31', 1, NULL),
('R3H3W6',  17,115,'2025-10-31', 0.35, '2025-10-31', 1, NULL),
('N8S6L9',  17,116,'2025-10-31', 0.45, '2025-10-31', 1, NULL),
('Q9O2V0',  1,117,'2025-10-31', 3.20, '2025-10-31', 1, NULL);
GO

INSERT INTO motivos (tipoMotivo) VALUES
('Arbol seco'),														--1
('Arbol Caído o con riesgo de caída'),								--2
('Arbol que necesita ser podado'),									--3
('Solicitar retiro de ramas y hojas de via pública'),				--4
('Reposición -Arbol retirado, robado o faltante-'),					--5
('Arbol con plagas o insectos'),									--6
('Arbol con estructura dañada'),									--7
('Arbol con raices grandes'),										--8
('Otros');															--9
GO
--TAREAS ASIGNADAS  
INSERT INTO tareas_asignadas (idCategoriaTarea,idTipoTarea,idCuadrilla,fechaAsignada,fechaPlaneada,comentarioTarea) VALUES
(1,3,5,'2025-05-12','2025-05-25','Realizar poda de mantenimiento en Parque Independencia'), --poda mantenimiento
(1,6,1,'2025-06-02','2025-06-15','Limpieza y remocion de hojas y ramas caidas'),--2
(2,9,5,'2025-06-04','2025-06-20','Control de plagas arbol en parque urquiza'),--3 x reclamo
(2,4,2,'2025-06-12','2025-06-24','Retirar arbol caido rondeau 1200'),--4  x reclamo
(1,8,4,'2025-06-23','2025-07-06','Poda ornamental Plaza Lopez'), --5
(2,7,2,'2025-07-01','2025-07-15','Arbol seco problema raices'), --6  - x reclamo
(1,5,3,'2025-07-15','2025-07-20','Raices muy grandes fuera de la tierra'), --7
(1,3,2,'2025-07-23','2025-07-06','Poda de mantenimiento programada en arboles en parque 4 plazas'), --8
(1,6,5,'2025-07-28','2025-08-04','Retiro y remocion de hojas y ramas'), --9
(2,6,4,'2025-08-12','2025-08-15','Poda mantenimiento correctivo'), --10
(1,8,5,'2025-08-18','2025-08-22','Poda ornamental en Parque España por evento'), --11
(1,7,6,'2025-08-23','2025-08-30','Necesita Riego 2 arboles parque Oeste'), --12
(1,1,4,'2025-09-03','2025-09-16','Plantado de arbol nuevo EN Bv Oroño'), --13
(2,4,2,'2025-09-07','2025-09-10','Retiro palmera caida por tormenta'), --14
(2,4,6,'2025-09-08','2025-09-08','Retiro urgente arbol en riesgo de caida por tormenta'), --15
(1,8,5,'2025-09-23','2025-10-06','Poda ornamental jazmin en parque urquiza '), --16
(1,3,5,'2025-10-05','2025-10-09','Poda mantenimiento algunos arboles en parque Paseo del caminante  '), --17
(2,2,1,'2025-10-08','2025-10-17','Reponer arbol caido en junio'), --18 poner su reclamo
(2,9,2,'2025-10-11','2025-10-14','trata plagas eucalipto '), --19 reclamo
(1,8,4,'2025-10-15','2025-10-23','Poda ornamental Plaza Lopez'), --20
(1,8,5,'2025-10-19','2025-10-28','Poda mantenimiento Plaza Lopez'), --21
(1,8,4,'2025-10-19','2025-10-24','Poda ornamental Florida'), --22
(2,2,3,'2025-10-23','2025-10-29','Reponer arbol caido en septiembre'), --23 reclamo
(1,1,5,'2025-10-28','2025-10-31','Plantado de jacarandas y jazmines'), --24
(1,3,4,'2025-11-04','2025-11-06','Poda mantenimiento en la Florida'), --25
(2,2,1,'2025-11-06',NULL,'Reponer arbusto robado, no se pudo constatar, sin resolver'), --26 reclamo, no se le asigna arbol ni fecha
(2,9,3,'2025-11-15',NULL,'Control de plagas arbol en parque urquiza no dice donde especificamente'),  --27 reclamo con tarea pendiente de fecha no se sabe todavia 
(2,8,2,'2025-11-25','2025-12-15','chequear, Podar y arreglar arbol afectado pro bandalismo pellegrini 150 '); --28
GO

INSERT INTO tareas_arbol (idTarea, idArbol) VALUES
(1,35),
(1,17),
(1,3),
(2,30),
(3,5),
(4,74),
(5,67),
(5,21),
(6,1),
(7,1),
(8,45),
(8,29),
(8,65),
(8,7),
(9,70),
(10,76),
(11,86),
(11,87),
(11,88),
(11,89),
(11,90),
(12,51),
(12,69),
(13,113),
(14,6),
(15,64),
(16,75),
(17,96),
(17,97),
(17,98),
(17,99),
(18,74),
(19,57),
(20,67),
(21,55),
(21,47),
(21,37),
(21,1),
(22,100),
(23,6),
(24,114),
(24,115),
(24,116),
(24,117),
(25,103),
(26,58),
(27,5),
(28,83);
GO

--RECLAMOS
INSERT INTO reclamos(emailReclamo,idMotivo, motivoDescripcion,fechaReclamo,idEstadoReclamo,idTarea) VALUES
('juanitagaribaldi@gmail.com',6,N'Hay magnolias lleno de bichos en Parque Urquiza cerca del rio','2025-05-22',3,3),
('majoaguirre@hotmail.com',2,N'Hay un arbol caido frente a mi casa rondeau al 1200','2025-06-07',3,4),
('juanmanuel_1982@gmail.com',2,N'Hay un arbol caido en la cuadra rondeau al 1200','2025-06-08',3,4),
('guille2025@yahoo.com.ar',2,N'arbol caido obstruyendo calle rondeau al 1200','2025-06-08',3,4),
('sabrinalopez@gmail.com.ar',9,N'Hacen jardineria a jardin particular a domicilio? ','2025-06-12',1,NULL),
('josefa@hotmail.com',8,N'arbol  debil seco de raices grandes plaza lopez','2025-06-22',3,6),
('federicogutierrez@gmail.com',3,N'quitar  palo borracho me da alergia pellegrini 100','2025-07-16',1,NULL),--este queda sin asignar porque pido un sinsentido por ejemplo
('alejandraMonti@gmail.com',3,N'podar arbol molesta en mi balcon pellegrini 100','2025-08-18',3,10),
('paulosousa@gmail.com',2,N'arbol caido por tormneta italia 1800','2025-09-07',3,14),
('luisnob@gmail.com',2,N'hay un arbol con mucho riesgo caida balcarce 1800 ','2025-09-08',3,15),
('julia2022@gmail.com',2,N'arbol con mucho riesgo caida!!! balcarce 1850 ','2025-09-08',3,15),
('robert_quiroz@gmail.com',2,N'retirar urgente un arbol con riesgo caida cuadra balcarce 1800 ','2025-09-08',3,15),
('claudioricci@yahoo.com.ar',9,N'Me gustaria que planten en mi vereda un arbol  de higos españa 4500','2025-09-16',1,NULL), --no asignado porque no reclama algo coherente
('eulalia1950@hotmail.com',6,N'arbol de eucalipto lleno de bichos necesito hagan algo colombres 2200','2025-10-06',3,19),
('alejandraMonti@gmail.com',5,N'vuelvo a solicitar recuerden reponer arbol caido retirado italia 1800','2025-10-15',3,23),
('carlosperalta@gmail.com',5,N'me robaron un arbusto de la vereda, reponerlo 9 de julio 2500 ','2025-10-31',2,26),
('juanitagaribaldi@gmail.com',6,N'Arbol con muchos insectos en parque urquiza parque urquiza ','2025-11-06',2,27),
('fernandodelia@yahoo.com',3,N'arbol ramas destrozadas ppr bandalismo pellegrini 150 ','2025-11-22',2,28),
('marinadonela75@gmail.com',3,N'Chequear arboles del parque alem estan muy descuidados parque alem','2025-11-22',1,NULL),
('georgeGarcia@hotmail.com',3,N'Arbol necesita poda  oroño 3000 ','2025-11-23',1,NULL),
('eugenio@gmail.com',7,N'arbol con tronco quebrado pellegrini 180 ','2025-11-25',1,NULL),
('LucianoDelia@gmail.com',6,N'arbol cerca de juego niños, con gusanos plaza libertad ','2025-11-28',1,NULL),
('flor44@gmail.com',8,N'Raices rompiendo vereda pellegrini 2160 ','2025-11-28',1,NULL),
('MartinFerri2022@gmail.com',4,N'Limpiar vereda hay ramas y hojas ensuciando ','2025-11-29',1,NULL),
('JesusGodoy@hotmail.com',3,N'Arboles en la costanera necesitan poda ','2025-11-30',1,NULL);
