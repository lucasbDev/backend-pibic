import { Request, Response } from "express";
import * as professorService from "../services/Professor";

export async function criarProfessor(req: Request, res: Response) {
  const { nome, email, matricula, curso } = req.body;

  const professor = await professorService.criarProfessor({
    nome,
    email,
    matricula,
    curso
    
  });

  res.json(professor);
}

export async function atualizarProfessor(req: Request, res: Response) {
  const { id } = req.params;
  const { nome, email, matricula, curso } = req.body;

  const professor = await professorService.atualizarProfessor(id, {
    nome,
    email,
    matricula,
    curso,
  });

  if (!professor) {
    return res.status(404).json({ error: "Professor não encontrado" });
  }

  res.json(professor);
}

export async function deletarProfessor(req: Request, res: Response) {
  const { id } = req.params;

  await professorService.deletarProfessor(id);

  res.sendStatus(204);
}

export async function obterProfessorPorId(req: Request, res: Response) {
  const { id } = req.params;

  const professor = await professorService.obterProfessorPorId(id);

  if (!professor) {
    return res.status(404).json({ error: "Professor não encontrado" });
  }

  res.json(professor);
}

export async function obterTodosProfessores(req: Request, res: Response) {
  const professores = await professorService.obterProfessor();

  res.json(professores);
}
