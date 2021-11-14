Challenge is rated 20 points under Forensics Category.

Gives us a download, Hey_You.png.

Examining strings gives another link to another jpeg called Only_Few_Steps.jgp
It also shows that there is a ..txt file embedded within the file.
Doing a binwalk extract reveals that the txt file just has the same link in strings.

Strings reveals there is another .jpg embedded within the file called YouWon(Almost).jpg.

Doing another binwalk extract gets me the third jpg. 
Another binwalk check reveals nothing remarkable. 

Doing another strings reveals a cipher:
CTF{VmtaU1IxUXhUbFZSYXpsV1RWUnNRMVpYZEZkYWJFWTJVVmhrVlZGVU1Eaz0=)

Clearly base46 encoding.
Hint was to keep decoding until we get a sentence.

A simple python script should do the trick.
I used decode.py to solve this problem.

Reveals the flag when we decode the portion after the {.

Flag: CTFlearn{M1NI0NS_ARE_C00L}

