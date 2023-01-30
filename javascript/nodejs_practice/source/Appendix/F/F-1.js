// 데이터베이스에 연결합니다.
var mongojs = require('mongojs')
var db = mongojs('node', ['products']);