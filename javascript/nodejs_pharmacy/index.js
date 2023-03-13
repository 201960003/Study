var express = require('express');
var axios = require('axios')

var app = express();
var port = process.env.PORT || 80;

app.use(express.static("public_html"));
app.listen(port, function(){
    console.log('http://localhost');
});

// https://apis.data.go.kr/B552657/ErmctInsttInfoInqireService/getParmacyListInfoInqire?serviceKey=HFr5XGNahtD7aobCp%2FH1OWYRkglVgkFa2%2B7EOZqfEM5AkJcRtwuIDl4ueCwHuF9KP1tlVU5MISt3z4qpu3dJjA%3D%3D&Q0=%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C&Q1=%EA%B0%95%EB%82%A8%EA%B5%AC&QT=1&QN=%EC%82%BC%EC%84%B1%EC%95%BD%EA%B5%AD&ORD=NAME&pageNo=1&numOfRows=10

app.get('/pharmach_list',(req, res) => {
    let response = null;
    let api = async() => {
        response = await axios.get('https://apis.data.go.kr/B552657/ErmctInsttInfoInqireService/getParmacyListInfoInqire',{
            params: {
                'servicekey':'serviceKey=HFr5XGNahtD7aobCp%2FH1OWYRkglVgkFa2%2B7EOZqfEM5AkJcRtwuIDl4ueCwHuF9KP1tlVU5MISt3z4qpu3dJjA%3D%3D',
                'Q0': '서울특별시',
                'Q1': '강남구',
                'QT': '',
                'QN': '',
                'ORD': '',
                'PageNo': '1',
                'numOfRows': '1000'
            }
            
        })
    }
    return response;
});