/*
  Warnings:

  - You are about to drop the `Administrador` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `_AlunoToProjeto` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `_ProfessorToProjeto` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `projetoId` to the `Aluno` table without a default value. This is not possible if the table is not empty.
  - Changed the type of `matricula` on the `Aluno` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Added the required column `projetoId` to the `Professor` table without a default value. This is not possible if the table is not empty.
  - Changed the type of `status` on the `Projeto` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- DropForeignKey
ALTER TABLE "_AlunoToProjeto" DROP CONSTRAINT "_AlunoToProjeto_A_fkey";

-- DropForeignKey
ALTER TABLE "_AlunoToProjeto" DROP CONSTRAINT "_AlunoToProjeto_B_fkey";

-- DropForeignKey
ALTER TABLE "_ProfessorToProjeto" DROP CONSTRAINT "_ProfessorToProjeto_A_fkey";

-- DropForeignKey
ALTER TABLE "_ProfessorToProjeto" DROP CONSTRAINT "_ProfessorToProjeto_B_fkey";

-- AlterTable
ALTER TABLE "Aluno" ADD COLUMN     "projetoId" TEXT NOT NULL,
DROP COLUMN "matricula",
ADD COLUMN     "matricula" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "Professor" ADD COLUMN     "projetoId" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "Projeto" DROP COLUMN "status",
ADD COLUMN     "status" BOOLEAN NOT NULL;

-- DropTable
DROP TABLE "Administrador";

-- DropTable
DROP TABLE "_AlunoToProjeto";

-- DropTable
DROP TABLE "_ProfessorToProjeto";

-- CreateTable
CREATE TABLE "ProjetoToProfessor" (
    "projetoId" TEXT NOT NULL,
    "professorId" TEXT NOT NULL,

    CONSTRAINT "ProjetoToProfessor_pkey" PRIMARY KEY ("projetoId","professorId")
);

-- CreateTable
CREATE TABLE "ProjetoToAluno" (
    "projetoId" TEXT NOT NULL,
    "alunoId" TEXT NOT NULL,

    CONSTRAINT "ProjetoToAluno_pkey" PRIMARY KEY ("projetoId","alunoId")
);

-- AddForeignKey
ALTER TABLE "Aluno" ADD CONSTRAINT "Aluno_projetoId_fkey" FOREIGN KEY ("projetoId") REFERENCES "Projeto"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Professor" ADD CONSTRAINT "Professor_projetoId_fkey" FOREIGN KEY ("projetoId") REFERENCES "Projeto"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ProjetoToProfessor" ADD CONSTRAINT "ProjetoToProfessor_projetoId_fkey" FOREIGN KEY ("projetoId") REFERENCES "Projeto"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ProjetoToProfessor" ADD CONSTRAINT "ProjetoToProfessor_professorId_fkey" FOREIGN KEY ("professorId") REFERENCES "Professor"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ProjetoToAluno" ADD CONSTRAINT "ProjetoToAluno_projetoId_fkey" FOREIGN KEY ("projetoId") REFERENCES "Projeto"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ProjetoToAluno" ADD CONSTRAINT "ProjetoToAluno_alunoId_fkey" FOREIGN KEY ("alunoId") REFERENCES "Aluno"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
