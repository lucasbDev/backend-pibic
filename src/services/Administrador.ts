import { Prisma, PrismaClient, Administrador } from '@prisma/client';

const prisma = new PrismaClient();

export async function criarAdministrador(data: Prisma.AdministradorCreateInput): Promise<Administrador> {
  const administrador = await prisma.administrador.create({ data });
  return administrador;
}

export async function atualizarAdministrador(id: string, data: Prisma.AdministradorUpdateInput) {
  const administrador = await prisma.administrador.update({ where: { id }, data });
  return administrador;
}

export async function deletarAdministrador(id: string) {
  await prisma.administrador.delete({ where: { id } });
}

export async function obterAdministradorPorId(id: string) {
  const administrador = await prisma.administrador.findUnique({ where: { id } });
  return administrador;
}

export async function obterTodosAdministradores() {
  const administradores = await prisma.administrador.findMany();
  return administradores;
}
