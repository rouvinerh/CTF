import binascii

def decode (msg, key):
    message = ''
    for i in range (0,len(key)):
        message+= chr(msg[i] ^ ord(key[i]))

    return message
cipher = b'\t\x1b\x11\x00\x16\x0b\x1d\x19\x17\x0b\x05\x1d(\x05\x005\x1b\x1f\t,\r\x00\x18\x1c\x0e'

key = 'jowlsjowlsjowlsjowlsjowls'
m=decode(cipher,key)
print (m)