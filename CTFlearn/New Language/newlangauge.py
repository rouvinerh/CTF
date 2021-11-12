
file = open ('test.txt', 'r')
temp =0
temp1=0
list = [0]
character = file.read(1)

while character != '$':

    if character == '-':
        list[-1] -=1
        character = file.read(1)
    elif character =='+':
        list [-1] +=1
        character = file.read(1)
    elif character =='>':
        temp = list[0]
        list.remove(list[0])
        list.append(temp)
        temp = 0
        character = file.read(1)
    elif character == '<':
        temp = list[-1]
        list.remove (list[-1])
        list.insert(0,temp)
        temp=0
        character=file.read(1)
    elif character == '@':
        temp = list[-2]
        temp1 = list[-1]
        list[-2] = temp1
        list[-1]= temp
        temp1=0
        temp=0
        character=file.read(1)
    elif character == '.':
        temp = list[-1]
        list.append(temp)
        temp=0
        character=file.read(1)

print (list)



   # print ('end of file!')

    #break
        #print (character)
