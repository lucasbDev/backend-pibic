import { Request, Response } from 'express';
import * as projetoService from '../services/Projeto';

export async function criarProjeto(req: Request, res: Response) {
  const { titulo, areaConhecimento, escola, status } = req.body;

  const projeto = await projetoService.criarProjeto({
    titulo,
    areaConhecimento,
    escola,
    status,
  });

  res.json(projeto);
}

export async function atualizarProjeto(req: Request, res: Response) {
  const { id } = req.params;
  const { titulo, areaConhecimento, escola, status } = req.body;

  const projeto = await projetoService.atualizarProjeto(id, {
    titulo,
    areaConhecimento,
    escola,
    status,
  });

  if (!projeto) {
    return res.status(404).json({ error: 'Projeto não encontrado' });
  }

  res.json(projeto);
}

export async function deletarProjeto(req: Request, res: Response) {
  const { id } = req.params;

  await projetoService.deletarProjeto(id);

  res.sendStatus(204);
}

export async function obterProjetoPorId(req: Request, res: Response) {
  const { id } = req.params;

  const projeto = await projetoService.obterProjetoPorId(id);

  if (!projeto) {
    return res.status(404).json({ error: 'Projeto não encontrado' });
  }

  res.json(projeto);
}

export async function obterTodosProjetos(req: Request, res: Response) {
  const projetos = await projetoService.obterTodosProjetos();

  res.json(projetos);
}
