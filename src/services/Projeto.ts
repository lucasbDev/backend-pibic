import { Prisma, PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();

export async function criarProjeto(data: Prisma.ProjetoCreateInput) {
  const projeto = await prisma.projeto.create({ data });
  return projeto;
}

export async function atualizarProjeto(id: string, data: Prisma.ProjetoUpdateInput) {
  const projeto = await prisma.projeto.update({ where: { id }, data });
  return projeto;
}

export async function deletarProjeto(id: string) {
  await prisma.projeto.delete({ where: { id } });
}

export async function obterProjetoPorId(id: string) {
  const projeto = await prisma.projeto.findUnique({ where: { id } });
  return projeto;
}

export async function obterTodosProjetos() {
  const projetos = await prisma.projeto.findMany({
    include: {
      Professor: true,
      Aluno: true
    }
  });
  return projetos;
}
