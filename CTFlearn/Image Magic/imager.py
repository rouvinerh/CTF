from PIL import Image
im = Image.open ('out copy.jpg')

new_image = Image.new ('RGB', (304, 304), 'black')
y=0
x=0
i=1
for x in range(0,304):
    for y in range (0, 92):
        r,g,b = im.getpixel((i,0))
        new_image.putpixel((x,y), (r,g,b))
        i+=1
        if i>= 27968:
            break

new_image.show()


