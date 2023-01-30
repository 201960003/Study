// 모듈을 추출합니다.
var http = require('http');

// 모듈을 사용합니다.
http.createServer(function(request,response){
    // 쿠키가 있는 지 확인
    if (request.headers.cookie) {
        // 쿠키를 추출하고 분해합니다.
        var cookie = request.headers.cookie.split(';').map(function(element) {
            var element = element.split('=');
            return {
                key: element[0],
                value: element[1]
            };
        });
        // 응답합니다.
        response.end('<h1>' + JSON.stringify(cookie) + '</h1>');
    } else {
        // 쿠키를 생성합니다.
        response.writeHead(200, {
            'Content-Type': 'text/html',
            'Set-Cookie': ['name = sss', 'region = Busan' ]
        });
        response.write('<head><meta charset="UTF-8"></meta></head>')
        // 응답합니다.
        response.end('<h1>쿠키를 생성했습니다.</h2>');
    }
}).listen(52273, function () {
    console.log('Server Runnig at http://127.0.0.1:52273');
});