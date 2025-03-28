const express = require('express');
const router = express.Router();

const Aluno = require('./controllers/aluno');
const Telefone = require('./controllers/telefone');
const Atividade = require('./controllers/atividade');

router.get('/aluno', Aluno.read);
router.get('/aluno/:ra', Aluno.readOne);
router.post('/aluno', Aluno.create);
router.put('/aluno/:ra', Aluno.update);
router.delete('/aluno/:ra', Aluno.remove);


router.get('/telefone', Telefone.read);
router.post('/telefone', Telefone.create);
router.put('/telefone/:id', Telefone.update);

router.get('/atividade', Atividade.read);
router.post('/atividade', Atividade.create);
router.put('/atividade/:id', Atividade.update);
router.delete('/atividade/:id', Atividade.remove);

router.get('/', (req, res) => {
  return res.json({ titulo: 'Escola ACME' });
});

module.exports = router;