require('dotenv').config()
const express = require('express');
const app = express();

const keycloak = require('./configs/keycloak-config.js').initKeycloak();
app.use(keycloak.middleware());

const testController = require('./controllers/test-controller.js');
app.use('/test', testController);

app.get('/', function(req, res){
   res.send("Server is up!");
});

app.listen(3000);