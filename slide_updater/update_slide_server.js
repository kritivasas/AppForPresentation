var mysql 	= require('mysql'),
	http 	= require("http"),
	url 	= require("url");
http.createServer(function (req, res) {
	var connection = mysql.createConnection({
	  host     : 'localhost',
	  user     : 'reading_user',
	  password : '12345678'
	});

	res.writeHead(200, {"Content-Type": "text/html"});
	connection.connect();

	var url_parsed = url.parse(req.url, true);

	connection.query('SELECT ', function(err, rows, fields) {
	  if (err) throw err;

	  console.log('The solution is: ', rows[0].solution);
	});