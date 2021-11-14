import base64
string1=''
string2=''

a = 'xD6kfO2UrE5SnLQ6WgESK4kvD/Y/rDJPXNU45k/p'
b = 'h2riEIj13iAp29VUPmB+TadtZppdw3AuO7JRiDyU'

string1 = base64.b64decode(a)
string2 = base64.b64decode(b)

length = len(string1)
flag = []
i=0
while i < length:
    flag.append(chr(string1[i] ^ string2[i]))
    i+=1

print (flag)
