// ������ �����մϴ�.
var fs = require('fs');

// ������ �н��ϴ�.
fs.readFile('textfile.txt', 'utf8', function (error, data) {
  // ������ �߻��ϸ� ���ٷ� ����
  if (error) { return console.log(error); }

  // ���ϴ� ó��
  console.log(data);
});
// ������ ���ϴ�.
fs.writeFile('textfile.txt', 'Hello World .. !', 'utf8', function (error) {
  // ������ �߻��ϸ� ���ٷ� ����
  if (error) { return console.log(error); }

  // ���ϴ� ó��
  console.log('FILE WRITE COMPLETE');
});
