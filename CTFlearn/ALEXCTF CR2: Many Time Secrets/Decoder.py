import binascii

def decode (msg, key):
    message = ''
    for i in range (0,len(key)):
        message+= chr(ord(msg[i]) ^ ord(key[i]))

    return message

with open('XOR.txt', 'r') as file:
    line = file.readlines()

    for lines in line:
        key = 'ALEXCTF{HERE_GOES_THE_}'
        m=decode(lines,key)
        print (m)
