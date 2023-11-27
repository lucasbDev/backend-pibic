
import { Prisma, PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();

export async function criarFormulario(data: Prisma.FormularioInscricaoCreateInput) {
    const formulario = await prisma.formularioInscricao.create({ data });
    return formulario;

}
