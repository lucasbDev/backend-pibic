import { Request, Response } from 'express';
import * as formularioService from '../services/formulario';

export async function criarFormulario(req: Request, res: Response) {
  const {
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
      status,                  
      tituloPlanoTrabalho,     
      emailInstitucionalAluno, 
      enderecoCompleto,        
      cpfAluno,                
      rgAluno,                 
      dataNascimento,          
      telefoneAluno,           
      linkLattes,   
      
    } = req.body;

    const formulario = await formularioService.criarFormulario({
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
      status,
      tituloPlanoTrabalho,
      emailInstitucionalAluno,
      enderecoCompleto,
      cpfAluno,
      rgAluno,
      dataNascimento,
      telefoneAluno,
      linkLattes,
    });

  res.json(formulario);
} 