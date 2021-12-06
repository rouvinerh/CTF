from pwn import xor
from random import randint

random_strs = [
    b'my encryption method',
    b'is absolutely impenetrable',
    b'and you will never',
    b'ever',
    b'break it'
]

cipher = bytes.fromhex('57657535570c1e1c612b3468106a18492140662d2f5967442a2960684d28017931617b1f3637')

while True:
    for random_str in random_strs:
        for m in range(randint(0, pow(2, 0))):
            cipher = xor(cipher, random_str)
    crib = b'picoCTF{'
    #key = xor(cipher[:len(crib)],crib)

    #if key.decode().isprintable():
       # print (key)

    key = b'Africa!'
    flag = xor (cipher, key)

    if flag.startswith(b'picoCTF'):
        print (flag)
        break

