// ������ �����մϴ�.
var crypto = require('crypto');

// ������ �����մϴ�.
var key = '�ƹ��� ���� ���ϴ� ������ ���� Ű';
var input = 'PASSWORD';

// ��ȣȭ
var cipher = crypto.createCipher('aes192', key);
cipher.update(input, 'utf8', 'base64');
var cipheredOutput = cipher.final('base64');

// ��ȣȭ ����
var decipher = crypto.createDecipher('aes192', key);
decipher.update(cipheredOutput, 'base64', 'utf8');
var decipheredOutput = decipher.final('utf8');

// �����մϴ�.
console.log('���� ���ڿ�: ' + input);
console.log('��ȣȭ: ' + cipheredOutput);
console.log('��ȣȭ ����: ' + decipheredOutput);
