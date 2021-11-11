First thing to do is check whether the input has sanitisation, of which it doesn't.

Using payload.py to send my requests and print it out, I noticed that the usual 1 OR 1=1 injection gave us some info but not much.
From this, I know what to do.
Trying other inputs produced '0 results'. I then know that '0 Results' is the product of a failed injection.

After this, I noticed that the challenge gave us a hint, to use UNION command.

UNION command combines SELECT queries to access the database.
First thing I did was use the payload '1 UNION SELECT 1', which produced nothing.

So I at least know that there is more than 1 column present, I then experimented with increasing the number until I reached:
'1 UNION SELECT 1,2,3,4".

This produced a result that wasn't typical, so I know that there are 4 columns in the table.

I replaced NULL with @@VERSION to determine what kind of server this is running on, as different servers would have different payloads required.
This gave me '5.5.58-0ubuntu0.14.04.1', which is a MySQL server,

After which, I queried the table_name from information_schema.tables, which is a payload I googled after looking for queries with UNION.
My payload was '1 UNION SELECT table_name,NULL,NULL,NULL FROM information_schema.tables.

Scroll down and we can find the table_name with the flag, 'w0w_y0u_f0und_m3'.

Now we know the table name, but trying '1 UNION SELECT * FROM w0w_y0u_f0und_m3' produced nothing.

So we need to find the column name from here. Using the same payload as the one I used to find the table name, I changed table_name to column_name and found this column called
'f0und_m3'.

Now I know the column name and the table name.

I crafted the query '1 UNION SELECT f0und_m3,NULL,NULL,NULL FROM w0w_y0u_f0und_m3'
This printed out the flag on the screen.

I used injection.py to test payloads.
