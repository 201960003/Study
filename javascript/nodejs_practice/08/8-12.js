// 모듈을 추출합니다.
var express = require('express');

// 서버를 생성합니다.
var app = express();

// 라우터를 설정합니다.
app.get('/a', function (request, response) {
  response.send('<a href="/b">Go to B</a>');
});
app.get('/b', function (request, response) {
  response.send('<a href="/a">Go to A</a>');
});

// 서버를 실행합니다.
app.listen(52273, function () {
  console.log('Server running at http://127.0.0.1:52273');
});