import base64

code = 'VmtaU1IxUXhUbFZSYXpsV1RWUnNRMVpYZEZkYWJFWTJVVmhrVlZGVU1Eaz0=)'

while True:
    decode = base64.b64decode(code)
    print (decode)
    code = decode