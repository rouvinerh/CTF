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
flag = ''.join(flag)
print (flag)

# for reference:
# XOR works by comparing the bits of the information in each string and changing it based on whether it is 
#the same or different
# this program creates an empty list to add each character of the flag together
# ^ is the XOR function otherwise knwon as exclusive  or and compares two binary NUMBERS bitwise.
# It can only accept a number, and chr converts each character back to it's ASCII value to generate a long string.
# this would result in the code being able to compare each ASCII character to XOR them to generate one character appended to the list.
# Resulting solution is the flag after joining the elements together.
