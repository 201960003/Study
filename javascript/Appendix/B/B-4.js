// request 모듈을 사용합니다.
var targetUrl = 'http://www.hanbit.co.kr/media/books/new_book_list.html';
request(targetUrl, function (error, response, body) {
  // 변수를 선언합니다.
  var $ = jQuery = cheerio.load(body);
  // 데이터를 추출합니다.
  $('.sub_book_list').each(function (item) {
    // 변수를 선언합니다.
    var title = $(this).find('.book_tit').text().trim();
    var writer = $(this).find('.book_writer').text().trim();

    // 저자 정보를 분해합니다.
    writer = writer.split(",").map(function (item) {
      return item.trim();
    });

    // 출력합니다.
    console.log(title)
    console.log(writer);
    console.log();
  });
});