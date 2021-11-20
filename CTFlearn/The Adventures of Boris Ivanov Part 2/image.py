from PIL import Image
new_image = Image.new ('RGB', (500, 500), 'black')


height =0
for i in range (500):
    im = Image.open (f'{i}.png')
    new_image.paste (im, (0,height))
    height +=1

new_image.show()
