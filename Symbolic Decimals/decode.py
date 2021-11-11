def decode (char):
    output = 0
    if char == '!':
        output = 1
    elif char == '@':
        output = 2
    elif char == '#':
        output = 3
    elif char == '$':
        output = 4
    elif char == '%':
        output = 5
    elif char == '^':
        output = 6
    elif char == '&':
        output = 7
    elif char == '*':
        output = 8
    elif char == '(':
        output = 9
    elif char ==')':
        output =0

    return output

cipher = '^&,*$,&),!@#,*#,!!^,(&,!!$,(%,$^,(%,*&,(&,!!$,!!%,(%,$^,(%,&),!!!,!!$,(%,$^,(%,&^,!)%,!)@,!)!,!@%'
i = 0
while i < len(cipher):
    if cipher[i] == ',':
        output = ' '
    else:
        output = decode(cipher[i])
    print (output, end ='')
    i+=1
