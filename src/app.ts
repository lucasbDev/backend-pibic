import express from 'express';
import cors from 'cors';
import professorRoutes from './routes/ProfessorRouter';
import projetoRoutes from './routes/ProjetoRouter';
import alunoRoutes from './routes/AlunoRouter';
import administradorRoutes from './routes/AdministradorRouter';

const app = express();
app.use(express.json());
app.use(cors());

app.use(administradorRoutes);
app.use(alunoRoutes);
app.use(professorRoutes);
app.use(projetoRoutes);



app.listen(3000, () => {
  console.log('Servidor executando na porta 3000');
});
