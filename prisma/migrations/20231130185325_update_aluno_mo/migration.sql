/*
  Warnings:

  - You are about to drop the `FormularioAluno` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "FormularioAluno";

-- CreateTable
CREATE TABLE "Aluno" (
    "id" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "nomeCompletoOrientador" TEXT NOT NULL,
    "titulacao" TEXT NOT NULL,
    "matricula" TEXT NOT NULL,
    "cpfOrientador" TEXT NOT NULL,
    "cursoOrientador" TEXT NOT NULL,
    "telefoneOrientador" TEXT NOT NULL,
    "tituloProjeto" TEXT NOT NULL,
    "areaConhecimentoCNPQ" TEXT NOT NULL,
    "nomeGrupoPesquisa" TEXT NOT NULL,
    "nomeAluno" TEXT NOT NULL,
    "registroAcademico" TEXT NOT NULL,
    "indicacao" TEXT NOT NULL,
    "condicaoFinal" TEXT NOT NULL,
    "tituloPlanoTrabalho" TEXT NOT NULL,
    "emailInstitucionalAluno" TEXT NOT NULL,
    "enderecoCompleto" TEXT NOT NULL,
    "cpfAluno" TEXT NOT NULL,
    "rgAluno" TEXT NOT NULL,
    "dataNascAluno" TEXT NOT NULL,
    "telefoneAluno" TEXT NOT NULL,
    "linkLattes" TEXT NOT NULL,
    "obs1" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Aluno_pkey" PRIMARY KEY ("id")
);
