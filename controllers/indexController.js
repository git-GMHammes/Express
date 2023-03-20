const indexController = {
    index: (req, res) => {
      res.render('index', { title: 'Página Inicial' });
    },
    about: (req, res) => {
      res.render('about', { title: 'Sobre Nós' });
    }
  };
  
  module.exports = indexController;
  