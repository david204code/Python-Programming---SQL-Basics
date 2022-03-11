username = 'Bob'

print('Hello',username)     # notice a space is added by default
print('Hello ' + username)
print("Hello " + username)

age = 21

print(type(age))

print('Your age is ', age)
print('Your age is ' + age)  # error age is not a string

message = "Your age is " + age

new_age = input('Please enter your age: ')
print(type(new_age))

new_age += 1




