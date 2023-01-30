// 모듈을 추출합니다.
var http = require('http');

// 모듈을 사용합니다.
http.createServer(function (request, response) {
    // GET COOKIE
    var cookie = request.headers.cookie;

    // SET COOKIE
    response.writeHead(200, {
        'Content-Type': 'text/html',
        'Set-Cookie': ['name = sss', 'region = Seosan' ]
    });
    // 응답합니다.
    response.end('<h1>' + JSON.stringify(cookie) + '<h2>');
}).listen(52273, function () {
    console.log('Server Runnig at http://127.0.0.1:52273');
});