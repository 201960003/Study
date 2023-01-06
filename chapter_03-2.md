# 혼자 공부하는 파이썬 chapter 03 - 2 마무리

#### <strong><font color = 'coral'>4가지 키워드로 정리하는 핵심 포인트</font><strong>

*   <font color = 'coral'>else 구문</font>은 if 조건문 뒤에 사용하며, if 조건문의 조건이 거짓일 때 실행합니다.
*   <font color = 'coral'>elif 구문</font>은 if와 else 구문 사이에 입력하며, 세 개 이상의 조건을 연결하여 사용할 때 적절합니다.
*   if 조건문의 조건식에서 <font color = 'coral'>False로 변환되는 값</font>은 None, 0, 0.0과 빈 문자열, 빈 바이트열, 빈 리스트, 빈 튜플,빈 딕셔너리 등입니다.
*   <font color = 'coral'>pass 키워드</font>는 프로그래밍의 전체 골격을 잡아놓고, 내부에 처리할 내용은 나중에 만들고자 할 때 pass라는 키워드를 입력합니다.**굵은 텍스트**




#### <strong><font color = 'coral'>확인 문제</font><strong>
1. 실행 결과 예측

|구문|결과 예측|
|:--------------|:-------------------:|
|x = 2<br>y = 10<br><br>if x > 4:<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if y > 2:<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;print(x * y)<br><br>else:<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;print(x + y)|12|
|x = 1<br>y = 4<br><br>if x > 4:<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if y > 2:<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;print(x * y)<br><br>else:<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;print(x + y)|5|
|x = 1o<br>y = 2<br><br>if x > 4:<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if y > 2:<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;print(x * y)<br><br>else:<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;print(x + y)||


```python
x = 2
y = 10

if x > 4:
  if y > 2:
    print(x * y)

else:
  print(x + y)
```

    12
    


```python
x = 1
y = 4

if x > 4:
  if y > 2:
    print(x * y)

else:
  print(x + y)
```

    5
    


```python
x = 10
y = 2

if x > 4:
  if y > 2:
    print(x * y)

else:
  print(x + y)
```

마지막 3번째는 출력 안되는 이유는 y > 2 에 대해 아닐 경우릐 조건을 처리하는 게 없음
그래서 출력이 안되는 것이다.
맨 아래 else는 x > 4 가 아닐때 의 조건문에 해당됨

2. 논리 연산자 사용한 조건문


```python
if x > 10:
  if x < 20:
    print("조건에 만족합니다.")
```


```python
# 논리 연산자 사용
if x > 10 and x < 20:
  print("조건에 만족합니다.")
```

3. 태어난 연도를 입력받아 띠를 출력하는 프로그램


```python
str_input = input("태어난 책을 입력해 주세요> ")
birth_year = int(str_input)

if birth_year % 12 == 0:
  print("원숭이 띠입니다.")
elif birth_year % 12 == 1:
  print("닭 띠입니다.")
elif birth_year % 12 == 2:
  print("개 띠입니다.")
elif birth_year % 12 == 3:
  print("돼지 띠입니다.")
elif birth_year % 12 == 4:
  print("쥐 띠입니다.")
elif birth_year % 12 == 5:
  print("소 띠입니다.")
elif birth_year % 12 == 6:
  print("범 띠입니다.")
elif birth_year % 12 == 7:
  print("토끼 띠입니다.")
elif birth_year % 12 == 8:
  print("용 띠입니다.")
elif birth_year % 12 == 9:
  print("뱀 띠입니다.")
elif birth_year % 12 == 10:
  print("말 띠입니다.")
elif birth_year % 12 == 11:
  print("양 띠입니다.")
```

    태어난 책을 입력해 주세요> 2023
    토끼 띠입니다.
    
