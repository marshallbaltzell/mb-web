// var http = require('http');
// var fs = require('fs');
//
// http.createServer(function(request, response) {
//   var url = request.url;
//   switch(url) {
//     case '/':
//       getStaticFileContent(response, 'public/home.html','text/html');
//       break;
//     case '/about':
//       getStaticFileContent(response, 'public/about.html','text/html');
//       break;
//     case '/contact':
//       getStaticFileContent(response, 'public/contact.html','text/html');
//       break;
//     default:
//       response.writeHead(404, {'Content-Type':'text/plain'});
//       response.end('404 - Page Not Found.');
//   }
// }).listen(3001);
// console.log('server running at http://localhost:3001');
//
// function getStaticFileContent(response, filepath, contentType) {
//   fs.readFile(filepath, function(error, data) {
//     if(error) {
//       response.writeHead(500, {'Content-Type':'text/plain'});
//       response.end('500 - Internal Server Error.');
//     }
//     if(data) {
//       response.writeHead(200, {'Content-Type':'text/html'});
//       response.end(data);
//     }
//   })
// }

var express = require('express');
var exphbs  = require('express-handlebars');

var app = express();

app.engine('.hbs', exphbs({defaultLayout: 'main', extname: '.hbs'}));
app.set('view engine', '.hbs');

app.use(express.static('public'));

app.get('/', function (req, res) {
    res.render('home');
});

app.get('/designs', function (req, res) {
    res.render('designs');
});

app.get('/about', function (req, res) {
    res.render('about');
});

app.get('/contact', function (req, res) {
    res.render('contact');
});

app.listen(3000);
