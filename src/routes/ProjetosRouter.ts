import { Router } from 'express';
import * as projetoController from '../controllers/ProjetoController';

const router = Router();

router.post('/projetos', projetoController.criarProjeto);
router.put('/projetos/:id', projetoController.atualizarProjeto);
router.delete('/projetos/:id', projetoController.deletarProjeto);
router.get('/projetos/:id', projetoController.obterProjetoPorId);
router.get('/projetos', projetoController.obterTodosProjetos);

export default router;
