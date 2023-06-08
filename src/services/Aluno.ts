import { Prisma, PrismaClient, Aluno } from '@prisma/client';

const prisma = new PrismaClient();

export async function criarAluno(data: Prisma.AlunoCreateInput) {
  const aluno = await prisma.aluno.create({ data });
  return aluno;
}

export async function atualizarAluno(id: string, data: Prisma.AlunoUpdateInput) {
  const aluno = await prisma.aluno.update({ where: { id }, data });
  return aluno;
}

export async function deletarAluno(id: string) {
  await prisma.aluno.delete({ where: { id } });
}

export async function obterAlunoPorId(id: string) {
  const aluno = await prisma.aluno.findUnique({ where: { id } });
  return aluno;
}

export async function obterTodosAlunos() {
  const aluno = await prisma.aluno.findMany();

  return aluno;
}

