var express = require('express');
var app = express();
var sql = require("mysql");


var port = process.env.PORT || 3000;

app.get('/',function(req,res){
    res.send('<html><head></head><body><h1>HELLO</h1></body></html>')

} );

app.listen(3000);

var con = mysql.createConnection({
    host: "localhost",
    user: "cierdo",
    password: "1234",
    database  : "b2bc_app"
  });
  
  con.connect(function(err) {
    if (err) throw err;
    console.log("Connected!");
  });


