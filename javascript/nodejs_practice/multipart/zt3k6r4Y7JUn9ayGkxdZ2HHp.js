// 모듈을 추출합니다.
var fs = require('fs');
var express = require('express');
var multipart = require('connect-multiparty');

// 서버를 생성합니다.
var app = express();

// 미들웨어를 생성합니다.
app.use(multipart({ uploadDir: __dirname + '/multipart'}));

// 라우터를 설정합니다.
app.get('/', function (request, response) {
    fs.readFile('HTMLPage3.html', function(error,data) {
        response.send(data.toString());
    });
});

app.post('/', function () {});

// 서버를 실행합니다.
app.listen(52273, function() {
    console.log('http://127.0.0.1:52273');
});


// body 속성과 files 속성
app.post('/', function (request, response) {
    console.log(request.body);
    console.log(request.files);

    response.redirect('/');
});

// 파일 이름 변경및 제거
app.post('/', function (request, response) {
    // 변수를 선언합니다.
    var comment = request.files.image;
    var imageFile = request.files.image;

    if (imageFile && imageFile.size > 0) {
        // 변수를 선언합니다.
        var name = imageFile.name;
        var path = imageFile.path;
        var type = imageFile.type;

        // 이미지 파일 확인
        if (type.indexOf('image') != -1){
            // 이미지 파일 확인
            var outputPath = __dirname + '/multipart/' + Date.now() + '_' + name;
            fs.rename(path, outputPath, function (error) {
                response.redirect('/');
            });
        } else {
            // 이미지 파일에 아닌 경우: 파일을 제거합니다.
            fs.unlink(path, function (error) {
                response.sendStatus(400);
            });
        } 
    } else {
        // 파일이 없을 경우
        response.sendStatus(404);
    }
});

