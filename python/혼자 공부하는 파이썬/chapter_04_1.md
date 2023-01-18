# **혼자 공부하는 파이썬 chapter 04 - 1 마무리**

#### <strong><font color = "coral">4가지 키워드로 정리하는 핵심 포인트</font><strong>


*    <font color = "coral"><strong>리스트</font><strong>는 여러 가지 자료를 저장할 수 있는 자료형을 말합니다.
*    <font color = "coral"><strong>요소</font><strong>는 리스트 내부에 있는 각각의 내용을 의미합니다.
*   <font color = "coral"><strong> 인덱스</font><strong>는 리스트 내부에서 값의 위치를 의미합니다.
*   <font color = "coral"><strong>for 반목문</font><strong>은 특정 코드를 반복해서 실행할 때 사용하는 기본적인 구문입니다.

#### <font color = "coral">획인문제</font><strong>

1. list_a = [0, 1, 2, 3, 4, 5, 6, 7]의 실행했을 때 결과값

|함수|list_a의 값|
|:--------------|:-----------|
|list_a.extend(list_a)|[0, 1, 2, 3, 4, 5, 6, 7, 0, 1, 2, 3, 4, 5, 6, 7]|
|list_a.append(10)|[0, 1, 2, 3, 4, 5, 6, 7, 10]|
|list_a.insert(3,0)|[0, 1, 2, 0, 3, 4, 5, 6, 7]|
|list_a.remove(3)|[0, 1, 2, 4, 5, 6, 7]|
|list_a.pop(3)|[0, 1, 2, 4, 5, 6, 7]|
|list_a.clear()|[]|


```python
list_a = [0, 1, 2, 3, 4, 5, 6, 7]

list_a.extend(list_a)
print(list_a)
```

    [0, 1, 2, 3, 4, 5, 6, 7, 0, 1, 2, 3, 4, 5, 6, 7]
    


```python
list_a = [0, 1, 2, 3, 4, 5, 6, 7]

list_a.append(10)
print(list_a)
```

    [0, 1, 2, 3, 4, 5, 6, 7, 10]
    


```python
list_a = [0, 1, 2, 3, 4, 5, 6, 7]

list_a.insert(3,0)
print(list_a)
```

    [0, 1, 2, 0, 3, 4, 5, 6, 7]
    


```python
list_a = [0, 1, 2, 3, 4, 5, 6, 7]

list_a.remove(3)
print(list_a)
```

    [0, 1, 2, 4, 5, 6, 7]
    


```python
list_a = [0, 1, 2, 3, 4, 5, 6, 7]

list_a.pop(3)
print(list_a)
```

    [0, 1, 2, 4, 5, 6, 7]
    


```python
list_a = [0, 1, 2, 3, 4, 5, 6, 7]

list_a.clear()
print(list_a)
```

    []
    

2. if 조건문 for 반복문 조합

|코드|실행 결과|
|--------------|--------------------|
|numbers = [273, 103, 5, 32, 65, 9, 72, 800, 99]<br><br>for number in numbers:<br>if  number >= 100:<br><br>print("- 100 이상의 수:",number)| - 100 이상의 수: 273<br>- 100 이상의 수: 10<br>- 100 이상의 수: 800


```python
numbers = [273, 103, 5, 32, 65, 9, 72, 800, 99]


for number in numbers:
  if  number >= 100:
    print("- 100 이상의 수:",number)
```

    - 100 이상의 수: 273
    - 100 이상의 수: 103
    - 100 이상의 수: 800
    

3. 실행 결과에 해당하는 프로그램 만들기


```python
#홀수 짝수 구분

numbers = [273, 103, 5, 32, 65, 9, 72, 800, 99]

for number in numbers:
  if  number %2 == 0:
    print(number,"는 짝수입니다.")
  elif  number %2 == 1:
    print(number,"는 홀수입니다.")

```

    273 는 홀수입니다.
    103 는 홀수입니다.
    5 는 홀수입니다.
    32 는 짝수입니다.
    65 는 홀수입니다.
    9 는 홀수입니다.
    72 는 짝수입니다.
    800 는 짝수입니다.
    99 는 홀수입니다.
    


```python
# 자릿수 구하기

numbers = [273, 103, 5, 32, 65, 9, 72, 800, 99]

for number in numbers:
  if len(str(number)) == 3:
    print(f"{number}는 3자리 숫자")

  elif len(str(number)) == 2:
    print(f"{number}는 2자리 숫자")

  else:
    print(f"{number}는 1자리 숫자")
  
```

    273는 3자리 숫자
    103는 3자리 숫자
    5는 1자리 숫자
    32는 2자리 숫자
    65는 2자리 숫자
    9는 1자리 숫자
    72는 2자리 숫자
    800는 3자리 숫자
    99는 2자리 숫자
    


```python
# 자릿수 구하기

numbers = [273, 103, 5, 32, 65, 9, 72, 800, 99]

for number in numbers:
  str_a =(str(number))

  if len(str_a) == 3:
    print(f"{number}는 3자리 숫자")

  elif len(str_a) == 2:
    print(f"{number}는 2자리 숫자")

  else:
    print(f"{number}는 1자리 숫자")
```

    273는 3자리 숫자
    103는 3자리 숫자
    5는 1자리 숫자
    32는 2자리 숫자
    65는 2자리 숫자
    9는 1자리 숫자
    72는 2자리 숫자
    800는 3자리 숫자
    99는 2자리 숫자
    

4. 실행코드 예측


```python
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
output = [[], [], []]
i=0

for number in numbers:
  output[(number-1) % 3].append(number)

print(output)
```

    [[1, 4, 7], [2, 5, 8], [3, 6, 9]]
    

5. 실행코드 예측


```python
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]

for i in range(0, len(numbers) // 2):
  j = i * 2 + 1
  print(f"i ={i}, j = {j}")
  numbers[j] = numbers[j] ** 2


print(numbers)
```

    i =0, j = 1
    i =1, j = 3
    i =2, j = 5
    i =3, j = 7
    [1, 4, 3, 16, 5, 36, 7, 64, 9]
    
