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

-- CreateTable
CREATE TABLE "_ProfessorToProjeto" (
    "A" TEXT NOT NULL,
    "B" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "_AlunoToProjeto" (
    "A" TEXT NOT NULL,
    "B" TEXT NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "_ProfessorToProjeto_AB_unique" ON "_ProfessorToProjeto"("A", "B");

-- CreateIndex
CREATE INDEX "_ProfessorToProjeto_B_index" ON "_ProfessorToProjeto"("B");

-- CreateIndex
CREATE UNIQUE INDEX "_AlunoToProjeto_AB_unique" ON "_AlunoToProjeto"("A", "B");

-- CreateIndex
CREATE INDEX "_AlunoToProjeto_B_index" ON "_AlunoToProjeto"("B");

-- AddForeignKey
ALTER TABLE "_ProfessorToProjeto" ADD CONSTRAINT "_ProfessorToProjeto_A_fkey" FOREIGN KEY ("A") REFERENCES "Professor"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_ProfessorToProjeto" ADD CONSTRAINT "_ProfessorToProjeto_B_fkey" FOREIGN KEY ("B") REFERENCES "Projeto"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_AlunoToProjeto" ADD CONSTRAINT "_AlunoToProjeto_A_fkey" FOREIGN KEY ("A") REFERENCES "Aluno"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_AlunoToProjeto" ADD CONSTRAINT "_AlunoToProjeto_B_fkey" FOREIGN KEY ("B") REFERENCES "Projeto"("id") ON DELETE CASCADE ON UPDATE CASCADE;
