import os
import sys
from zipfile import ZipFile
import json

dist_folder = "dist"
files = [
    "info.json",
    "data.lua",
    "prototypes/item.lua",
    "graphics/entity.png",
    "graphics/icon.png",
    "locale/en/locale.cfg",
]

if __name__ == '__main__':

    dirname = os.path.dirname(os.path.realpath(__file__))

    with open(os.path.join(dirname, 'info.json'), 'r') as f:
        data = json.load(f)

    release_name = data['name'] + "_" + data['version']
    release_folder = os.path.join(dirname, dist_folder)
    release_file = os.path.join(release_folder, release_name)

    if not os.path.exists(release_folder):
        os.makedirs(release_folder)

    with ZipFile(release_file + ".zip", 'w') as zf:
        for f in files:
            zf.write(os.path.join(dirname, f), release_name + "/" + f)
