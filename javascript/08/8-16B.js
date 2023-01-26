// index.js 파일
// 모듈을 추출합니다.
var express = require('express');

// 서버를 생성합니다.
var app = express();
app.use('/a', require("./8-16").router);
app.use('/b', require("./8-16").router);
app.use('/c', require("./8-16").router);

// 서버를 실행합니다.
app.listen(52273, function () {
  console.log('Server running at http://127.0.0.1:52273');
});

