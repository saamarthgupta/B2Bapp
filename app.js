var express = require('express');
var app = express();
var mysql = require("mysql");
var bodyParser = require('body-parser');
var ejs = require("ejs");
var bus_id;

app.set('view engine', 'ejs');
var port = process.env.PORT || 3000;
app.use(bodyParser.urlencoded({extended:true}));
app.use(bodyParser.json());
app.use( express.static( "public" ) );
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
        
        loadResults=JSON.parse(JSON.stringify(rows));
        
        res.render(__dirname+'/views/search', {
          loadResults: loadResults,
          tvalue: tvalue
        });
      }
	});
});

app.post('/query', function(req,res){
  console.log("ID = "+ req.body.id);
  var id=req.body.id;
  
  connection.query('SELECT * FROM business WHERE id = ?',id,function(err,rows){
    if(err)
      console.log("No Results Found.");
    else
    {
      loadResults = JSON.parse(JSON.stringify(rows));
      res.render(__dirname + "/views/query",{
        loadResults : loadResults
      });
    }
  });
});

app.post('/sendQuery', function(req,res){
  var result = {
    id_bus  : req.body.bus_id,
    name : req.body.user_name,
    email : req.body.user_mail,
    mobile : req.body.mobile,
    require : req.body.requirement,
    quantity : req.body.quantity,
    price : req.body.e_price,
  };
  console.log(result);

  connection.query("INSERT INTO queries SET ? ",result, function(err,res){
  if(err) console.log("Error, Please Try Again.");
  else
    console.log('Last record insert id:', res.idqueries);
  });
  res.render(__dirname + "/views/index");
});
var qdetails ;
var loadResults;
function callq2(bus_id)
{
  connection.query("SELECT * FROM business WHERE id = ?",bus_id, function(err,rows){
  if(err)
    console.log("DB Error");    
    console.log(rows[0].id + " AND " + bus_id);
    loadResults = JSON.parse(JSON.stringify(rows));
    console.log(loadResults[0]);  
  });
}
function callq3(bus_id)
{
  connection.query("SELECT * FROM queries WHERE id_bus = ?",bus_id, function(err,rows){
    if(err)
      console.log("DB Error");
    qdetails =  JSON.parse(JSON.stringify(rows));
  });
}
app.post('/business',function(req,res){
  
  connection.query("SELECT idbusiness_login FROM business_login WHERE email_id = ? AND password = ?",[req.body.mail,req.body.pass],function(err,rows){
    if(err)
    { 
       console.log("Error in Getting Business ID");
       res.render(__dirname+'/views/businesslogin.ejs');
    }
    else
    {
      bus_id = rows[0].idbusiness_login;
      callq2(bus_id);
      callq3(bus_id);
      console.log("First Loop BID = "+bus_id);  
      function render()
      {
        console.log("Rendering Page");
        res.render(__dirname+'/views/business.ejs',{
          loadResults : loadResults,
          qdetails : qdetails
          });
      }
      setTimeout(render,1000);
    }
  });       
});

app.post('/query', function(req,res){
  console.log(req.body.value);
});

app.get('/businesslogin',function(req,res){
  res.render(__dirname+'/views/businesslogin.ejs');

} );

app.get('/products',function(req,res){
  res.render(__dirname+'/views/products.ejs');
} );

 
  app.listen(port);




