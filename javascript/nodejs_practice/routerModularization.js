// 모듈을 추출합니다.
var express = require('express');

// 서버를 생성합니다.
var app = express();

// 라우터를 생성합니다.
var routerA = express.Router();
var routerB = express.Router();

// 라우터 A를 설정합니다.
routerA.get('/index', function (request, response) {
    response.send('<h1>A Index Page</h1>');
});

// 라우터 B를 설정합니다.
routerB.get('/index', function (request, response) {
    response.send('<h1>B Index Page</h1>');
});

// 라우터를 설정합니다.
app.use('/a', routerA);
app.use('/b', routerB);

// 서버를 실행합니다.
app.listen(52273, function() {
    console.log('http://127.0.0.1:52273');
});