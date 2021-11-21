Challenge is rated 90 points under Cryptography Category.

Challenge gives us a command to use. 
nc mercury.picoctf.net 10333.

This brings us to a program that will decrypt any RSA message, EXCEPT the ciphertext. How unfortunate.

So when I tried this program, it really encrypts all the different message.
However, when I use the same inputs, it will output the same thing, indicating that there is no padding in this RSA.

They have given us the values of n and e as well. N doesn't seem to be a prime number when I tried factordb.com
The hint was about what we can do with a diffrent pair of ciphers and plaintext. 

So after a lot of research, I determined that RSA is homomorphic under multiplication. I used this challenge to completely breakdown any misunderstandings I had with RSA encryption, so I can use it for future challenges.
https://cseweb.ucsd.edu/classes/sp20/cse291-i/lectures/11-rsa2-notes.pdf

This is a full recap of RSA and it's functions, so scripts make a lot of sense next time for me. In future challenges, I will not be explaining much about RSA. 
In RSA, keys are generated based on a mathematical formula, and since it's asymmetric there are two keys, the public and private.
The value of e is the public key, which everyone know, but only the private key can decrypt the data, and the private key cannot be guessed.

The original cipher follows the conventional formula:
c = m^e mod N

The decryption follows this:
m = c^d mod N 

This means that d is the private key kind of, because we are given C, N and e RSA problems.

N is comprised of two super large prime numbers, p and q. 
We calculatethe totient function, which let's call it phi. 
phi = (p-1)(q-1) 

From e, we can calculate the value of d as d has to follow this formula:
1 = e*d mod phi

So from this decryption we can find phi, p and q. And from there we can find the values of d.
Having the private key of d, we work on the cipher and decrypt c to form m. 

There are a couple of risks with RSA values given to us in challenges.
These are attacks that can be done on it if it uses textbook RSA.
1. Small e Value

When the value of 3 is really small, we can do a small e attack on the problem. 
m = c ^1/3

2. Meet in the middle attack for random m
x = c/r^e for r from 1 to sqrt(m)
y = s^e for s from 1 to sqrt(m)

If m = r*s, m^e = r^e * s^e

Key Generation has vulnerabiliies, which for the sake of keeping this relevant, I will not talk about.

Next and most importantly, we can exploit the fact that some RSA problems give us any cipher to input and decrypt. 
1. Input challenge cipher and get c
2. Submit ciphertext c' for decryption, where c' = r^e * cmodN as it uses the same formula to encrypt it.
3. Receive m' = rm
4. Original message can be found from here! 
5. m'/r mod N = m 

Generally RSA uses padding to increase it's security, with the weaknesses of the usual textbook method.
Padding is just a word that means adding some stuff to the cipher to make it more secure, sort like adding random digits to a RSA N value and making it hard to determine the primes it uses. 
For the sake of this challenge, not gonna go into it either.

So back to the challenge, we now have a formula to use, whereby we use some random parameters to decrypt the formula.

In this case I took the number 2 to encrypt.
We know m = 2.
So c'  = 2^emodN = 2^65537 mod N
e = 65537
n = 8234465539064316649905380956116412323641212763172189096150541884439338745032591541438959883353890673015851213546788183406309301052819686596289181128116030549086477653604644838931253220578584298504180706828803615566642848451371804132929409947316187201742351816615866583132379001930031730185518093655314062552
c' = 169456328353538766995168618519995570502450569238947656161013283491463513704619921966729798276404950306994815936833602289684234021550946179845291178890413117423699407941467554698479000098621472420763421760451056459213945020227772138067181616668862109879992779983113429697843007333163529561536535751707773112

encrypt (m1) * encrypt (m2) = encrypt (m1*m2) (this is math)

So we take c and multiply it by c'.
product = 
3755552463735368887686460409791231636826538731021729138409460051977409397688298349023388211116101680197907521341607396630520292475336816807922699648891751326666601296949042885878361653038735093379501785216423533543268952988723724774247388292421978242219052595639394330148004452089952567086814045646561877404401489268472096286375352686508937399412701605691006057048940321088864706440033495340453726733141013020260860102345449732231124904258622101540509915783839421419400240688780516572897670859452335012407597164385630228476666336913700422992582010205898674353453132651706275918066825541248590831526093738471309936

Now we decrypt this and divide it by 2 to get the original message.
Decrypt it using the algorithm inside the program!

m =
26044842152324989228223821819244587062622109927364150730800119381131169094030205178905791129142394209255863703009530845367562066848890948215842505932581965757988575284167379670347789556476601949743779080891673147682372937744101807196105544973794816369193768002880718338641389156697465290111796731160498932387

To decrypt m, just convert it to a byte type, then change it to hex, then change it back to a string!
Thanks to all the wonderful sources that has helped me with this, and I feel more confident about RSA now.

Flag: picoCTF{m4yb3_Th0se_m3s54g3s_4r3_difurrent_1772735}








