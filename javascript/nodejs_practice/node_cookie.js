// 모듈을 추출합니다.
var http = require('http');

// 윕 서버를 만들고 실행합니다.
http.createServer(function (request, respones) {
    // 변수를 선언합니다.
    var date = new Date()
    date.setDate(date.getDate() + 7);

    // 쿠키를 입력합니다.
    respones.writeHead(200, {
        'Content-Type': 'text/html',
        'Set-Cookie': [
            'breakfast = toast;Expires = ' + date.toUTCString(),
            'dinner = chicken'
        ]
    });
    
    // 쿠키를 생성합니다.
    respones.end('<h1>' + request.headers.cookie + '<h1>');
}).listen(52275, function() {
    console.log('Server running at http://127.0.0.1:52275/');
});


// 쿠키 보고 싶으면 어플리케이션에 스토리지에 쿠키에서 확인