// 모듈을 추출합니다.
var urls = require('url');
var querystring = require('querystring');

// 모듈을 사용합니다.
var link = urls.parse('https://www.hanbit.co.kr/store/books/look.php?p_code=B1904651936');
console.log(querystring.parse(link.query));
