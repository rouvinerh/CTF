Challenge is rated 100 points under Web Exploitation Category.

Gives us a link to try and break into

https://jupiter.challenges.picoctf.org/problem/37821/

Takes us to a login portal that is 'secure'. 

Using Burp does not do anything, meaning there are no requests sent to the server. This script checks the password locally. So this means we need to look at the sources of the website and see how we can break that. 

Looking at the elements of the console reveal a condition based string verifier. It's the flag but all jumbled up.

Putting it back together was easy.

Flag: picoCTF{no_clients_plz_1a3c89}
