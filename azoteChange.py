import sys

f = open(".azotebg", "rt")

fList: list[str] = f.read().split("\n")

f.close()

dirt: list[str] = fList[2].split('"')

dirt[1] = '"' + sys.argv[1] + '"'

temp = ""

for i in range(len(dirt)):
    temp += dirt[i] + ''

fList[2] = temp

repVal: str = ""
for i in range(len(fList)):
    repVal += fList[i] + "\n"

f = open(".azotebg", "w")

f.write(repVal)

f.close()
