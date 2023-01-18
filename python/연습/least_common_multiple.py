#최소 공배수
number1 = int (input("숫자 1: "))
number2 = int (input("숫자 2: "))

if (number1 < number2):
    max = number2
else:
    max = number1

divider = 2
result = 1
while (divider < max):
    if (number1 % divider == 0 and number2 % divider == 0 ): # 2로 나누어 떨어진지면
        number1 = number1 / divider 
        number2 = number2 / divider
        result = result * divider
    divider = divider + 1
# %d는 변환 되는 수(치환개념) 그리고 옆에는 % 하고 ()하고 변환되는 연산자 이름
print("Result: %d" % result )
