import { Router } from 'express';
import * as alunoController from '../controllers/AlunoController';

const router = Router();

router.post('/alunos', alunoController.criarAluno);
router.put('/alunos/:id', alunoController.atualizarAluno);
router.delete('/alunos/:id', alunoController.deletarAluno);
router.get('/alunos/:id', alunoController.obterAlunoPorId);
router.get('/alunos', alunoController.obterTodosAlunos);

export default router;
