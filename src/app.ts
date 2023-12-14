import professorRoutes from './routes/ProfessorRouter';
import projetoRoutes from './routes/ProjetoRouter';
import alunoRoutes from './routes/AlunoRouter';
import administradorRoutes from './routes/AdministradorRouter';
import express from 'express';
import cors from 'cors';
import multer from 'multer';
import  multerS3 from 'multer-s3';
import * as aws from 'aws-sdk';
import * as AWS from 'aws-sdk';
import * as fs from 'fs';
import * as https from 'https';
import * as path from 'path';


const keyPath = path.join(__dirname, 'cert', 'private.key');
const certPath = path.join(__dirname, 'cert', 'certificate.crt');
const caPath = path.join(__dirname, 'cert', 'ca_bundle.crt');
const cred = { key: fs.readFileSync(keyPath), cert: fs.readFileSync(certPath), ca: fs.readFileSync(caPath) };

require('dotenv').config();

aws.config.update({
  accessKeyId: process.env.AWS_ACCESS_KEY_ID,
  secretAccessKey: process.env.AWS_SECRET_ACCESS_KEY,
  region: process.env.AWS_REGION,
});

const s3 = new AWS.S3();

const storage = multerS3({
  s3: s3 as any,
  bucket: process.env.AWS_BUCKET_NAME || '',
  contentType: multerS3.AUTO_CONTENT_TYPE,
  key: function (req, file, cb) {
    cb(null, Date.now().toString() + '-' + file.originalname);
  },
});

const upload = multer({ storage });

const app = express();
app.use(express.json());
app.use(cors());

app.use("/uploads", express.static("/uploads"));


app.post("/formulario/upload", upload.fields([
  { name: 'planoTrabalho' },
  { name: 'historicoEscolar' },
  { name: 'certificadoMatricula' },
]), (req, res) => {
  return res.json('enviado com sucesso');
});

app.post("/formulario/prof/upload", upload.fields([
  { name: 'CurriculoLattes' },
  { name: 'GrupoPesquisa' },
]), (req, res) => {
  return res.json('enviado com sucesso');
});

app.use(administradorRoutes);
app.use(alunoRoutes);
app.use(professorRoutes);
app.use(projetoRoutes);




app.listen(3000, () => {
  console.log('Servidor executando na porta 3000');
});

const httpsServer = https.createServer(cred,app)
httpsServer.listen(8443)