Challenge is rated 10 points under Reverse Engineering Category.

This is a basic example of how to read an APK file and reverse engineer the problem to get the flag.

Provides an apk file to download.

I used an online APK file.

An APK file is an Android Package Kit, which are files that are for distributing applications on Android OS from Google. 
It contains all the data and programs for an application.

Used an online source to decompile this file
http://www.javadecompilers.com/result

Poked around a lot in this file, first time dealing with apk files here.

Looked into smali/com/example/secondapp and found MainActivity.smali.

Looked into it and found the parts of the flag.
There were 3 things found:
1. CTFlearn{
2. _is_not_secure!}
3. b74dec4f39d35b6a2e6c48e637c8aedb
I wasn't sure what the third one was.
Googling it told me it was a MD5 hash and reversing it gave me Spring2019.

Flag: CTFlearn{Spring2019_is_not_secure!}
