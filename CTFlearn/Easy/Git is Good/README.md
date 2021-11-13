Challenge is rated 30 points under Forensics Category.

Gives us a download link.
https://mega.nz/#!3CwDFZpJ!Jjr55hfJQJ5-jspnyrnVtqBkMHGJrd6Nn_QqM7iXEuc

Downloaded is a zip file called gitisGood.zip.

Now we know this challenge involves using the Git comamnd somehow. 

Throughout the file, there are two files, flag.txt and a .git file.

Clearly we need to use git command in terminal.
After unzipping the file, I used:
git log flag.txt
This gave me the edit details of the file, namely the author and the date.

If we use:
git checkout 
We basically get out of this repository.

After that we use:
git show
To show us the changes and history of edits.
This brings us our flag.

Flag: CTFlearn{protect_your_git}


