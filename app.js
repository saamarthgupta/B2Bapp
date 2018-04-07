var express = require('express');
var app = express();
var mysql = require("mysql");

var apiController = require('./controllers/apiController');
var htmlController = require('./controllers/htmlController');

app.use('/.assets', express.static(__dirname + '/public'));
app.set('view engine', 'ejs');
var port = process.env.PORT || 3000;

app.get('/',function(req,res){
    res.send('<html><head></head><body><h1>HELLO</h1></body></html>')

} );

var connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "1234",
    database  : "b2bc_app"
  });
  
  connection.connect(function(err) {
    if (err) 
    console.log("Not Connected");
    else
    console.log("Connected!");
  });

  htmlController(app);

  apiController(app);


  app.listen(3000);




