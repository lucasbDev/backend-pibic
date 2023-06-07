-- CreateTable
CREATE TABLE "Administrador" (
    "id" TEXT NOT NULL,
    "nome" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "token" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Administrador_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Professor" (
    "id" TEXT NOT NULL,
    "nome" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "matricula" TEXT NOT NULL,
    "curso" TEXT NOT NULL,
    "token" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Professor_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Aluno" (
    "id" TEXT NOT NULL,
    "nome" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "matricula" TEXT NOT NULL,
    "curso" TEXT NOT NULL,
    "token" TEXT,
    "status" BOOLEAN NOT NULL,
    "indicacao" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Aluno_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Projeto" (
    "id" TEXT NOT NULL,
    "titulo" TEXT NOT NULL,
    "areaConhecimento" TEXT NOT NULL,
    "escola" TEXT NOT NULL,
    "status" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Projeto_pkey" PRIMARY KEY ("id")
);

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

-- CreateTable
CREATE TABLE "FormularioInscricao" (
    "id" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "nomeCompletoOrientador" TEXT NOT NULL,
    "titulacao" TEXT NOT NULL,
    "matricula" INTEGER NOT NULL,
    "cpfOrientador" TEXT NOT NULL,
    "cursoOrientador" TEXT NOT NULL,
    "telefoneOrientador" INTEGER NOT NULL,
    "tituloProjeto" TEXT NOT NULL,
    "areaConhecimentoCNPQ" TEXT NOT NULL,
    "nomeGrupoPesquisa" TEXT NOT NULL,
    "nomeAluno" TEXT NOT NULL,
    "registroAcademico" INTEGER NOT NULL,
    "indicacao" TEXT NOT NULL,
    "condicaoFinal" TEXT NOT NULL,
    "status" TEXT NOT NULL,
    "tituloPlanoTrabalho" TEXT NOT NULL,
    "emailInstitucionalAluno" TEXT NOT NULL,
    "enderecoCompleto" TEXT NOT NULL,
    "cpfAluno" TEXT NOT NULL,
    "rgAluno" TEXT NOT NULL,
    "dataNascimento" TIMESTAMP(3) NOT NULL,
    "telefoneAluno" INTEGER NOT NULL,
    "linkLattes" TEXT NOT NULL,
    "planoTrabalho" TEXT NOT NULL,
    "historicoEscolar" TEXT NOT NULL,
    "certificadoMatricula" TEXT NOT NULL,
    "obs1" TEXT,
    "obs2" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "FormularioInscricao_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "ProjetoToProfessor" ADD CONSTRAINT "ProjetoToProfessor_projetoId_fkey" FOREIGN KEY ("projetoId") REFERENCES "Projeto"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ProjetoToProfessor" ADD CONSTRAINT "ProjetoToProfessor_professorId_fkey" FOREIGN KEY ("professorId") REFERENCES "Professor"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ProjetoToAluno" ADD CONSTRAINT "ProjetoToAluno_projetoId_fkey" FOREIGN KEY ("projetoId") REFERENCES "Projeto"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ProjetoToAluno" ADD CONSTRAINT "ProjetoToAluno_alunoId_fkey" FOREIGN KEY ("alunoId") REFERENCES "Aluno"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
