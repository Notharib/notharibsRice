import sys

f = open(".swwwbg", "rt")

fList: list[str] = f.read().split("\n")

f.close()

dirt: list[str] = fList[1].split(' ')

dirt[6] = sys.argv[1]

temp: str = ""
for i in range(len(dirt)):
    temp += dirt[i] + ' '

fList[1] = temp

repVal: str = ""
for i in range(len(fList)):
    repVal += fList[i] + "\n"

f = open(".swwwbg", "w")

f.write(repVal)

f.close()
