// routerA.js 파일
// 모듈과 변수 선언
var express = require('express');
var router = express.Router();

// 페이지 라우트
router.get('/index', function (request, response) {
  response.send('<h1>Index Page</h1>');
});

// 외부로 뺍니다.
exports.router = router