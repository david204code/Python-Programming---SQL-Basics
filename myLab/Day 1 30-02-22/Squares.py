num = 1

while num <= 100:
    squared = num**2
    if squared > 2000:
        break
    print(num, ' ',squared)
    num += 1