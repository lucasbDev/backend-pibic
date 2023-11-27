import { Router } from 'express';
import * as formularioController from '../controllers/FormularioInscricaoController';

const router = Router();
router.post(
  '/formulario/',formularioController.criarFormulario);


export default router;
