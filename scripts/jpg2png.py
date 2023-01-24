#!/usr/bin/env python3

## Python script uses the os library to iterate through all files in the current directory.
## For each file, it checks if the file is a JPG image by checking if the file name ends with ".jpg". 
## If it is a JPG image, it uses the PIL library to open the image, convert it to PNG, 
## and save it with a new file name. 

## The split('.')[0] is used to remove the extension of the file and replace it with .png.

# *It's important to note that this script will overwrite the JPG images with PNG images.*

## Needs pip dependency
# ➜ pip3 install --user pillow

import os
from PIL import Image

# Specify the directory where the JPG images are located
directory = "./"

# Iterate through all files in the directory
for filename in os.listdir(directory):
    # Check if the file is a JPG image
    if filename.endswith(".jpg"):
        # Open the JPG image
        with Image.open(f"{directory}/{filename}") as im:
            # Convert the JPG image to PNG
            im = im.convert("RGB")
            im.save(f"{directory}/{filename.split('.')[0]}.png", "PNG")

print("Successfully converted all JPG images to PNG!")
