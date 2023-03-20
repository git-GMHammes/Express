// Express\static\start_mcv.txt
// Express\static\cria.sql
// node app.js
const express = require('express');
const path = require('path');
const app = express();
// Define o arqqui de rotas
const indexRouter = require('./routes/index');
// Configuração do middleware para servir arquivos estáticos
app.use('/bootstrap5', express.static(path.join(__dirname, 'static', 'bootstrap5'), {
  type: 'text/css',
  extensions: ['css']
}));
// Para utilizar o MySQL no seu projeto Express, você precisa instalar o pacote do MySQL via npm. Abra o terminal na pasta do seu projeto e execute o seguinte comando:
// npm install mysql
const mysql = require('mysql');
// Em seguida, você precisa criar uma conexão com o seu banco de dados. Para fazer isso, adicione o seguinte código logo abaixo da linha que acabamos de adicionar:
const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'Express'
});
connection.connect((err) => {
  if (err) {
    console.error(`Erro ao conectar ao MySQL: ${err}`);
    return;
  }
  console.log('Conexão com o MySQL estabelecida com sucesso.');
});

app.set('view engine', 'ejs');
app.use(express.urlencoded({ extended: false }));
app.use(express.static('public'));
app.use('/', indexRouter);

app.listen(3000, () => {
  console.log('Servidor rodando na porta 3000');
});
