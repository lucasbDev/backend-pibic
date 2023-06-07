import { Router } from 'express';
import * as administradorController from '../controllers/AdministradorController';

const router = Router();

router.post('/administradores', administradorController.criarAdministrador);
router.put('/administradores/:id', administradorController.atualizarAdministrador);
router.delete('/administradores/:id', administradorController.deletarAdministrador);
router.get('/administradores/:id', administradorController.obterAdministradorPorId);
router.get('/administradores', administradorController.obterTodosAdministradores);

export default router;
