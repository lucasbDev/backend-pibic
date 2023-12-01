import { Request, Response } from 'express';
import * as alunoService from '../services/Aluno';

export async function criarAluno(req: Request, res: Response) {
  const {  email,
    nomeCompletoOrientador,
    titulacao,
    matricula,
    cpfOrientador,
    cursoOrientador,
    telefoneOrientador,
    tituloProjeto,
    areaConhecimentoCNPQ,
    nomeGrupoPesquisa,
    nomeAluno,
    registroAcademico,
    indicacao,
    condicaoFinal,
    tituloPlanoTrabalho,
    emailInstitucionalAluno,
    enderecoCompleto, 
    cpfAluno, 
    rgAluno,
    dataNascAluno,
    telefoneAluno, 
    linkLattes,
    obs1} = req.body;

  const aluno = await alunoService.criarAluno({
    email,
    nomeCompletoOrientador,
    titulacao,
    matricula,
    cpfOrientador,
    cursoOrientador,
    telefoneOrientador,
    tituloProjeto,
    areaConhecimentoCNPQ,
    nomeGrupoPesquisa,
    nomeAluno,
    registroAcademico,
    indicacao,
    condicaoFinal,
    tituloPlanoTrabalho,
    emailInstitucionalAluno,
    enderecoCompleto, 
    cpfAluno, 
    rgAluno,
    dataNascAluno,
    telefoneAluno, 
    linkLattes,
    obs1,

    
  });

  res.json(aluno);
}

export async function atualizarAluno(req: Request, res: Response) {
  const { id } = req.params;
  const { email, nomeCompletoOrientador,
    titulacao,
    matricula,
    cpfOrientador,
    cursoOrientador,
    telefoneOrientador,
    tituloProjeto,
    areaConhecimentoCNPQ,
    nomeGrupoPesquisa,
    nomeAluno,
    registroAcademico,
    indicacao,
    condicaoFinal,
    tituloPlanoTrabalho,
    emailInstitucionalAluno,
    enderecoCompleto, 
    cpfAluno, 
    rgAluno,
    dataNascAluno,
    telefoneAluno, 
    linkLattes,
    obs1 } = req.body;

  const aluno = await alunoService.atualizarAluno(id, {
    email,
    nomeCompletoOrientador,
    titulacao,
    matricula,
    cpfOrientador,
    cursoOrientador,
    telefoneOrientador,
    tituloProjeto,
    areaConhecimentoCNPQ,
    nomeGrupoPesquisa,
    nomeAluno,
    registroAcademico,
    indicacao,
    condicaoFinal,
    tituloPlanoTrabalho,
    emailInstitucionalAluno,
    enderecoCompleto, 
    cpfAluno, 
    rgAluno,
    dataNascAluno,
    telefoneAluno, 
    linkLattes,
    obs1,
  });

  if (!aluno) {
    return res.status(404).json({ error: 'Aluno não encontrado' });
  }

  res.json(aluno);
}

export async function deletarAluno(req: Request, res: Response) {
  const { id } = req.params;

  await alunoService.deletarAluno(id);

  res.sendStatus(204);
}

export async function obterAlunoPorId(req: Request, res: Response) {
  const { id } = req.params;

  const aluno = await alunoService.obterAlunoPorId(id);

  if (!aluno) {
    return res.status(404).json({ error: 'Aluno não encontrado' });
  }

  res.json(aluno);
}

export async function obterTodosAlunos(req: Request, res: Response) {
  const alunos = await alunoService.obterTodosAlunos();

  res.json(alunos);
}
