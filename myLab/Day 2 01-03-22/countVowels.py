theWord = input("Please enter the word: ")

count = 0
index = 0
wordLen = len(theWord)
theWord = theWord.lower()

for index in range(wordLen):
    if theWord[index] == 'a' or  theWord[index] == 'e' or  theWord[index] == 'i' or  theWord[index] == 'o' or  theWord[index] == 'u':
        count += 1
    index += 1

print(theWord,'contains',count,'Vowels')
