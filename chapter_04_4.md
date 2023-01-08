# 혼자 공부하는 파이썬 chapter 04 - 4 마무리

#### 4가지 키워드로 정리하느느 핵심 포인트


*   reserved() 함수는 매개변수에 리스트를 넣으면 요소의 순서를 뒤집을 수 있습니다.
*   enumerate() 함수는 매개변수

*  items() 함수는 키와 쌍으로 사용해 반복문을 돌릴 수 있게 해주는 딕셔너리 함수입니다.
*  리스트 내포는 반복문과 조건문을 대괄호[]안에 넣는 형태를 사용해서 리스트를 생성하는 파이썬의 특수한 구문입니다. 'list comprehensions'도 기억해 주세요.

#### 확인문제

1. enumerate() 함수와  items() 함수의 사용법

①리스트. enumerate() ❷ enumerate(리스트) ❸딕셔너리.items() ④items(딕셔너리)

2. 진수 변환


```python
output = [i for i in range(1,101) if str("{:b}".format(i)).count("0") == 1]
    
                                

for i in output:
  print("{} : {}".format(i,"{:b}".format(i)))
print("합계:",sum(output))
```

    2 : 10
    5 : 101
    6 : 110
    11 : 1011
    13 : 1101
    14 : 1110
    23 : 10111
    27 : 11011
    29 : 11101
    30 : 11110
    47 : 101111
    55 : 110111
    59 : 111011
    61 : 111101
    62 : 111110
    95 : 1011111
    합계: 539
    