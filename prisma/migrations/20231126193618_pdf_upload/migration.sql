/*
  Warnings:

  - You are about to drop the column `certificadoMatricula` on the `FormularioInscricao` table. All the data in the column will be lost.
  - You are about to drop the column `historicoEscolar` on the `FormularioInscricao` table. All the data in the column will be lost.
  - You are about to drop the column `planoTrabalho` on the `FormularioInscricao` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "FormularioInscricao" DROP COLUMN "certificadoMatricula",
DROP COLUMN "historicoEscolar",
DROP COLUMN "planoTrabalho";
