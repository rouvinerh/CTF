Challenge is rated 30 points under Forensics Category.

The challenge gives us a file called Gandalf.jpg.

Upon inspection of the file using file, we get 3 strings of code.
1. Q1RGbGVhcm57eG9yX2lzX3lvdXJfZnJpZW5kfQo=
2. xD6kfO2UrE5SnLQ6WgESK4kvD/Y/rDJPXNU45k/p
3. h2riEIj13iAp29VUPmB+TadtZppdw3AuO7JRiDyU

The first one uses Base64 encoding, hinted by the = sign at the end fo the string.

Decoding all 3 gives us these:

1. CTFlearn{xor_is_your_friend}
2. >|픬NR:Z+/?2O\8O
3. j )T>`~Mmf]p.;Q<

The first one gives us a hint to XOR something.

Clearly we are meant to XOR the other two strings using some script as what the challenge says.

I wrote a simple script to take the strings generate the flag.
It's called gandalf.py

The script takes the decoded stirngs and XOR's them which reveals the flag.
Wrote the script after understanding how python XOR's things.

Flag: CTFlearn{Gandalf.BilboBaggins}
