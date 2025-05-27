CREATE TABLE "Curso" (
  "CodigoCurso" varchar PRIMARY KEY,
  "Nombre" varchar,
  "Creditos" int,
  "Semestre" int
);

CREATE TABLE "Estudiante" (
  "Matricula" varchar PRIMARY KEY,
  "Nombre" varchar,
  "Apellido" varchar,
  "Carrera" varchar,
  "Correo" varchar
);

CREATE TABLE "Profesor" (
  "IDProfesor" varchar PRIMARY KEY,
  "Nombre" varchar,
  "Especialidad" varchar,
  "Correo" varchar
);

CREATE TABLE "Inscripcion" (
  "Matricula" varchar,
  "CodigoCurso" varchar,
  "Nota" decimal,
  "primary" key(Matricula,CodigoCurso)
);

CREATE TABLE "Imparte" (
  "IDProfesor" varchar,
  "CodigoCurso" varchar,
  "primary" key(IDProfesor,CodigoCurso)
);

ALTER TABLE "Inscripcion" ADD FOREIGN KEY ("Matricula") REFERENCES "Estudiante" ("Matricula");

ALTER TABLE "Inscripcion" ADD FOREIGN KEY ("CodigoCurso") REFERENCES "Curso" ("CodigoCurso");

ALTER TABLE "Imparte" ADD FOREIGN KEY ("IDProfesor") REFERENCES "Profesor" ("IDProfesor");

ALTER TABLE "Imparte" ADD FOREIGN KEY ("CodigoCurso") REFERENCES "Curso" ("CodigoCurso");
