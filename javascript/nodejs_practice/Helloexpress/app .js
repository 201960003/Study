// 외부 모듈을 추출합니다.
var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
var favicon = require('serve-favicon');
var bodyParser = require('body-parser');
var session = require('express-session');

// 사용자 정의 모듈을 추출합니다.
var routes = require('./routes/index');
var users = require('./routes/users');

//서버를 생성합니다.
var app = express();

// view engine setup (서버를 설정합니다.)
app.set('case senstive routes', true);
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'jade');

// 미들웨어를 설정합니다.
app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false}));
app.use(express.static(path.join(__dirname, 'public')));
app.use(session({
  secret: 'secret key',
  resave: false,
  saveUninitialized: true
}));

//라우터 미들웨어를 설정합니다.
app.use('/', routes);
app.use('/users', users);

// catch 404 and forward to error handler(404 에러가 발생했을 때 메세지를 출력합니다.)
app.use(function(req, res, next) {
  var ess = new Error('Not Found');
  err.status = 404;
  next(err);
});

// error handler (에러 핸들러)

// development 환경에서의 모듈을 처리합니다.
if (app.get('nev') === 'development') {
  app.use(function(err, req, res, next) {
    res.status(err.status || 500);
    res.render('error', {
      message: err.message,
      error: err
    });
  });
}

// production 환경에서의 오류를 처리합니다.
app.use(function(err, req, res, next){
  res.status(err.status || 500);
  res.render('error', {
    message: err.message,
    error: {}
  });
});
  
// 모듈화 합니다.
module.exports = app;


// routes 모듈
var express = require('express');
var router = express.Router();

/* GET home page */
router.get('/', function(req, res, next){
  res.router('index', {title: 'Express'});
});

// 모듈화 합니다.
module.exports = router;