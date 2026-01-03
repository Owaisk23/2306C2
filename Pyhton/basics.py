##import math
##
##x = 5
##y = 2
##name = 'Owais Ahmed Khan'
##ms = 'Data Science'
##print(x + y)
##print(math.cos(3.42))
##print(math.pi)
##print(math.floor(13.72))
##print(type(name))
##print(name.upper())
##
##print(name, ms)
##
##
### Arithmetic Operation
##print('Addition', x + y)
##print('Substraction', x - y)
##print('Multiply', x * y)
##print('Division', x / y)
##print('Floor Division', x // y)
##print('Remainder', x % y)
##print('Exponential', x ** y)
##
##
##gender = input('Enter your gender ')
##print(gender)
##
##square = int(input('Enter any number '))
##print(square * square)

#LISTS
cars = ['Mehran', 'Sportage', 'Carolla', 'Civic']

print(cars[0])
cars.append('Accord')
cars.insert(1, 'Carnival')
cars.remove('Civic')
cars.reverse()
print(cars)
print(cars.pop())

prices = [300, 800, 450, 1000, 1200, 1000, 380 ]
prices.sort()
print(prices)

print(prices.count(1000))

# tuple

tup1 = (2,3,4,5, "Ali")
print(tup1[-1])


person = {
    "name": "Haseeb Shahid",
    "profession": "Software Developer",
    "gender": "Male"
    }

print(person['profession'])






















