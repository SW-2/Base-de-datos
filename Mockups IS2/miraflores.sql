/*
 *ER/Studio 6.5 SQL Code Generation
 * Company :      h
 * Project :      Model1 CEM.dm1
 * Author :       Jorge Garcia
 *
 * Date Created : Friday, June 07, 2013 16:44:47
 * Target DBMS : Microsoft SQL Server 7.x
 */

/* 
 * TABLE: calificacion_estudiante 
 */

CREATE TABLE calificacion_estudiante(
    regest_id       int         IDENTITY(1,1),
    calest_fecha    datetime    NULL,
    calest_nota     float       NULL,
    curmat_id       char(10)    NOT NULL,
    per_id          int         NOT NULL,
    parc_id         int         NOT NULL,
    CONSTRAINT PK8 PRIMARY KEY NONCLUSTERED (regest_id)
)
go



IF OBJECT_ID('calificacion_estudiante') IS NOT NULL
    PRINT '<<< CREATED TABLE calificacion_estudiante >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE calificacion_estudiante >>>'
go

/* 
 * TABLE: Curso 
 */

CREATE TABLE Curso(
    cur_id              int         IDENTITY(1,1),
    cur_cupo            char(10)    NULL,
    cur_nombre          char(10)    NULL,
    cur_anio_lectivo    int         NULL,
    par_id              char(10)    NOT NULL,
    CONSTRAINT PK6 PRIMARY KEY NONCLUSTERED (cur_id)
)
go



IF OBJECT_ID('Curso') IS NOT NULL
    PRINT '<<< CREATED TABLE Curso >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Curso >>>'
go

/* 
 * TABLE: Curso_estudiante 
 */

CREATE TABLE Curso_estudiante(
    curest_id    char(10)    NOT NULL,
    cur_id       int         NOT NULL,
    per_id       int         NOT NULL,
    CONSTRAINT PK11 PRIMARY KEY NONCLUSTERED (curest_id)
)
go



IF OBJECT_ID('Curso_estudiante') IS NOT NULL
    PRINT '<<< CREATED TABLE Curso_estudiante >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Curso_estudiante >>>'
go

/* 
 * TABLE: Curso_materia 
 */

CREATE TABLE Curso_materia(
    curmat_id    char(10)    NOT NULL,
    cur_id       int         NOT NULL,
    mat_id       int         NOT NULL,
    per_id       int         NOT NULL,
    CONSTRAINT PK7 PRIMARY KEY NONCLUSTERED (curmat_id)
)
go



IF OBJECT_ID('Curso_materia') IS NOT NULL
    PRINT '<<< CREATED TABLE Curso_materia >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Curso_materia >>>'
go

/* 
 * TABLE: Estudiante 
 */

CREATE TABLE Estudiante(
    per_id               int         NOT NULL,
    est_fecha_ingreso    datetime    NULL,
    CONSTRAINT PK1 PRIMARY KEY NONCLUSTERED (per_id)
)
go



IF OBJECT_ID('Estudiante') IS NOT NULL
    PRINT '<<< CREATED TABLE Estudiante >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Estudiante >>>'
go

/* 
 * TABLE: Materia 
 */

CREATE TABLE Materia(
    mat_id        int         IDENTITY(1,1),
    mat_estado    int         NULL,
    mat_nombre    char(30)    NOT NULL,
    CONSTRAINT PK2 PRIMARY KEY NONCLUSTERED (mat_id)
)
go



IF OBJECT_ID('Materia') IS NOT NULL
    PRINT '<<< CREATED TABLE Materia >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Materia >>>'
go

/* 
 * TABLE: Padre_familia 
 */

CREATE TABLE Padre_familia(
    familiar         int    NOT NULL,
    estudiante       int    NULL,
    representante    bit    NOT NULL,
    par_id           int    NOT NULL,
    CONSTRAINT PK14 PRIMARY KEY NONCLUSTERED (familiar)
)
go



IF OBJECT_ID('Padre_familia') IS NOT NULL
    PRINT '<<< CREATED TABLE Padre_familia >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Padre_familia >>>'
go

/* 
 * TABLE: Paralelo 
 */

CREATE TABLE Paralelo(
    par_id        char(10)    NOT NULL,
    par_nombre    char(10)    NULL,
    CONSTRAINT PK10 PRIMARY KEY NONCLUSTERED (par_id)
)
go



IF OBJECT_ID('Paralelo') IS NOT NULL
    PRINT '<<< CREATED TABLE Paralelo >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Paralelo >>>'
go

/* 
 * TABLE: Parcial 
 */

CREATE TABLE Parcial(
    parc_id               int         IDENTITY(1,1),
    parc_fechaa_inicio    datetime    NULL,
    parc_fecha_fin        datetime    NOT NULL,
    parc_descripcion      char(10)    NULL,
    parc_porcentaje       float       NULL,
    per_id                int         NOT NULL,
    CONSTRAINT PK17 PRIMARY KEY NONCLUSTERED (parc_id)
)
go



IF OBJECT_ID('Parcial') IS NOT NULL
    PRINT '<<< CREATED TABLE Parcial >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Parcial >>>'
go

/* 
 * TABLE: Parentezco 
 */

CREATE TABLE Parentezco(
    par_id         int         IDENTITY(1,1),
    parent_tipo    char(10)    NULL,
    CONSTRAINT PK15 PRIMARY KEY NONCLUSTERED (par_id)
)
go



IF OBJECT_ID('Parentezco') IS NOT NULL
    PRINT '<<< CREATED TABLE Parentezco >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Parentezco >>>'
go

/* 
 * TABLE: Periodo 
 */

CREATE TABLE Periodo(
    per_id              int         IDENTITY(1,1),
    per_anio_lectivo    int         NULL,
    per_descripcion     char(20)    NULL,
    CONSTRAINT PK16 PRIMARY KEY NONCLUSTERED (per_id)
)
go



IF OBJECT_ID('Periodo') IS NOT NULL
    PRINT '<<< CREATED TABLE Periodo >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Periodo >>>'
go

/* 
 * TABLE: Persona 
 */

CREATE TABLE Persona(
    per_id                  int          IDENTITY(1,1),
    per_direccion           char(100)    NULL,
    per_nombres             char(50)     NULL,
    per_apellidos           char(50)     NULL,
    per_fecha_nacimiento    datetime     NULL,
    per_sexo                char(1)      NULL,
    per_telefono            char(10)     NULL,
    per_celular             char(10)     NULL,
    per_email               char(50)     NULL,
    per_cedula              char(10)     NULL,
    CONSTRAINT PK3 PRIMARY KEY NONCLUSTERED (per_id)
)
go



IF OBJECT_ID('Persona') IS NOT NULL
    PRINT '<<< CREATED TABLE Persona >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Persona >>>'
go

/* 
 * TABLE: Profesor 
 */

CREATE TABLE Profesor(
    per_id                int         NOT NULL,
    prof_titulo           char(10)    NULL,
    prof_fecha_ingreso    char(10)    NULL,
    CONSTRAINT PK12 PRIMARY KEY NONCLUSTERED (per_id)
)
go



IF OBJECT_ID('Profesor') IS NOT NULL
    PRINT '<<< CREATED TABLE Profesor >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Profesor >>>'
go

/* 
 * TABLE: calificacion_estudiante 
 */

ALTER TABLE calificacion_estudiante ADD CONSTRAINT RefEstudiante6 
    FOREIGN KEY (per_id)
    REFERENCES Estudiante(per_id)
go

ALTER TABLE calificacion_estudiante ADD CONSTRAINT RefCurso_materia10 
    FOREIGN KEY (curmat_id)
    REFERENCES Curso_materia(curmat_id)
go

ALTER TABLE calificacion_estudiante ADD CONSTRAINT RefParcial32 
    FOREIGN KEY (parc_id)
    REFERENCES Parcial(parc_id)
go


/* 
 * TABLE: Curso 
 */

ALTER TABLE Curso ADD CONSTRAINT RefParalelo15 
    FOREIGN KEY (par_id)
    REFERENCES Paralelo(par_id)
go


/* 
 * TABLE: Curso_estudiante 
 */

ALTER TABLE Curso_estudiante ADD CONSTRAINT RefEstudiante16 
    FOREIGN KEY (per_id)
    REFERENCES Estudiante(per_id)
go

ALTER TABLE Curso_estudiante ADD CONSTRAINT RefCurso17 
    FOREIGN KEY (cur_id)
    REFERENCES Curso(cur_id)
go


/* 
 * TABLE: Curso_materia 
 */

ALTER TABLE Curso_materia ADD CONSTRAINT RefCurso11 
    FOREIGN KEY (cur_id)
    REFERENCES Curso(cur_id)
go

ALTER TABLE Curso_materia ADD CONSTRAINT RefMateria12 
    FOREIGN KEY (mat_id)
    REFERENCES Materia(mat_id)
go

ALTER TABLE Curso_materia ADD CONSTRAINT RefProfesor23 
    FOREIGN KEY (per_id)
    REFERENCES Profesor(per_id)
go


/* 
 * TABLE: Estudiante 
 */

ALTER TABLE Estudiante ADD CONSTRAINT RefPersona18 
    FOREIGN KEY (per_id)
    REFERENCES Persona(per_id)
go


/* 
 * TABLE: Padre_familia 
 */

ALTER TABLE Padre_familia ADD CONSTRAINT RefPersona24 
    FOREIGN KEY (estudiante)
    REFERENCES Persona(per_id)
go

ALTER TABLE Padre_familia ADD CONSTRAINT RefPersona25 
    FOREIGN KEY (familiar)
    REFERENCES Persona(per_id)
go

ALTER TABLE Padre_familia ADD CONSTRAINT RefParentezco28 
    FOREIGN KEY (par_id)
    REFERENCES Parentezco(par_id)
go


/* 
 * TABLE: Parcial 
 */

ALTER TABLE Parcial ADD CONSTRAINT RefPeriodo30 
    FOREIGN KEY (per_id)
    REFERENCES Periodo(per_id)
go


/* 
 * TABLE: Profesor 
 */

ALTER TABLE Profesor ADD CONSTRAINT RefPersona22 
    FOREIGN KEY (per_id)
    REFERENCES Persona(per_id)
go


