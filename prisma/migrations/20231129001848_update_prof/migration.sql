/*
  Warnings:

  - You are about to drop the column `projeto` on the `Professor` table. All the data in the column will be lost.
  - You are about to drop the column `projetoId` on the `Professor` table. All the data in the column will be lost.
  - You are about to drop the column `token` on the `Professor` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "Professor" DROP COLUMN "projeto",
DROP COLUMN "projetoId",
DROP COLUMN "token";
