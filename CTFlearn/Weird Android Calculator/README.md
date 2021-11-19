Challenge is rated 60 points under Programming Category.

This challenge gives a .apk file to download and use.

I used a combination of apktools to first decompile the .apk file and try to read it, which didn't do me much good.

I then used dex2jar to turn it into a .jar file, followed by JD-GUI to analyze it in Java code.

I don't know a lot of Java myself, but I saw this snippet of code that I understood:

double parseExpression() {
      double d;
      for (d = parseTerm();; d += parseTerm()) {
        eatSpace();
        if (this.f0c != 43) {
          if (this.f0c != 45) {
            if (d > 100.0D)
              throw new RuntimeException("The number is too large. Please buy the full version!"); 
            break;
          } 
          eatChar();
          d -= parseTerm();
          continue;
        } 
        eatChar();
      } 
      if (d > 100.0D) {
        int[] arrayOfInt = new int[41];
        arrayOfInt[0] = 1407;
        arrayOfInt[1] = 1397;
        arrayOfInt[2] = 1400;
        arrayOfInt[3] = 1406;
        arrayOfInt[4] = 1346;
        arrayOfInt[5] = 1400;
        arrayOfInt[6] = 1385;
        arrayOfInt[7] = 1394;
        arrayOfInt[8] = 1382;
        arrayOfInt[9] = 1293;
        arrayOfInt[10] = 1367;
        arrayOfInt[11] = 1368;
        arrayOfInt[12] = 1365;
        arrayOfInt[13] = 1344;
        arrayOfInt[14] = 1354;
        arrayOfInt[15] = 1288;
        arrayOfInt[16] = 1354;
        arrayOfInt[17] = 1382;
        arrayOfInt[18] = 1288;
        arrayOfInt[19] = 1354;
        arrayOfInt[20] = 1382;
        arrayOfInt[21] = 1355;
        arrayOfInt[22] = 1293;
        arrayOfInt[23] = 1357;
        arrayOfInt[24] = 1361;
        arrayOfInt[25] = 1290;
        arrayOfInt[26] = 1355;
        arrayOfInt[27] = 1382;
        arrayOfInt[28] = 1290;
        arrayOfInt[29] = 1368;
        arrayOfInt[30] = 1354;
        arrayOfInt[31] = 1344;
        arrayOfInt[32] = 1382;
        arrayOfInt[33] = 1288;
        arrayOfInt[34] = 1354;
        arrayOfInt[35] = 1367;
        arrayOfInt[36] = 1357;
        arrayOfInt[37] = 1382;
        arrayOfInt[38] = 1288;
        arrayOfInt[39] = 1357;
        arrayOfInt[40] = 1348;
        arrayOfInt;
        int i = arrayOfInt.length;
        for (byte b = 0; b < i; b++)
          Log.d("OUTPUT", Integer.toString(arrayOfInt[b] ^ 0x539)); 
          
I think if we launch the calculator and key in something that is more than 100 digits or if the result is more than 100 digits, it'll throw an error. Then there's this weird XOR portion here.,

Why would a calculator need an XOR portion?

I just took the whole array and pasted it in Eclipse to see if it works on it's own. 

I edited it based on how to print characters and how to print output in Java, and this was the code:

public class MyClass {
    public static void main(String args[]) {
        int arrayOfInt[] = new int[41];
        arrayOfInt[0] = 1407;
        arrayOfInt[1] = 1397;
        arrayOfInt[2] = 1400;
        arrayOfInt[3] = 1406;
        arrayOfInt[4] = 1346;
        arrayOfInt[5] = 1400;
        arrayOfInt[6] = 1385;
        arrayOfInt[7] = 1394;
        arrayOfInt[8] = 1382;
        arrayOfInt[9] = 1293;
        arrayOfInt[10] = 1367;
        arrayOfInt[11] = 1368;
        arrayOfInt[12] = 1365;
        arrayOfInt[13] = 1344;
        arrayOfInt[14] = 1354;
        arrayOfInt[15] = 1288;
        arrayOfInt[16] = 1354;
        arrayOfInt[17] = 1382;
        arrayOfInt[18] = 1288;
        arrayOfInt[19] = 1354;
        arrayOfInt[20] = 1382;
        arrayOfInt[21] = 1355;
        arrayOfInt[22] = 1293;
        arrayOfInt[23] = 1357;
        arrayOfInt[24] = 1361;
        arrayOfInt[25] = 1290;
        arrayOfInt[26] = 1355;
        arrayOfInt[27] = 1382;
        arrayOfInt[28] = 1290;
        arrayOfInt[29] = 1368;
        arrayOfInt[30] = 1354;
        arrayOfInt[31] = 1344;
        arrayOfInt[32] = 1382;
        arrayOfInt[33] = 1288;
        arrayOfInt[34] = 1354;
        arrayOfInt[35] = 1367;
        arrayOfInt[36] = 1357;
        arrayOfInt[37] = 1382;
        arrayOfInt[38] = 1288;
        arrayOfInt[39] = 1357;
        arrayOfInt[40] = 1348;
        
        int i = arrayOfInt.length;
        for (byte b = 0; b < i; b++)
            System.out.print((char)(arrayOfInt[b] ^ 0x539)); 
    }
}

This gave me the flag after execution.

Flag: CTFlearn{APK_4nalys1s_1s_r4th3r_3asy_1snt_1t}
