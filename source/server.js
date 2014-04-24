
var http = require('http');

var server = http.createServer(function (req, res) {

	console.log("Process request", req.url);

	res.writeHead(200, {'Content-Type': 'text/plain'});
	res.end('Hello World from pio.tests!\n');
});

server.listen(process.env.PORT, '0.0.0.0');

console.log('Server ' + Date.now() + ' running at http://0.0.0.0:' + process.env.PORT + '/');


process.on('SIGTERM', function() {
	server.close(function() {
		process.exit(0);
	});

});

