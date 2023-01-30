// 모듈을 추출합니다.
var express = require('express');

// 서버를 생성합니다.
var app = express();

// 미들웨어를 생성합니다.
app.use(function(request, response) {
    // User-Agent 속성을 추출
    var agent = request.header('User-Agent');
    console.log(request.headers);
    console.log(agent);
    // 응답합니다.
    // 상태 코드만 보낼 때는 sendstatus() 매서드를 사용합니다.
    response.sendStatus(200);
});

// 서버를 실행합니다.
app.listen(52273, function() {
    console.log('http://127.0.0.1:52273');
});