
# list of lists
prod1 = ["a123","Hammer",2.75]
prod2 = ["a124","Screwdriver",0.95]
prod3 = ["a125","Pliers",1.62]
products = [prod1, prod2, prod3]
print(products)

for prod in products:
    print(prod[0],"\t",prod[1],"\t",prod[2])
