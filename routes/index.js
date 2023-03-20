const express = require('express');
const router = express.Router();
const indexController = require('../controllers/indexController');
const userController = require('../controllers/userController');
// Define a base URL do aplicativo
const baseUrl = '/Express';
router.get('/', indexController.index);
router.get('/about', indexController.about);
router.get('/user/list', userController.readUser);
router.get('/user/form/create', userController.signup);
router.post('/user/create', userController.createUser);

module.exports = router;
