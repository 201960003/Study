# 혼자 공부하는 파이썬 도전문제

1. 숫자의 종류


```python
list_num = [1, 2, 3, 4, 1, 2, 3, 1, 4, 1, 2, 3]
dict_num = {}

for i in list_num:
  count_num = list_num.count(i)
  dict_num[i]=count_num
print(dict_num)
len_num = len(dict_num)
print(f"{list_num}에서 사용된 숫자의 종류는 {len_num}개입니다.")
```

    {1: 4, 2: 3, 3: 3, 4: 2}
    [1, 2, 3, 4, 1, 2, 3, 1, 4, 1, 2, 3]에서 사용된 숫자의 종류는4입니다.
    

2. 염기의 개수


```python
# ctacaatgtcagtatacccattgcattagccgg
dna = input("염기 서열을 입력해주세요: ")
list_dna = ["a","t",'g','c']
for i in list_dna:
  count_dna = dna.count(i)
  print(f"{i}의 개수: {count_dna}")

```

    염기 서열을 입력해주세요: ctacaatgtcagtatacccattgcattagccgg
    a의 개수: 9
    t의 개수: 9
    g의 개수: 6
    c의 개수: 9
    

3. 염기 코돈 개수


```python
dna = input("염기 서열을 입력해주세요: ")
dict_dna={}
str =  "ctacaatgtcagtatacccattgcattagccgg"
len_dna = len(str)
for i in range(0,len_dna,3):
  a = str[i:i + 3]
  count_dna = str.count(a)
  dict_dna[a] = count_dna
print(dict_dna)
```

    염기 서열을 입력해주세요: ctacaatgtcagtatacccattgcattagccgg
    {'cta': 1, 'caa': 1, 'tgt': 1, 'cag': 1, 'tat': 1, 'acc': 1, 'cat': 2, 'tgc': 1, 'att': 2, 'agc': 1, 'cgg': 1}
    

4. 2차원 리스트 평탄화


```python
list_a = [1,2,[3,4],5,[6,7],[8,9]]
list_b =[]
for i in list_a:
  if type(i) == list:
    for j in i:
      list_b.append(j)
     
  else:
    list_b.append(i)
  

print(list_b)

```

    [1, 2, 3, 4, 5, 6, 7, 8, 9]
    
