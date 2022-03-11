theWord = input("Please enter the word: ")

count = 0
i = 0
wordLen = len(theWord)

for x in theWord:
    if x == 'a' or x == 'e' or x == 'i' or x == 'o' or x == 'u':
        count += 1
print(theWord,"contains",count,"Vowels")
