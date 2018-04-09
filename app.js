var express = require('express');
var app = express();
var mysql = require("mysql");
var bodyParser = require('body-parser');
var ejs = require("ejs");


app.set('view engine', 'ejs');
var port = process.env.PORT || 3000;
app.use(bodyParser.urlencoded());
app.use(bodyParser.json());

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
  res.render("index.ejs");
} );
app.post('/search', function(req,res){
  res.render(__dirname+'/views/search.ejs');
  var value = req.body.value;
  console.log(value);
}
);

app.get('/user',function(req,res){
  res.render(__dirname+'/views/user.ejs');
} );

app.get('/userlogin',function(req,res){
  res.render(__dirname+'/views/ulogin.ejs');
} );

app.get('/business',function(req,res){
  res.render(__dirname+'/views/business.ejs');
} );

app.get('/businesslogin',function(req,res){
  res.render(__dirname+'/views/blogin.ejs');
} );

app.get('/products',function(req,res){
  res.render(__dirname+'/views/products.ejs');
} );


 
  app.listen(port);




