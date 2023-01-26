// 데이터베이스에 연결합니다.
var mongojs = require('mongojs')
var db = mongojs('node', ['products']);

// 데이터를 추출합니다.
db.products.find(function (error, data) {
  console.log(data);
});