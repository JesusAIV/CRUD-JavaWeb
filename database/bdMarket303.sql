create database bdMarket303;

use bdMarket303;

create table producto 
(
	id int not null auto_increment primary key,
    descripcion varchar(100),
    categoria varchar(100),
    precio double
);

create table cliente
(
	id int not null auto_increment primary key,
    nombre varchar(100),
    numruc varchar(11),
    direccion varchar(100),
    telefono varchar(20)
);

insert into producto (descripcion,categoria,precio) values ('TE DHARAMSALA','BEBIDAS',18);
insert into producto (descripcion,categoria,precio) values ('CERVEZA TIBETANA BARLEY','BEBIDAS',19);
insert into producto (descripcion,categoria,precio) values ('SIROPE DE REGALIZ','CONDIMENTOS',10);
insert into producto (descripcion,categoria,precio) values ('ESPECIAS CAJUN DEL CHEF ANTON','CONDIMENTOS',22);
insert into producto (descripcion,categoria,precio) values ('MEZCLA GUMBO DEL CHEF ANTON','CONDIMENTOS',21.35);
insert into producto (descripcion,categoria,precio) values ('MERMELADA DE GROSELLAS DE LA ABUELA','CONDIMENTOS',25);
insert into producto (descripcion,categoria,precio) values ('PERAS SECAS ORGANICAS DEL TIO BOB','FRUTAS/VERDURAS',30);
insert into producto (descripcion,categoria,precio) values ('SALSA DE ARANDANOS NORTHWOODS','CONDIMENTOS',40);
insert into producto (descripcion,categoria,precio) values ('BUEY MISHI KOBE','CARNES',97);
insert into producto (descripcion,categoria,precio) values ('PEZ ESPADA','PESCADO/MARISCO',31);
insert into producto (descripcion,categoria,precio) values ('QUESO CABRALES','LACTEOS',21);
insert into producto (descripcion,categoria,precio) values ('QUESO MANCHEGO LA PASTORA','LACTEOS',38);
insert into producto (descripcion,categoria,precio) values ('ALGAS KONBU','PESCADO/MARISCO',6);
insert into producto (descripcion,categoria,precio) values ('CUAJADA DE JUDIAS','FRUTAS/VERDURAS',23.25);
insert into producto (descripcion,categoria,precio) values ('SALSA DE SOJA BAJA EN SODIO','CONDIMENTOS',15.5);
insert into producto (descripcion,categoria,precio) values ('POSTRE DE MERENGUE PAVLOVA','REPOSTERIA',17.45);
insert into producto (descripcion,categoria,precio) values ('CORDERO ALICE SPRINGS','CARNES',39);
insert into producto (descripcion,categoria,precio) values ('LANGOSTINOS TIGRE CARNARVON','PESCADO/MARISCO',62.5);
insert into producto (descripcion,categoria,precio) values ('PASTAS DE TE DE CHOCOLATE','REPOSTERIA',9.2);
insert into producto (descripcion,categoria,precio) values ('MERMELADA DE SIR RODNEYS','REPOSTERIA',81);
insert into producto (descripcion,categoria,precio) values ('BOLLOS DE SIR RODNEYS','REPOSTERIA',10);
insert into producto (descripcion,categoria,precio) values ('PAN DE CENTENO CRUJIENTE ESTILO GUSTAFS','GRANOS/CEREALES',21);
insert into producto (descripcion,categoria,precio) values ('PAN FINO','GRANOS/CEREALES',9);
insert into producto (descripcion,categoria,precio) values ('REFRESCO GUARANA FANTASTICA','BEBIDAS',4.5);
insert into producto (descripcion,categoria,precio) values ('CREMA DE CHOCOLATE Y NUECES NUNUCA','REPOSTERIA',14);
insert into producto (descripcion,categoria,precio) values ('OSITOS DE GOMA GUMBÄR','REPOSTERIA',31.23);
insert into producto (descripcion,categoria,precio) values ('CHOCOLATE SCHOGGI','REPOSTERIA',43.9);
insert into producto (descripcion,categoria,precio) values ('COL FERMENTADA RÖSSLE','FRUTAS/VERDURAS',45.6);
insert into producto (descripcion,categoria,precio) values ('SALCHICHA THÜRINGER','CARNES',123.79);
insert into producto (descripcion,categoria,precio) values ('ARENQUE BLANCO DEL NOROESTE','PESCADO/MARISCO',25.89);
insert into producto (descripcion,categoria,precio) values ('QUESO GORGONZOLA TELINO','LACTEOS',12.5);
insert into producto (descripcion,categoria,precio) values ('QUESO MASCARPONE FABIOLI','LACTEOS',32);
insert into producto (descripcion,categoria,precio) values ('QUESO DE CABRA','LACTEOS',2.5);
insert into producto (descripcion,categoria,precio) values ('CERVEZA SASQUATCH','BEBIDAS',14);
insert into producto (descripcion,categoria,precio) values ('CERVEZA NEGRA STEELEYE','BEBIDAS',18);
insert into producto (descripcion,categoria,precio) values ('ESCABECHE DE ARENQUE','PESCADO/MARISCO',19);
insert into producto (descripcion,categoria,precio) values ('SALMON AHUMADO GRAVAD','PESCADO/MARISCO',26);
insert into producto (descripcion,categoria,precio) values ('VINO CÔTE DE BLAYE','BEBIDAS',263.5);
insert into producto (descripcion,categoria,precio) values ('LICOR VERDE CHARTREUSE','BEBIDAS',18);
insert into producto (descripcion,categoria,precio) values ('CARNE DE CANGREJO DE BOSTON','PESCADO/MARISCO',18.4);
insert into producto (descripcion,categoria,precio) values ('CREMA DE ALMEJAS ESTILO NUEVA INGLATERRA','PESCADO/MARISCO',9.65);
insert into producto (descripcion,categoria,precio) values ('TALLARINES DE SINGAPUR','GRANOS/CEREALES',14);
insert into producto (descripcion,categoria,precio) values ('CAFE DE MALASIA','BEBIDAS',46);
insert into producto (descripcion,categoria,precio) values ('AZUCAR NEGRA MALACCA','CONDIMENTOS',19.45);
insert into producto (descripcion,categoria,precio) values ('ARENQUE AHUMADO','PESCADO/MARISCO',9.5);
insert into producto (descripcion,categoria,precio) values ('ARENQUE SALADO','PESCADO/MARISCO',12);
insert into producto (descripcion,categoria,precio) values ('GALLETAS ZAANSE','REPOSTERIA',9.5);
insert into producto (descripcion,categoria,precio) values ('CHOCOLATE HOLANDES','REPOSTERIA',12.75);
insert into producto (descripcion,categoria,precio) values ('REGALIZ','REPOSTERIA',20);
insert into producto (descripcion,categoria,precio) values ('CHOCOLATE BLANCO','REPOSTERIA',16.25);
insert into producto (descripcion,categoria,precio) values ('MANZANAS SECAS MANJIMUP','FRUTAS/VERDURAS',53);
insert into producto (descripcion,categoria,precio) values ('CEREALES PARA FILO','GRANOS/CEREALES',7);
insert into producto (descripcion,categoria,precio) values ('EMPANADA DE CARNE','CARNES',32.8);
insert into producto (descripcion,categoria,precio) values ('EMPANADA DE CERDO','CARNES',7.45);
insert into producto (descripcion,categoria,precio) values ('PATE CHINO','CARNES',24);
insert into producto (descripcion,categoria,precio) values ('GNOCCHI DE LA ABUELA ALICIA','GRANOS/CEREALES',38);
insert into producto (descripcion,categoria,precio) values ('RAVIOLIS ANGELO','GRANOS/CEREALES',19.5);
insert into producto (descripcion,categoria,precio) values ('CARACOLES DE BORGOÑA','PESCADO/MARISCO',13.25);
insert into producto (descripcion,categoria,precio) values ('RACLET DE QUESO COURDAVAULT','LACTEOS',55);
insert into producto (descripcion,categoria,precio) values ('CAMEMBERT PIERROT','LACTEOS',34);
insert into producto (descripcion,categoria,precio) values ('SIROPE DE ARCE','CONDIMENTOS',28.5);
insert into producto (descripcion,categoria,precio) values ('TARTA DE AZUCAR','REPOSTERIA',49.3);
insert into producto (descripcion,categoria,precio) values ('SANDWICH DE VEGETALES','CONDIMENTOS',43.9);
insert into producto (descripcion,categoria,precio) values ('BOLLOS DE PAN DE WIMMER','GRANOS/CEREALES',33.25);
insert into producto (descripcion,categoria,precio) values ('SALSA DE PIMIENTO PICANTE DE LUISIANA','CONDIMENTOS',21.05);
insert into producto (descripcion,categoria,precio) values ('ESPECIAS PICANTES DE LUISIANA','CONDIMENTOS',17);
insert into producto (descripcion,categoria,precio) values ('CERVEZA LAUGHING LUMBERJACK','BEBIDAS',14);
insert into producto (descripcion,categoria,precio) values ('BARRAS DE PAN DE ESCOCIA','REPOSTERIA',12.5);
insert into producto (descripcion,categoria,precio) values ('QUESO GUDBRANDSDALS','LACTEOS',36);
insert into producto (descripcion,categoria,precio) values ('CERVEZA OUTBACK','BEBIDAS',15);
insert into producto (descripcion,categoria,precio) values ('CREMA DE QUESO FLTEMYS','LACTEOS',21.5);
insert into producto (descripcion,categoria,precio) values ('QUESO MOZZARELLA GIOVANNI','LACTEOS',34.8);
insert into producto (descripcion,categoria,precio) values ('CAVIAR ROJO','PESCADO/MARISCO',15);
insert into producto (descripcion,categoria,precio) values ('QUESO DE SOJA LONGLIFE','FRUTAS/VERDURAS',10);
insert into producto (descripcion,categoria,precio) values ('CERVEZA KLOSTERBIER','BEBIDAS',7.75);
insert into producto (descripcion,categoria,precio) values ('LICOR CLOUDBERRY','BEBIDAS',18);
insert into producto (descripcion,categoria,precio) values ('SALSA VERDE ORIGINAL FRANKFURTER','CONDIMENTOS',13);

insert into cliente (nombre, numruc, direccion, telefono) values ('ACS INDUSTRIA METAL MECANICA E.I.R.L.','20458127400','LIMA','999888101');
insert into cliente (nombre, numruc, direccion, telefono) values ('AQUILES MARCELINO AGUILAR ZACARÍAS','10161204396','LIMA','999888102');
insert into cliente (nombre, numruc, direccion, telefono) values ('ATLAS MOTOS E.I.R.LTDA.','20406502377','PUNO','999888103');
insert into cliente (nombre, numruc, direccion, telefono) values ('CARROCERIAS INTEGRADAS S.A. - CAISA','20331634281','LIMA','999888104');
insert into cliente (nombre, numruc, direccion, telefono) values ('CARROCERIAS SAN LUIS E.I.R.L.','20102259735','LIMA','999888105');
insert into cliente (nombre, numruc, direccion, telefono) values ('CESAR AUGUSTO GARCIA SALAZAR','10165286371','LIMA','999888106');
insert into cliente (nombre, numruc, direccion, telefono) values ('COMPANY BUSINESSES S.A.C.','20516333694','CALLAO','999888107');
insert into cliente (nombre, numruc, direccion, telefono) values ('COMPAÑIA INDUSTRIAL DE CARROCERIAS S.A.C.','20538154564','LIMA','999888108');
insert into cliente (nombre, numruc, direccion, telefono) values ('COMPAÑIA PERUANA DE REMOLQUES S.A.','20135468941','CALLAO','999888109');
insert into cliente (nombre, numruc, direccion, telefono) values ('CONSERMET S.A.C.','20481405999','LA LIBERTAD','999888110');
insert into cliente (nombre, numruc, direccion, telefono) values ('CORPORACION CAYMAN S.A.C.','20493190611','LORETO','999888111');
insert into cliente (nombre, numruc, direccion, telefono) values ('CORPORACIÓN METÁLICA DEL ACERO S.A.C.','20513855941','CALLAO','999888112');
insert into cliente (nombre, numruc, direccion, telefono) values ('CORPORACION WRT S.A.C. - WRT S.A.C.','20536160206','LIMA','999888113');
insert into cliente (nombre, numruc, direccion, telefono) values ('DC EXPREES S.A.C.','20600465377','LA LIBERTAD','999888114');
insert into cliente (nombre, numruc, direccion, telefono) values ('DECO HOGAR E.I.R.L.','20527721173','MADRE DE DIOS','999888115');
insert into cliente (nombre, numruc, direccion, telefono) values ('ECOENERGY S.A.C.','20393530244','UCAYALI','999888116');
insert into cliente (nombre, numruc, direccion, telefono) values ('EHF S.A.C.','20600040562','LIMA','999888117');
insert into cliente (nombre, numruc, direccion, telefono) values ('ESTRUCTURAS METALICAS OLMEDO E.I.R.L.','20261624916','LIMA','999888118');
insert into cliente (nombre, numruc, direccion, telefono) values ('SEMIREMOLQUES Y MAQUINARIAS E.I.R.L.','20600220668','LIMA','999888119');
insert into cliente (nombre, numruc, direccion, telefono) values ('FABRICACION Y SERVICIOS MULTIPLES UCEDA S.A.C.','20481952965','LA LIBERTAD','999888120');
insert into cliente (nombre, numruc, direccion, telefono) values ('MARQUEZ MACHADO E.I.R.L. - FAB. Y SERV. R.M. Y M. E.I.R.L.','20454151713','AREQUIPA','999888121');
insert into cliente (nombre, numruc, direccion, telefono) values ('FABRICACIONES ALCANTARA E.I.R.L.','20458841714','LIMA','999888122');
insert into cliente (nombre, numruc, direccion, telefono) values ('FABRICACIONES BRA S.A.C.','20477313214','LA LIBERTAD','999888123');
insert into cliente (nombre, numruc, direccion, telefono) values ('FABRICACIONES METÁLICAS ARNOLD S.A.C.','20477664513','LA LIBERTAD','999888124');
insert into cliente (nombre, numruc, direccion, telefono) values ('FABRICACIONES METALICAS CARRANZA S.A.C. FAMECA S.A.C.','20132108294','LA LIBERTAD','999888125');
insert into cliente (nombre, numruc, direccion, telefono) values ('FABRICACIONES METALICAS LUJAN S.A.C','20481066680','LA LIBERTAD','999888126');
insert into cliente (nombre, numruc, direccion, telefono) values ('FABRICACIONES METALICAS Y SERVICIOS DIESEL S.A.C - FAMEDI S.A.C.','20505769148','LIMA','999888127');
insert into cliente (nombre, numruc, direccion, telefono) values ('FABRICACIONES MONTOYA S.R.L.','20531544090','SAN MARTIN','999888128');
insert into cliente (nombre, numruc, direccion, telefono) values ('FABRIMETAL S.A.C.','20101633820','LIMA','999888129');
insert into cliente (nombre, numruc, direccion, telefono) values ('FACAMESUR E.I.R.L.','20218677640','AREQUIPA','999888130');
insert into cliente (nombre, numruc, direccion, telefono) values ('FACTORIA ANTONIO PINTO S.A.','20100070465','LIMA','999888131');
insert into cliente (nombre, numruc, direccion, telefono) values ('FACTORIA BARBOZA S.R.L.','20486029839','JUNIN','999888132');
insert into cliente (nombre, numruc, direccion, telefono) values ('FACTORIA FACJOCA S.A.C.','20454650043','AREQUIPA','999888133');
insert into cliente (nombre, numruc, direccion, telefono) values ('FACTORIA FELISUR E.I.R.L.','20454773986','AREQUIPA','999888134');
insert into cliente (nombre, numruc, direccion, telefono) values ('FACTORIA J.C. E.I.R.L.','20453910513','AREQUIPA','999888135');
insert into cliente (nombre, numruc, direccion, telefono) values ('FACTORIA METAL CHOQUE E.I.R.L.','20498433210','AREQUIPA','999888136');
insert into cliente (nombre, numruc, direccion, telefono) values ('FACTORIA PETER BILL INTEX S.R.L.','20454114354','AREQUIPA','999888137');
insert into cliente (nombre, numruc, direccion, telefono) values ('FACTORIA TALLERES ORION E.I.R.L.','20454289154','AREQUIPA','999888138');
insert into cliente (nombre, numruc, direccion, telefono) values ('FACTORIA Y DISTRIBUCIONES SAN JORGE E.I.R.L.','20455782598','AREQUIPA','999888139');
insert into cliente (nombre, numruc, direccion, telefono) values ('MECANICA E INDUSTRIA S.R.L. - FACSEMIN','20453947352','AREQUIPA','999888140');
insert into cliente (nombre, numruc, direccion, telefono) values ('FACTORY MULTISERVICIOS MAG S.R.L.','20601745641','PUNO','999888141');
insert into cliente (nombre, numruc, direccion, telefono) values ('FAMA ANDINA S.A.C.','20524006945','LA LIBERTAD','999888142');
insert into cliente (nombre, numruc, direccion, telefono) values ('FASEPA FACTORIA SEÑOR DE PAMPACUCHO E.I.R.L.','20498631011','AREQUIPA','999888143');
insert into cliente (nombre, numruc, direccion, telefono) values ('GRUPO C & R VELOZ S.A.C.','20551034021','LIMA','999888144');
insert into cliente (nombre, numruc, direccion, telefono) values ('GRUPO SERMET S.A.C.','20549685316','CALLAO','999888145');
insert into cliente (nombre, numruc, direccion, telefono) values ('HALCON S.A.','20354180911','LA LIBERTAD','999888146');
insert into cliente (nombre, numruc, direccion, telefono) values ('HONDA SELVA DEL PERU S.A','20493508645','LORETO','999888147');
insert into cliente (nombre, numruc, direccion, telefono) values ('IBIMCO PERU S.A.C.','20522599591','LIMA','999888148');
insert into cliente (nombre, numruc, direccion, telefono) values ('INDUSTRIA CARROCERA DEL PERU S.A.C. - INCAPER','20519105676','LIMA','999888149');
insert into cliente (nombre, numruc, direccion, telefono) values ('INDUSTRIA METALICA BULLON S.A.C.','20514745031','LIMA','999888150');
insert into cliente (nombre, numruc, direccion, telefono) values ('INDUSTRIA METALICAS EL RAFA E.I.R.L.','20393095301','UCAYALI','999888151');
insert into cliente (nombre, numruc, direccion, telefono) values ('INDUSTRIAL UNION S.R.L.','20527080445','CUSCO','999888152');
insert into cliente (nombre, numruc, direccion, telefono) values ('INDUSTRIAS  RODOS  S.R.L.','20302083747','LIMA','999888153');
insert into cliente (nombre, numruc, direccion, telefono) values ('INDUSTRIAS ANCALAYO S.A.C.','20568135271','JUNIN','999888154');
insert into cliente (nombre, numruc, direccion, telefono) values ('INDUSTRIAS FIRME E.I.R.L.','20526949065','CUSCO','999888155');
insert into cliente (nombre, numruc, direccion, telefono) values ('INDUSTRIAS MECANICAS DEL SUR S.A.C.','20519775132','TACNA','999888156');
insert into cliente (nombre, numruc, direccion, telefono) values ('INDUSTRIAS METALICAS ALYER S.R.L.','20302830828','LIMA','999888157');
insert into cliente (nombre, numruc, direccion, telefono) values ('INDUSTRIAS METALICAS AREQUIPA S.A.C.','20498196927','AREQUIPA','999888158');
insert into cliente (nombre, numruc, direccion, telefono) values ('INDUSTRIAS TRICAR S.A.C.','20393063956','UCAYALI','999888159');
insert into cliente (nombre, numruc, direccion, telefono) values ('INKA TRAYLERS S.R.L.','20473646804','LIMA','999888160');
insert into cliente (nombre, numruc, direccion, telefono) values ('J & K INDUBARZA E.I.R.L.','20601849519','JUNIN','999888161');
insert into cliente (nombre, numruc, direccion, telefono) values ('J & S AUTOMOTRIZ ASOCIADOS E.I.R.L.','20601333342','MADRE DE DIOS','999888162');
insert into cliente (nombre, numruc, direccion, telefono) values ('J.K.F. MOTOS PERU S.A.C.','20447884624','PUNO','999888163');
insert into cliente (nombre, numruc, direccion, telefono) values ('JR GROUP INDUSTRIAS S.A.C.','20430948076','LIMA','999888164');
insert into cliente (nombre, numruc, direccion, telefono) values ('JUAN SALVATIERRA CONDEZO','10070728996','LIMA','999888165');
insert into cliente (nombre, numruc, direccion, telefono) values ('L & S NASSI S.A.C.','20481103399','LA LIBERTAD','999888166');
insert into cliente (nombre, numruc, direccion, telefono) values ('LIMA TRAYLERS S.A.C.','20504082564','LIMA','999888167');
insert into cliente (nombre, numruc, direccion, telefono) values ('LQ TRADING IMPORT EXPORT S.A.C.','20468450217','LIMA','999888168');
insert into cliente (nombre, numruc, direccion, telefono) values ('MANUEL AUGUSTO ROCHA DIAZ E.I.R.L.','20531350309','SAN MARTIN','999888169');
insert into cliente (nombre, numruc, direccion, telefono) values ('METALLUM S.A.C.','20481782199','LA LIBERTAD','999888170');
insert into cliente (nombre, numruc, direccion, telefono) values ('MOTORES DIESEL ANDINOS S.A. - MODASA','20417926632','LIMA','999888171');
insert into cliente (nombre, numruc, direccion, telefono) values ('MOTORES LATINOAMERICANOS S.A.C.','20393292041','UCAYALI','999888172');
insert into cliente (nombre, numruc, direccion, telefono) values ('MOTOS STILOS S.A.C.','20507099069','LIMA','999888173');
insert into cliente (nombre, numruc, direccion, telefono) values ('MOTOSERVICIOS LOS OLIVOS S.R.L.','20295008190','LIMA','999888174');
insert into cliente (nombre, numruc, direccion, telefono) values ('PLANTA INDUSTRIAL CHEMOTO S.A.C.','20529722304','LAMBAYEQUE','999888175');
insert into cliente (nombre, numruc, direccion, telefono) values ('PROFESIONALES COSECA S.A.C.','20510485557','LIMA','999888176');
insert into cliente (nombre, numruc, direccion, telefono) values ('PUMA MOTORS E.I.R.L.','20454074115','AREQUIPA','999888177');
insert into cliente (nombre, numruc, direccion, telefono) values ('RAJUNSA S.A.C.','20522969193','CALLAO','999888178');
insert into cliente (nombre, numruc, direccion, telefono) values ('REMOLQUES TRAMONTANA S.A.C.','20514038199','LIMA','999888179');
insert into cliente (nombre, numruc, direccion, telefono) values ('TANQUES CISTERNAS AFINES E.I.R.L. - RECONCISA','20486064235','JUNIN','999888180');
insert into cliente (nombre, numruc, direccion, telefono) values ('RISSING MOTORS S.A.C.','20544431022','LIMA','999888181');
insert into cliente (nombre, numruc, direccion, telefono) values ('RMB SATECI S.A.C.','20508596732','LIMA','999888182');
insert into cliente (nombre, numruc, direccion, telefono) values ('RONCO MOTORSS S.A.C.','20510421583','LIMA','999888183');
insert into cliente (nombre, numruc, direccion, telefono) values ('ROSITA INDUSTRIAS METALICAS E.I.R.L.','20393056232','UCAYALI','999888184');
insert into cliente (nombre, numruc, direccion, telefono) values ('ROYAL PROYECTOS Y SERVICIOS INDUSTRIALES S.A.C.','20504044123','LIMA','999888185');
insert into cliente (nombre, numruc, direccion, telefono) values ('FABRICACIONES SEÑOR DE HUANCA E.I.R.L. - SEMAFASH E.I.R.L.','20453885578','AREQUIPA','999888186');
insert into cliente (nombre, numruc, direccion, telefono) values ('SERVICIOS INGENIERIA ELECTROMECANICA S.A.C. - SIELSAC','20480028971','LAMBAYEQUE','999888187');
insert into cliente (nombre, numruc, direccion, telefono) values ('SGM INGENIEROS E.I.R.L.','20498476539','AREQUIPA','999888188');
insert into cliente (nombre, numruc, direccion, telefono) values ('SHIMBA SELVA S.A.C.','20394031292','UCAYALI','999888189');
insert into cliente (nombre, numruc, direccion, telefono) values ('TRACTO CAMIONES USA S.A.C.','20293774308','LIMA','999888190');
insert into cliente (nombre, numruc, direccion, telefono) values ('TRANS OIL BUNKER S.A.C.','20515738461','LIMA','999888191');
insert into cliente (nombre, numruc, direccion, telefono) values ('TRANSVISA E.I.R.L.','20131173734','LIMA PROVINCIAS','999888192');
insert into cliente (nombre, numruc, direccion, telefono) values ('TRICAR TECNOLOGIA S.A.C.','20513769351','LIMA','999888193');
insert into cliente (nombre, numruc, direccion, telefono) values ('VF MOTOPARTS S.R.LTDA.','20341019819','LIMA','999888194');
insert into cliente (nombre, numruc, direccion, telefono) values ('VRAMEL CONTRATISTAS E.I.R.L.','20329847978','CALLAO','999888195');
insert into cliente (nombre, numruc, direccion, telefono) values ('ZEUS PERU S.A.C','20545029406','LIMA','999888196');
insert into cliente (nombre, numruc, direccion, telefono) values ('ZINSAC DEL PERU S.A.C.','20556578746','LIMA','999888197');


select * from producto;
select * from cliente;