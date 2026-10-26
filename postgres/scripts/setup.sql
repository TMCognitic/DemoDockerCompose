-- Schéma
CREATE SCHEMA IF NOT EXISTS "GestProjet";

-- Table
CREATE TABLE IF NOT EXISTS "GestProjet"."Projet"
(
    "Id" integer GENERATED ALWAYS AS IDENTITY,
    "Nom" varchar(128) NOT NULL,
    "Creation" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT "PK_Projet" PRIMARY KEY ("Id"),
    CONSTRAINT "UK_Projet_Nom" UNIQUE ("Nom")
);

-- Données
INSERT INTO "GestProjet"."Projet" ("Nom")
VALUES ('Satisfactory'), ('Factorio'), ('Modulus');