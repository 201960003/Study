# 혼자 공부하는 파이썬 chapter 04 - 3 마무리

#### 4가지 키워드로 정리하는 포인트


*   범위는 정수의 범위를 나타내는 값입니다. range() 함수로 생성합니다.
*   while 반복문은 조건식을 기반으로 특정 코드를 반복해서 실행할 때 사용하는 구문입니다.
*   break 키워드는 반목문을 벗어 날 때 사용하는 구문입니다.
*   continue 키워드는 반복문의 현재 반복을 생략할 때 사용하는 구문입니다.


#### 확인문제

1. range 함수


```python
list(range(5))
```




    [3, 6, 9]




```python
list(range(4,6))
```




    [4, 5]




```python
list(range(7,0,-1))
```




    [7, 6, 5, 4, 3, 2, 1]




```python
list(range(3,8))
```




    [3, 4, 5, 6, 7]




```python
list(range(3,10,3))
```




    [3, 6, 9]



2. 딕셔너리 만들기


```python
key_list = ["name", "hp", "mp", "level"]
value_list = ["기사", 200, 30, 5]
character= {}

for a in range(0,4):
  character[key_list[a]] = value_list[a]


print(character)
```

    {'name': '기사', 'hp': 200, 'mp': 30, 'level': 5}
    

3. 10000이 넘을 때 값 구하는 경우


```python
limit = 10000
i = 1
sum_value = 1

while sum_value <= 10000:
  i += 1
  sum_value += i # sum_value = sum_value+i

print("{}를 더할 때 {}을 넘으며 그때의 값은 {}입니다".format(i,limit,sum_value))


```

    141를 더할 때 10000을 넘으며 그때의 값은 10011입니다
    

4. 반복문을 사용하여 최대가 되는 경우


```python
max_value = 0
a = 0
b = 0
list=[]

for i in range(1,100):
  j = 100 - i 
  c = i * j
  list.append(c)

a = list.index(max(list))+1
b = 100 - a
max_value = max(list)

print("최대가 되는 경우: {} * {} = {}". format(a,b,max_value))
```

    최대가 되는 경우: 50 * 50 = 2500
    
