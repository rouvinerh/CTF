Challenge is rated 20 points under Programming Category.

Seeing the title, I knew we had to do something regarding the Luhn Algorithm. The Lunh Algorithm is the thing that checks whether the credit card numbers we enter when we're shoppping is an actual credit card number.

In other words, it runs user input validation (impt to prevent SQLI or other forms of injection or manipulation)

The problem is a bit long, but to summarise it requires us to determine a credit card number that passes the checks. The credit card number would be the flag.

The clues are:
1. Number is divisible by 123457
2. Number is in the form: 543210******1234

This requires us to make a quick script to solve it.

Googling the Lunh Algorithm and copying and pasting some scripts was the easy part. 

For an in-depth explanation of how it works:
1. Takes the original number and starts from the rightmost digit moving left
2. Doubles the value of every second digit, including the rightmost.
3. Replace the resulting value at each position with the sum of digits of this position's value
4. Sum up all the resulting values form all positions
5. Calculate the check digit, which is equals to 10-(sum)mod10.
6. The check digit is the last number. 

To check whether it is legit, take the last digit of the number and calculate the algorithm above to see if you can get the same result. 

I used credit.py to solve for the credit card number.

Flag: CTFlearn{5432103279251234}
