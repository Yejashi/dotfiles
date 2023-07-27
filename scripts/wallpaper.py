#!python3

from idna import valid_label_length
import requests, bs4, re, sys
import shutil, time, uuid

validity = True

if(len(sys.argv) != 3):
    print("Usage:  URL  Folder")
    sys.exit()

try:
    req = requests.get(str(sys.argv[1]))
except:
    validity = False

if(validity == False):
    sys.exit()

folderName = sys.argv[2]


wallRegex = re.compile(r':\S\Shttps://i.imgur.com/\w{7}.jpeg')

x = wallRegex.findall(req.text)

y = []
z = []

for i in x:
    y.append(i[3::])

z = list(set(y))

for i in z:
    req = requests.get(str(i), stream=True)
    fileName = str(uuid.uuid4())
    k = "/home/yejashi/Documents/" + folderName + "/" + fileName + ".jpeg"
    k = open(k, 'wb')
    req.raw.decode_content = True
    shutil.copyfileobj(req.raw, k)
    k.close
    time.sleep(0.5)