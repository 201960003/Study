// 모듈을 추출합니다.
var http = require('http');
var fs = require('fs');
var ejs = require('ejs');

// var colors = ['#ff0000', '#ffa500'];

// , yellow, green, blue, navy, purple


// 서버를 생성하고 실행합니다.
http.createServer(function (request, response) {
    // ejsPage.ejs 파일을 읽습니다.
    fs.readFile('test.ejs','utf8',function (error, data) {
        response.writeHead(200, {'Content-Type': 'text/html'});
        response.write(
            '<head><meta charset="UTF-8"></head>'
        );
        response.end(ejs.render(data, {
            colors: [
                'color:red;',
                'color:orange;',
                'color:yellow;',
                'color:green;',
                'color:blue;',
                'color:navy;',
                'color:purple;'
            ]
        }));
    });
}).listen(52274, function() {
    console.log('Server Running at http://127.0.0.1:52274');
});