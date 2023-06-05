import random

fd = open("hello.txt", "r")
lines = fd.readlines()
print(random.choice(lines))
fd.close()
