var express = require('express');
var app = express();
var mysql = require("mysql");
var bodyParser = require('body-parser');
var ejs = require("ejs");
var apiController = require('./controllers/apiController');
var htmlController = require('./controllers/htmlController');

app.use(express.static(__dirname + '/views'));

app.set('view engine', 'ejs');
var port = process.env.PORT || 3000;

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

  app.use(bodyParser.json());

app.get('/',function(req,res){
  /*  res.sendFile(__dirname+'/views/index.html');*/
    connection.query('SELECT * FROM user',
		function(err, rows, fields) {
			if(err) console.log("Error");
            else
            console.log("Hello,"+ " " + rows[0].name);
            res.send(rows);
		}
    );

} );

app.get('/search',function(req,res){
  res.sendFile(__dirname+'/views/search.html');
} );

app.get('/user',function(req,res){
  res.sendFile(__dirname+'/views/user.html');
} );

app.get('/userlogin',function(req,res){
  res.sendFile(__dirname+'/views/ulogin.html');
} );

app.get('/business',function(req,res){
  res.sendFile(__dirname+'/views/business.html');
} );

app.get('/businesslogin',function(req,res){
  res.sendFile(__dirname+'/views/blogin.html');
} );

app.get('/products',function(req,res){
  res.sendFile(__dirname+'/views/products.html');
} );

  
  connection.query('SELECT * FROM user',
		function(err, rows, fields) {
			if(err) console.log("Error");
            else
            console.log("Hello,"+ " " + rows[0].name);
		}
    );
    
  htmlController(app);

  apiController(app);

  app.listen(3000);




