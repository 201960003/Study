// 모듈을 추출합니다.
var http = require('http');

// 윕 서버를 만들고 실행합니다.
http.createServer(function (request, respones) {
    respones.writeHead(200, {'Content-Type': 'text/html'});
    respones.end('<h1>Hello World...!<h1>');
}).listen(52273, function() {
    console.log('Server running at http://127.0.0.1:52273/');
});