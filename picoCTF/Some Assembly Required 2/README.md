Challenge is rated 110 points under Web Exploitation Category.

Straightaway, we know that this challenge is something to do with wasm, which is web assembly. So right now, we need to analyze the wasm code of the website given to us. 
http://mercury.picoctf.net:44570/index.html

Inside the wasm code, we can see at the very end of the code, there is a string that highlights a i32.cost 1024:
xakgK\5cNs><m:i1>1991:nkjl<ii1j0n=mm09;<i:u\00\00

Inside the code, there's also a function called check_flag, which seems to compare this 1024 string to another constant 1072. I assumed that 1072 was our input, because there's nothing else to compare to. So, our 'flag' is this constant here.

Now we just need to figure out how to decode this thing. 

While I threw it into a XOR brute forcer and also let it run, I continued to analyze the code. I could see that there was a copy_char function, which I found a bit odd. Shouldn't the web page only check the flag and put an output if it is wrong/right?

This copy_char function seemed to XOR something against something. This function is the one that returns constant 1072 as well! Clearly we have to break this one down. I can see straightaway that there is an XOR function within the thing. Clearly, we have to XOR the thing. Brute force seemed to returned me the flag.

The key seemed to be the constant 8 inside the wasm file, neat.

Flag: picoCTF{64e2a9691192fcbd4aa9b8f5ee8134a2}
