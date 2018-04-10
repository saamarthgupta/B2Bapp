var express = require('express');
var app = express();
var mysql = require("mysql");
var bodyParser = require('body-parser');
var ejs = require("ejs");
var bus_id = 0;
var querry;
app.set('view engine', 'ejs');
var port = process.env.PORT || 3000;
app.use(bodyParser.urlencoded({extended:true}));
app.use(bodyParser.json());

var connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "Ritik@1234567890",
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
  res.render("index");
} );

app.post('/search', function(req,res){
  var value = req.body.value;
  var tvalue = value;
  console.log(value);
  value=value[0]+"%";
  connection.query('SELECT * FROM business WHERE name like ?',value,
		function(err, rows) {
      if(err) 
        console.log("No Results Found");
      else
      {
        console.log("Hello,"+ " " + rows[0].id);
        loadResults=JSON.parse(JSON.stringify(rows));
        console.log(loadResults.length + " = length");

        res.render(__dirname+'/views/search', {
          loadResults: loadResults,
          tvalue: tvalue
        });
      }
	});
});

app.get('/user',function(req,res){
  res.render(__dirname+'/views/user');
} );

app.get('/userlogin',function(req,res){
  res.render(__dirname+'/views/ulogin');
} );

app.post('/business',function(req,res){

  console.log(req.body.mail,req.body.pass);
  
  querry = "idbusiness_login from business_login where email_id = '"+req.body.mail+"' and password = '"+req.body.pass+"'";
  connection.query("SELECT ?",querry,function(err,rows){
    if(err)
      console.log("Error");
    else
    {
      console.log(rows[0]);
      bus_id = rows[0].idbusiness_login;
      console.log(bus_id);
      res.render(__dirname+'/views/business.ejs');
    }
  });
  
  
} );

app.get('/businesslogin',function(req,res){
  res.render(__dirname+'/views/businesslogin.ejs');

} );

app.get('/products',function(req,res){
  res.render(__dirname+'/views/products.ejs');
} );

app.post('/queries', function(req,res){
  
});

 
  app.listen(port);




