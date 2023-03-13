// 외부 모듈을 추출합니다.
var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
var favicon = require('serve-favicon');
var bodyParser = require('body-parser');

// 사용자 정의 모듈을 추출합니다.
var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');

//서버를 생성합니다.
var app = express();

// view engine setup (서버를 설정합니다.)
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

// 미들웨어를 설정합니다.
app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

//라우터 미들웨어를 설정합니다.
app.use('/', indexRouter);
app.use('/users', usersRouter);

// catch 404 and forward to error handler(404 에러가 발생했을 때 메세지를 출력합니다.)
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler (에러 핸들러)
app.use(function(err, req, res, next) {
  // set locals, only providing error in development(development 환경에서의 모듈을 처리합니다.)
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
