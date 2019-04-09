var express = require('express');
var path = require('path');
var app = express();

app.get('/', function (req, res) {

    var ruta = path.join(__dirname+'/index.html');
    res.sendFile(ruta);
});

app.use(express.static('./'))

app.listen(5070, function () {
    console.log('Escuchando en el puerto 5070');
});

