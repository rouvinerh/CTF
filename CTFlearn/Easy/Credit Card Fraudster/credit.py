def luhn_checksum(card_number):
    def digits_of(n):
        return [int(d) for d in str(n)]
    digits = digits_of(card_number)
    odd_digits = digits[-1::-2]
    even_digits = digits[-2::-2]
    checksum = 0
    checksum += sum(odd_digits)
    for d in even_digits:
        checksum += sum(digits_of(d*2))
    return checksum % 10

def is_luhn_valid(card_number):
    return luhn_checksum(card_number) == 0

def divisible (number):
    if number % 123457 == 0:
        return True
    else:
        return False



if __name__ == '__main__':
    final =0
    initial = 5432100000001234
while True:
    initial +=10000
    divisible (initial)
    is_luhn_valid(initial)
    if (divisible (initial) == True & is_luhn_valid(initial) == True):
        final = initial
        break

print (final)



