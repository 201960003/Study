# <strong>혼자 공부하는 파이썬 chapter 02-3 마무리<strong>

#### <font color="orange">7가지 키워드로 정리하는 핵심 포인트</font>

*   <font color="orange"><strong>변수 선언<strong></font>은 변수를 생성하는 것을 의미하고, <font color="orange"><strong>변수 할당<strong></font>은 변수에 값을 넣는 것을 의미한다.
*   <font color="orange"><strong>변수 참조<strong></font>는 변수에서 값을 꺼내는 것을 의미합니다.

*   <font color="orange"><strong>input( )<strong></font>함수는 명령 프롬프트에서 사용자로부터 데이터를 입력받을 때 사용합니다.
*   <font color="orange"><strong>int()<strong></font>함수는 문자열을 int 자료형으로 변환하고 <font color="orange"><strong>float()<strong></font>함수는 문자열을 float 자료형으로 변환합니다.
*  <font color="orange"><strong>str()<strong></font>함수는 숫자를 문자열로 변환합니다.

#### <font color="orange"><strong>확인문제<strong></font>

1.   변수에 값을 할당하기 위한 구문
<br/>변수이름 = 값
2.   숫자에 적용할 수 있는 복합 대입 연산자

|연산자|내용|
|:---------------:|:---------------:|
|+=|숫자 덧셈 후 대입|
|-=|숫자 뺄셈 후 대입|
|*=|숫자 곱셈 후 대입|
|/=|숫자 나눗셈 후 대입|
|%=|숫자 나머지 구한 후 대입|
|**=|숫자 제곱 후 대입|

3. 문자열을 숫자로, 숫자열을 문자열로 변환하는 함수

|함수|내용|
|:---------------:|:---------------:|
|int|문자열을 int 자료형으로 변환|
|float|문자열을 float 자료형으로 변환|
|str|숫자를 문자열로 변환|

4. inch → cm 단위 변환 (inch = 2.54cm)

|함수|실행 결과 1|실행 결과 2|
|:---------------|:---------------|:---------------|
|str_input = input("숫자 입력>")<br/>num_input = float(str_input)<br/><br/>br/>print()<br/>print(num_input,"inch")<br/>print(num_input * 2.54,"cm")|숫자 입력> 1<br/><br/>1.0 inch<br/>2.54 cm|숫자 입력> 26<br/><br/>26.0 inch<br/>66.04 cm


```python
str_input = input("숫자 입력> ")
num_input = float(str_input)


print()
print(num_input,"inch")
print(num_input * 2.54,"cm")
```

    숫자 입력> 1
    
    1.0 inch
    2.54 cm
    

5. 원의 반지름을 입력받아 원의 둘레와 넓이를 구하는 코드




 *  둘레: 2 * 원주율 * 반지름 
 *  넓이: 원주율 * 반지름 * 반지름











|코드|실행 결과1|실행 결과2|
|:---------------|:---------------------|:--------------|
|str_input = input ("원의 반지름 입력> ")<br>num_input = float (str_input)<br>print()<br>print("반지름: ", num_input)<br>print("둘레: ",2 * 3.14 * num_input )<br>print("넓이: ",3.14 * num_input ** 2 )|원의 반지름 입력> 2<br><br>반지름:  2.0<br>둘레:  12.56<br>넓이:  12.56|원의 반지름 입력> 5<br><br>반지름:  5.0<br>둘레:  31.400000000000002<br>넓이:  78.5


```python
str_input = input ("원의 반지름 입력> ")
num_input = float (str_input)
print()
print("반지름: ", num_input)
print("둘레: ",2 * 3.14 * num_input )
print("넓이: ",3.14 * num_input ** 2 )
```

    원의 반지름 입력> 5
    
    반지름:  5.0
    둘레:  31.400000000000002
    넓이:  78.5
    

6. 프로그램을 실행했을 때 문자열 두개를 입력받고 다음과 같이 출력하는 프로그램이 있다고 가정합시다. 굵은 글씨로 되어 있는 부분은 사용자 입력입니다.

> 문자열 입력> <strong>안녕하세요<strong><br>문자열 입력> <strong>아침입니다<strong><Br>안녕하세요 아침입니다<br>아침입니다 안녕하세요




```python
from re import TEMPLATE
a = input("문자열 입력> ")
b = input("문자열 입력> ")

print(a,b)

# swap 할 때 temp 변수를 이용하여 두 변수의 값을 바꿀 수 있다.
temp = a
a = b
b = temp


print(a,b)
```

    문자열 입력> 안녕하세요
    문자열 입력> 아침입니다.
    안녕하세요 아침입니다.
    아침입니다. 안녕하세요
    
