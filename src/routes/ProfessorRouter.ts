import { Router } from 'express';
import * as professorController from '../controllers/ProfessorController';

const router = Router();

router.post('/professores', professorController.criarProfessor);
router.put('/professores/:id', professorController.atualizarProfessor);
router.delete('/professores/:id', professorController.deletarProfessor);
router.get('/professores/:id', professorController.obterProfessorPorId);
router.get('/professores', professorController.obterTodosProfessores);

export default router;
