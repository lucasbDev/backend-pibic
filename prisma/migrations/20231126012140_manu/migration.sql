/*
  Warnings:

  - You are about to drop the column `createdAt` on the `Administrador` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `Administrador` table. All the data in the column will be lost.
  - You are about to drop the column `projetoId` on the `Aluno` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `Professor` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `Professor` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `Projeto` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `Projeto` table. All the data in the column will be lost.
  - Added the required column `projeto` to the `Aluno` table without a default value. This is not possible if the table is not empty.
  - Added the required column `projeto` to the `Professor` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "Aluno" DROP CONSTRAINT "Aluno_projetoId_fkey";

-- DropForeignKey
ALTER TABLE "Professor" DROP CONSTRAINT "Professor_projetoId_fkey";

-- AlterTable
ALTER TABLE "Administrador" DROP COLUMN "createdAt",
DROP COLUMN "updatedAt";

-- AlterTable
ALTER TABLE "Aluno" DROP COLUMN "projetoId",
ADD COLUMN     "projeto" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "Professor" DROP COLUMN "createdAt",
DROP COLUMN "updatedAt",
ADD COLUMN     "projeto" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "Projeto" DROP COLUMN "createdAt",
DROP COLUMN "updatedAt";
