/*
  Warnings:

  - You are about to drop the `ProjetoToAluno` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `ProjetoToProfessor` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "ProjetoToAluno" DROP CONSTRAINT "ProjetoToAluno_alunoId_fkey";

-- DropForeignKey
ALTER TABLE "ProjetoToAluno" DROP CONSTRAINT "ProjetoToAluno_projetoId_fkey";

-- DropForeignKey
ALTER TABLE "ProjetoToProfessor" DROP CONSTRAINT "ProjetoToProfessor_professorId_fkey";

-- DropForeignKey
ALTER TABLE "ProjetoToProfessor" DROP CONSTRAINT "ProjetoToProfessor_projetoId_fkey";

-- DropTable
DROP TABLE "ProjetoToAluno";

-- DropTable
DROP TABLE "ProjetoToProfessor";
