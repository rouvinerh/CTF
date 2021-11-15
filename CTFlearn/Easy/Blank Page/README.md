Challenge is rated 30 points under Forensics Category.

Challenge gives us one txt file that is completely empty!

Using hexdump, I can see that there are many different hexes throughout the file.
I used an online string to hex converter to verify. 
I can see that there is the hex character '20' which is equals to a space.

I stared at it for a while before it dawned on me that space is empty and the other hex character is just not empty.

It looks like a binary code.

I used an online text substituter to replace 20 with 0 and everything else with 1.

I took that binary to an online binary decoder and got the following message:

From The Global Anti-Terrorists Tactics

If you read this you passed. Congrats.
Your first task will come tomorrow.
Good luck.

CTFlearn{If_y0u_r3/\d_thi5_you_pa553d}
