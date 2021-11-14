Challenge is 20 points under Forensics Category

Provides us with one Tux.jpg.

Doing a binwalk reveals some sort of Zip file called 'flag' within it.

Binwalk extracting will take it out.

The zip file appears to be password protected, so I tried using file command to see if there were any comments.

There was one comment:
ICAgICAgUGFzc3dvcmQ6IExpbnV4MTIzNDUK

Looks like base64, and decoding it using b64 gives us: 
  Password: Linux12345
  
With this password we can get the flag.

Flag : CTFlearn{Linux_Is_Awesome}
