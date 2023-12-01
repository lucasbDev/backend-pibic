/*
  Warnings:

  - You are about to drop the column `createdAt` on the `Aluno` table. All the data in the column will be lost.
  - You are about to drop the column `indicacao` on the `Aluno` table. All the data in the column will be lost.
  - You are about to drop the column `status` on the `Aluno` table. All the data in the column will be lost.
  - You are about to drop the column `token` on the `Aluno` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `Aluno` table. All the data in the column will be lost.
  - You are about to drop the `FormularioInscricao` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `emailProfessor` to the `Aluno` table without a default value. This is not possible if the table is not empty.
  - Added the required column `telefone` to the `Aluno` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Aluno" DROP COLUMN "createdAt",
DROP COLUMN "indicacao",
DROP COLUMN "status",
DROP COLUMN "token",
DROP COLUMN "updatedAt",
ADD COLUMN     "emailProfessor" TEXT NOT NULL,
ADD COLUMN     "telefone" TEXT NOT NULL;

-- DropTable
DROP TABLE "FormularioInscricao";
