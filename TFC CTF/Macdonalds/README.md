Challenge was under Web Category.

The challenge gave us a website and going to the website, I saw that the challenge makers had indicated that the website server was hosted on a Macbook.

Instantly, I knew that we had to consider directory traversal in this, and I knew that for Macbooks, we just need to add a '/.DS_Store' at the back of the URl to bring us somewhere.

This made the website download a DS_Store file onto my computer, and using an online DS_Store analyzer, it revealed there were some directories called secrets inside the website.

I used dirbuster to brute force every single directory with secret in it.

Eventually, I found the right one, which was '/secret/(a very long hex)'.

Putting it at the back of the URL gave me the flag!
