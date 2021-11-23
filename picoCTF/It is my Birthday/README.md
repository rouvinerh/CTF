Challenge rated 100 points under Web Exploitation category.

Gives us a link and hints to having to consider collision in MD5.

For those that do not know, MD5 is a hash which is used to verify the integrity of a file. Think of it like a unique signature that represents the content in a file. It is a way to check if a file has been tampered with or changed.

MD5 is not unbreakable though, as a collision in hash would mean that files with different content can have the same hash due to the algorithm producing the same thing. This makes it vulnerable as attackers can inject malware via a bad download should the downloaded file match the hash of a clean file.

Anyways, this challenge asks us to upload two different PDFs to the website. I downloaded two exe files that have the same hash despite it being a different file. 
Changing the extension to .pdf should work, and uploading it gets me the flag.
https://www.mscs.dal.ca/~selinger/md5collision/

Flag: picoCTF{c0ngr4ts_u_r_1nv1t3d_aebcbf39}
