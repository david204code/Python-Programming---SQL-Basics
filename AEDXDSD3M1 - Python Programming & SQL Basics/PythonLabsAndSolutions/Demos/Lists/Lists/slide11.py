adminIDs = [12,33,84,45,67,36,16,66,67,99]
id = int(input('Enter your ID '))
if id in adminIDs:
    print('Welcome!')

names = ['David','John','Joanne','Sean','Sonia']
if 'Sean' in names:
    print('Sean is in the list!')

moreNames = "David,John,Joanne,Sean,Sonia"
print("moreNames: ",moreNames)
if 'John' in moreNames:
    print('John is in the list!')

