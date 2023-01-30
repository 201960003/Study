// 모듈을 추출합니다.
var fs = require('fs');
var express = require('express');
var multipart = require('connect-multiparty');

// 서버를 생성합니다.
var app = express();

// 미들웨어를 설정합니다.
app.use(multipart({ uploadDir: __dirname + '/multipart' }));

// 라우터를 설정합니다.
app.get('/', function (request, response) {
  fs.readFile('8-26.html', function (error, data) {
    response.send(data.toString());
  });
});
app.post('/', function (request, response) { });

// 서버를 실행합니다.
app.listen(52273, function () {
  console.log('Server running at http://127.0.0.1:52273');
});