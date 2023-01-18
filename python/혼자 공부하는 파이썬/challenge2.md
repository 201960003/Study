# 혼자 공부하는 파이썬 도전문제2

#### 1.간단한 대화 프로그램


```python
from time import time
print(time())
```

    1672878716.5172753
    


```python
from time import time
time()

import time
time = time.localtime(1672878716.5172753)

command = input ("입력: ") 

if command in "안녕하세요":
  print("안녕하세요.")

elif command in "지금 몇 시예요?" or "지금 몇 시야?":
  print("지금은 ",time.tm_hour,"시 입니다.")

else:
  print(command)
```

    입력: 지금
    지금은  0 시 입니다.
    

내가 짠 코드인데 입력해야하는 말 안에 command가 포함되어 있다고 생각하고 코드를 짰다. 예를 들어 위의 코드에서 시간을 물어볼때 "지금"이라고 input에 입력하면 시간이 나온다. 여기서 "몇 시"라는 말이 포인트 인데 잘못 잡 것 같다.


```python
import datetime
time = datetime.datetime.now()

command = input ("입력: ") 

if "안녕" in command:
  print("안녕하세요.")

elif "몇 시" in command:
  print(f"지금은 {time.hour}시 입니다.")

else:
  print(command)
```

    입력: 몇 시
    지금은 0시 입니다.
    

#### 2. 나누어 떨어지는 숫자


```python
num = int(input("정수를 입력하세요: "))

if num %2 == 0 :
  print(num,"은 2로 나누어 떨어지는 숫자입니다.")
  print(num,"은 3로 나누어 떨어지는 숫자가 아닙니다.")
  print(num,"은 4로 나누어 떨어지는 숫자가 아닙니다.")
  print(num,"은 5로 나누어 떨어지는 숫자가 아닙니다.")

elif num %3 == 0:
  print(num,"은 2로 나누어 떨어지는 숫자가 아닙니다.")
  print(num,"은 3로 나누어 떨어지는 숫자입니다.")
  print(num,"은 4로 나누어 떨어지는 숫자가 아닙니다.")
  print(num,"은 5로 나누어 떨어지는 숫자가 아닙니다.")

elif num %4 == 0:
  print(num,"은 2로 나누어 떨어지는 숫자가 아닙니다.")
  print(num,"은 3로 나누어 떨어지는 숫자가 아닙니다.")
  print(num,"은 4로 나누어 떨어지는 숫자입니다.")
  print(num,"은 5로 나누어 떨어지는 숫자가 아닙니다.")


elif num %5 == 0:
  print(num,"은 2로 나누어 떨어지는 숫자가 아닙니다.")
  print(num,"은 3로 나누어 떨어지는 숫자가 아닙니다.")
  print(num,"은 4로 나누어 떨어지는 숫자가 아닙니다.")
  print(num,"은 5로 나누어 떨어지는 숫자입니다.")


```

    정수를 입력하세요: 4
    4 은 2로 나누어 떨어지는 숫자입니다.
    4 은 3로 나누어 떨어지는 숫자가 아닙니다.
    4 은 4로 나누어 떨어지는 숫자가 아닙니다.
    4 은 5로 나누어 떨어지는 숫자가 아닙니다.
    

위의 코드처럼 작성하면 4로 나누어 떨어지는 것도 2로 나누어 떨어지는 것이어서 2로 나누어떨어지는 숫자라고 나온다. 그래서 문장마다 if 구문을 작성하여 해준다. 그럼 2로 나누어 떨어지면서 4로 나누어 떨어지는 숫자가 작성 될 것이다.


```python
num = int(input("정수를 입력하세요: "))
print()

if num %2 == 0:
  print(num,"은 2로 나누어 떨어지는 숫자입니다.")
else:
  print(num,"은 2로 나누어 떨어지는 숫자가 아닙니다.")


if num %3 == 0:
  print(num,"은 3으로 나누어 떨어지는 숫자입니다.")
else:
  print(num,"은 3으로 나누어 떨어지는 숫자가 아닙니다.")

if num %4 == 0:
  print(num,"은 4로 나누어 떨어지는 숫자입니다.")
else:
  print(num,"은 4로 나누어 떨어지는 숫자가 아닙니다.")

if num %5 == 0:
  print(num,"은 5로 나누어 떨어지는 숫자입니다.")
else:
  print(num,"은 5로 나누어 떨어지는 숫자가 아닙니다.")
```

    정수를 입력하세요: 4
    
    4 은 2로 나누어 떨어지는 숫자입니다.
    4 은 3으로 나누어 떨어지는 숫자가 아닙니다.
    4 은 4로 나누어 떨어지는 숫자입니다.
    4 은 5로 나누어 떨어지는 숫자가 아닙니다.
    
