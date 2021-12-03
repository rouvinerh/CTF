message = []
cipher = r'DSHjh^vj!G6]ram]mVP#<&CS[\uZ$Yqg|l'
[message.append (ord(cipher[i])) for i in range (0, len(cipher))]
answer= []
variable = 1
for i in range (0, len(message),2):
    message[i] -= variable
    message[i+1] += variable
    answer.append(message[i])
    answer.append(message[i+1])
    variable +=1
flag=''
for i in answer:
    flag +=(chr(i))
print (flag)

