file = open ('input.txt', 'r')
i = file.read(1)
list = [0]
while i != '$':
    if i =='+':
        list[-1] +=1
    elif i == '-':
        list [-1] -=1
    elif i == '>':
        list = list[1:] + list[:1]
    elif i =='<':
        list = list[-1:] + list[:-1]
    elif i=='@':
        list[-1], list [-2] = list[-2], list[-1]
    elif i == '.':
        list.append (list[-1])
    i = file.read(1)

flag = ''
for i in list:
    flag += chr(i)
