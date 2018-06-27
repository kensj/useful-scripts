import os

files = []
for file in os.listdir(os.getcwd()):
    if file.endswith(".HEIC"):
        file_to_remove = file[:-5]+".jpg"
        os.remove(file_to_remove)
