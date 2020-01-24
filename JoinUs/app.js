// var mysql = require('mysql');
 
// var connection = mysql.createConnection({
//   host     : 'localhost',
//   user     : 'root',  // your root username (leave as root)
//   database : 'campaign',   // the name of your db (create this if you haven't already)
//   password : 'Password@a' // your root user's password
// });

// connection.connect(function(err) {
//   if (err) throw err;
//   console.log("Connected!");
// });

// var q = 'SELECT CURTIME() as time, CURDATE() as date, NOW() as now';
// connection.query(q, function (error, results, fields) {
//   if (error) throw error;
//   console.log(results[0].time);
//   console.log(results[0].date);
//   console.log(results[0].now);
// });

// connection.end();

// code to generate 500 users
// var mysql = require('mysql');
// var faker = require('faker');
 
 
// var connection = mysql.createConnection({
//   host     : 'localhost',
//   user     : 'root',
//   database : 'join_us',
//   password : 'Password@a'
// });
 
 
// var data = [];
// for(var i = 0; i < 500; i++){
//     data.push([
//         faker.internet.email(),
//         faker.date.past()
//     ]);
// }
 
 
// var q = 'INSERT INTO users (email, created_at) VALUES ?';
 
// connection.query(q, [data], function(err, result) {
//   console.log(err);
//   console.log(result);
// });
 
// connection.end();


var express = require("express");
var app = express();

app.get("/", function(req,res) {
  res.send("You've reached the home page");
});

app.get("/joke", function(req,res){
  var joke = "What do you call a dog that does magic tricks? A labracador";
  res.send(joke);
});

app.get("/random_num", function(req,res){
  var random_num = Math.floor(Math.random()*10)+1;
  res.send("your lucky number is "+random_num);
  
});

app.listen(8080, function(){
  console.log("Server running on 8080!");
})