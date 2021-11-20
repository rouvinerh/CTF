with open ('fl4g.jpeg','r+b') as file:
    content = bytearray(file.read(4))
    byte_new = b''
    while content:
        byte_new+=content [::-1]
        content = file.read(4)

with open ('modified.jpeg', 'wb') as f:
    f.write(byte_new)
