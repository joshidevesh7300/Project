import os
import shutil

source = "./files/"
destination = "./organized/"

if not os.path.exists(destination):
    os.makedirs(destination)

for file in os.listdir(source):
    ext = file.split('.')[-1]
    ext_folder = os.path.join(destination, ext)

    if not os.path.exists(ext_folder):
        os.makedirs(ext_folder)

    shutil.move(os.path.join(source, file),
                os.path.join(ext_folder, file))

print("Files organized successfully!")
