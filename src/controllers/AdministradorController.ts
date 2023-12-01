import { Request, Response } from 'express';
import * as administradorService from '../services/Administrador';

export async function criarAdministrador(req: Request, res: Response) {
  const { nome, email, senha } = req.body;

  const administrador = await administradorService.criarAdministrador({
    nome,
    email,
    senha,
  });

  res.json(administrador);
}

export async function atualizarAdministrador(req: Request, res: Response) {
  const { id } = req.params;
  const { nome, email } = req.body;

  const administrador = await administradorService.atualizarAdministrador(id, {
    nome,
    email,
  });

  if (!administrador) {
    return res.status(404).json({ error: 'Administrador não encontrado' });
  }

  res.json(administrador);
}

export async function deletarAdministrador(req: Request, res: Response) {
  const { id } = req.params;

  await administradorService.deletarAdministrador(id);

  res.sendStatus(204);
}

export async function obterAdministradorPorId(req: Request, res: Response) {
  const { id } = req.params;

  const administrador = await administradorService.obterAdministradorPorId(id);

  if (!administrador) {
    return res.status(404).json({ error: 'Administrador não encontrado' });
  }

  res.json(administrador);
}

export async function obterTodosAdministradores(req: Request, res: Response) {
  const administradores = await administradorService.obterTodosAdministradores();

  res.json(administradores);
}
