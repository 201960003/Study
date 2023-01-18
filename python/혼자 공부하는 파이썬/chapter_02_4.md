# **혼자 공부하는 파이썬 chapter 02-4 마무리**

#### <strong><font color="coral">8가지 키워드로 정리하는 핵심 포인트</font><strong>


*   <font color="coral">format( ) </font>함수를 이용하면 숫자와 문자열을 다양한 형태로 출력할 수 있습니다.
*   <font color="coral">upper( ) </font>와<font color="coral"> lower( )</font>함수는 문자열의 알파벳을 대문자로 혹은 소문자로 변경합니다.
*   <font color="coral">strip( ) </font>함수는 문자열 앙옆의 공백을 제거합니다.
*   <font color="coral">find( ) </font>함수는 문자열 내부에 특정 문자가 어디에 위치하는 지 찾을 때 사용합니다.
*   <font color="coral">in-연산자</font>는 문자열 내부에 어떤 문자열이 있는지 확인 할 때 사용합니다.
*   <font color="coral">split( )</font> 함수는 문자열을 특정한 문자로 자를 때 사용합니다.
*   <font color="coral">f-문자열</font>을 사용하면 문자열 안에 format( ) 함수보다 간단라게 삽입할 수 있습니다.

#### <font color="coral">확인문제</font>


1.   format() 함수 중에서 오류가 발생하는 경우
    <br>①"{ } { }".format(52,273)
    <br>②"{ } { }".format(52,type(273))
    <br>❸"{ } { } { }".format(52,type(273))
    <br>④"{ }".format(52,273)


```python
"{} {}".format(52,273)
"{} {}".format(52,type(273))
"{} {} {}".format(52,type(273))
"{}".format(52,273)
```


    ---------------------------------------------------------------------------

    IndexError                                Traceback (most recent call last)

    <ipython-input-8-f9c4a203a31c> in <module>
          1 "{} {}".format(52,273)
          2 "{} {}".format(52,type(273))
    ----> 3 "{} {} {}".format(52,type(273))
          4 "{}".format(52,273)
    

    IndexError: Replacement index 2 out of range for positional args tuple


2.  함수와 준자열의 다양한 기능

|함수|기능|
|:------------------:|:------------------------:|
|split( )|문자열을 특성 문자로 자릅니다.|
|upper( )|문자열을 대문자로 변환합니다.|
|lower( )|문자열을 소문자로 변환합니다.|
|strip( )|문자열의 공백을 제거합니다.|

3. 실행 결과 예측

|구문|실행 결과|
|:-----------|:-----------|
|a = input("> 1번째 숫자: ")<br>b = input("> 2번째 숫자: ")<br>print( )<br><br>print("{ } + { } = { }".format(a,b,int(a)+int(b)))|> 1번째 숫자: 100<br>> 2번째 숫자: 200<br><br>100 + 200 = 300



```python
a = input("> 1번째 숫자: ")
b = input("> 2번째 숫자: ")
print()


print("{} + {} = {}".format(a, b, int(a)+int(b)))
```

    > 1번째 숫자: 100
    > 2번째 숫자: 200
    
    100 + 200 = 300
    

4.  실행 결과 예측

|구문|실행 결과|
|:----------------|:---------------------|
|string="hello"<br><font color= lightgreen > string.upper()를 실행하고, string을 출력하기</font><br>string.upper()<br>print("A 지점: ",string)<br><font color= lightgreen >string.upper()를 실행하기</font><br>print("B 지점: ",string.upper())|A 지점:  hello<br>B 지점:  HELLO|


```python
string="hello"

# string.upper()를 실행하고, string을 출력하기
string.upper()
print("A 지점: ",string)

# string.upper()를 실행하기
print("B 지점: ",string.upper())
```

    A 지점:  hello
    B 지점:  HELLO
    


```python
string="hello"
string = string.upper()
print("A 지점: ",string)
```

    A 지점:  HELLO
    

변수를 지정하면 대문자로 출력이 된다.
