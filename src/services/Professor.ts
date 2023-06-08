import { Prisma, PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();

export async function criarProfessor(data: Prisma.ProfessorCreateInput) {
  const professor = await prisma.professor.create({ data });
  return professor;
}

export async function atualizarProfessor(id: string, data: Prisma.ProfessorUpdateInput) {
  const professor = await prisma.professor.update({ where: { id }, data });
  return professor;
}

export async function deletarProfessor(id: string) {
  await prisma.professor.delete({ where: { id } });
}

export async function obterProfessorPorId(id: string) {
  const professor = await prisma.professor.findUnique({ where: { id } });
  return professor;
}

export async function obterProfessor() {
  const professor = await prisma.professor.findMany();

  return professor;
}