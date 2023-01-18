# 혼자 공부하는 파이썬 chapter 04-2 마무리

#### <strong><font color = "coral">3가지 키워드로 정리하는 핵심 포인트</font><strong>


*   <strong><font color = "coral">딕셔너리</font><strong>는 키를 시반으로 여러 자료를 저장하는 자료형입니다.
*   <strong><font color = "coral">키</font><strong>는 닥셔너리 내부에서 값에 접근할 때 사용하는 것입니다.
*   <strong><font color = "coral">값</font><strong>은 딕셔너리 내부에 있는 각각의 내용을 의미합니다.



#### <strong><font color = "coral">확인문제</font><strong>

1. dict_a의 결과애 맞는 적용 코드

|dict_a의 값|dict_a에 적용할 코드|dict_a의 결과|
|:------------:|:---------------:|:--------------------:|
|{ }|dict_a ["name"] = "구름"|{'name': '구름'}|
|{'name': '구름'}|del dict_a ["name"]|{ }|




```python
dict_a={}

#생성 후
dict_a ["name"] = "구름"
print(dict_a)
print()

#삭제 후
del dict_a ["name"]
print(dict_a)
```

    {'name': '구름'}
    
    {}
    

2. 딕셔너리의 리스트 프린트


```python
pets = [
    {"name": "구름", "age": 5},
    {"name": "초코", "age": 3},
    {"name": "아지", "age": 1},
    {"name": "호랑이", "age": 1}
]

print("# 우리 동네 애완 동물들")
for i in pets:
  name = i.get("name")
  age = i.get("age")
  print(f"{name} {age}살")



print()
for i in pets:
  print("%s %d살"%(i.get("name"),i.get("age")))


```

    # 우리 동네 애완 동물들
    구름 5살
    초코 3살
    아지 1살
    호랑이 1살
    
    구름 5살
    초코 3살
    아지 1살
    호랑이 1살
    

3. numbers 출력하는 코드


```python
numbers = [1,2,6,8,4,3,2,1,9,5,4,9,7,2,1,3,5,4,8,9,7,2,3]
counter = {}

for number in numbers:
  counter[number] = numbers.count(number)
print(counter)
   

```

    {1: 3, 2: 4, 6: 1, 8: 2, 4: 3, 3: 3, 9: 3, 5: 2, 7: 2}
    


```python
numbers = [1,2,6,8,4,3,2,1,9,5,4,9,7,2,1,3,5,4,8,9,7,2,3]
counter = {}

for number in numbers:
  if number in counter:
    counter[number] += 1
  else:
    counter[number] = 1
    
print(counter) 
```

    {1: 3, 2: 4, 6: 1, 8: 2, 4: 3, 3: 3, 9: 3, 5: 2, 7: 2}
    

4. 어떤 자료형인지 확인


```python
character = {
    'name': '기사',
    'level': '12',
    'items': {   # item type은 dict
        'sword': '불꽃의 검',
        'armor': '풀플레이트'
    },
    'skill': ['베기','세게 베기', '아주 세게 베기'] # skill tpye은 리스트
}

for key in character:
  if type(character[key]) is list:

    for a in character[key]:
      print(f"{key}:{a}")
  
  elif type(character[key]) is dict:

    for b in character[key]:

      print(f"{b} : {character[key][b]}")

  else:

    print(f"{key} : {character[key]}")
```

    name : 기사
    level : 12
    sword : 불꽃의 검
    armor : 풀플레이트
    skill:베기
    skill:세게 베기
    skill:아주 세게 베기
    
