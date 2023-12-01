/*
  Warnings:

  - You are about to drop the column `token` on the `Administrador` table. All the data in the column will be lost.
  - Added the required column `senha` to the `Administrador` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Administrador" DROP COLUMN "token",
ADD COLUMN     "senha" TEXT NOT NULL;
