DROP TABLE Animales;
DROP TABLE Usuarios;

CREATE TABLE Usuarios (
    dni         INTEGER NOT NULL PRIMARY KEY,
    nombre      VARCHAR(25) NOT NULL,
    apellidos   VARCHAR(100),
    email       VARCHAR(50),
    direccion   VARCHAR(50),
    usuario     VARCHAR(25),
    pass        VARCHAR(10)
);

CREATE TABLE Animales (
    id          INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
    nombre      VARCHAR(25) NOT NULL,
    edad        INTEGER,
    sexo        BOOLEAN,
    especie     VARCHAR(15) NOT NULL,
    raza        VARCHAR(15),
    estado      VARCHAR(15),
    chip        BOOLEAN,
    vacunas     BOOLEAN,
    descripcion VARCHAR(140),
    dnidueno    INTEGER,

CONSTRAINT FK_dnidueno FOREIGN KEY(dnidueno) REFERENCES Usuarios ON DELETE CASCADE
);

insert into Usuarios values (77360609, 'Daniel',   'Moya',     'dani@uja.es',      'C/ Anonima' ,          'dml',  '123');
insert into Usuarios values (23000579, 'Juanfra',  'Abán',     'juanfra@uja.es',   'Plaza de España, 5',   'jfaf', '555');
insert into Usuarios values (57923023, 'Ana',      'Frank',    'ana@uja.es',       'C/ Germania',          'af',   '666');

insert into Animales (nombre, edad, sexo, especie, raza, estado, chip, vacunas, descripcion, dnidueno)
values ('Bolita de nieve',   5, true,    'perro',    'mestizo',          'Perfecto', true,   true,   'Gracioso y divertido', 77360609);
insert into Animales (nombre, edad, sexo, especie, raza, estado, chip, vacunas, descripcion, dnidueno)
values ('Esperanza',         3, false,   'gato',     'siamés',           'Enfermo',  true,   false,  'Muy elegante',         23000579);
insert into Animales (nombre, edad, sexo, especie, raza, estado, chip, vacunas, descripcion, dnidueno)
values ('Colgantitos',       1, true,    'perro',    'pastor alemán',    'Atlético', false,  true,   'Mucha energía',        57923023);
