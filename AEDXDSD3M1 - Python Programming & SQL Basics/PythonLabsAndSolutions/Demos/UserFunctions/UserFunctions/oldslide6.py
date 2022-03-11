
def add(a,b):
    return a+b

def getPriceIncVAT(price):
    return price * 1.2

def myFunc():
    return (2,32)

#---------- Main program ----------
print( add(2,3) )

price = getPriceIncVAT(100)
print(price)

name = add('Billy','Beane')
print(name)

myvar = myfunc()
print(myvar)
print(myvar[0])