list = [67, 84, 70, 108, 101, 97, 110, 123, 67, 82, 89, 80, 84, 79, 71, 82, 65, 80, 72, 89, 125]
a = []
for i in list:
    a.append (chr(i))

flag = ''.join(a)
print (flag)
