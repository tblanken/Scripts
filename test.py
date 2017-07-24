<<<<<<< HEAD
# Adding a comment to loop.py
=======
# Testing cherry picking 
>>>>>>> testbranch

# print ('Hello world!')

# --------------------------

# name = 'Monty'
# print('Hello, %s' % name)
# print('Hello, {}'.format(name))

# --------------------------

# If statement shown here

# x = 1
# y = 2
# print ('x is equal to y: %s' % (x == y))
# z = 1
# print ('x is equal to z: %s' % (x == z))
# names = ['Donald', 'Jake', 'Phil']
# words = ['Random', 'Words', 'Dogs']
# if names == words:
#   print ('Names list is equal to words')
# else:
#   print ("Names list isn't equal to words")
#new_names = ['Donald', 'Jake', 'Phil']
#print ('New names list is equal to names: %s' % (new_names == names))

# ---------------------------

# Break Statement

# for n in range(2, 10):
#     for x in range(2, n):
#         if n % x == 0:
#             print (n, 'equals', x, '*', n/x)
#             break
#     else:
         # loop fell through without finding a factor
#         print (n, 'is a prime number')

# ---------------------------

# Continue statement

# for num in range(2, 10):
#     if num % 2 == 0:
#         print ("Found an even number", num)
#         continue
#     print ("Found a number", num)

# ---------------------------

# Defining a dictionary (similar to Associative Arrays in other languages)

# numbered_words = dict()
# numbered_words[2] = 'world'
# numbered_words[1] = 'Hello'
# numbered_words[3] = '!'

# Another Example

# tel = {'jack': 4098, 'sape': 4139}
# tel['guido'] = 4127
# tel
# {'sape': 4139, 'guido': 4127, 'jack': 4098}
# tel['jack']
# 4098
# del tel['sape']
# tel['irv'] = 4127
# tel
# {'guido': 4127, 'irv': 4127, 'jack': 4098}
# tel.keys()
# ['guido', 'irv', 'jack']
# 'guido' in tel
# True

# ----------------------------

# For statement

# n = 101
# sum = 0

# for counter in range(1,n):
#   sum = sum + 1

# print("Sum of 1 until %d: %d" % (n,sum))

# --------------------------------
 # Open a file for input and reading
 
# file = open('testfile.txt','w')
# file.write('Hello World\n') 
# file.write('How are you?') 
# file.close()

# file = open('testfile.txt', 'r') 
# test = file.read()
# print(test) 
# file.close()

# -----------------------------

# Call a Function

#def fib(n):    # write Fibonacci series up to n
##     """Print a Fibonacci series up to n."""
#    a, b = 0, 1
#    while a < n:
#        print (a,)
#        a, b = b, a+b

## Now call the function we just defined:
#fib(2000)

# -------------------------------

# Fancy output

# s = 'Hello, world.'
# str(s)
# 'Hello, world.'
# repr(s)
# "'Hello, world.'"
# str(1.0/7.0)
# '0.142857142857'
# repr(1.0/7.0)
# '0.14285714285714285'
# x = 10 * 3.25
# y = 200 * 200
# s = 'The value of x is ' + repr(x) + ', and y is ' + repr(y) + '...'
# print (s)
## The value of x is 32.5, and y is 40000...
## The repr() of a string adds string quotes and backslashes:
#hello = 'hello, world\n'
#hellos = repr(hello)
#print (hellos)
#'hello, world\n'
# The argument to repr() may be any Python object:
#repr((x, y, ('spam', 'eggs')))
#"(32.5, 40000, ('spam', 'eggs'))"

# ----------------------------

# Try statement

# try:
#    raise Exception('spam', 'eggs')
# except Exception as inst:
#    print (type(inst))     # the exception instance
#    print (inst.args)      # arguments stored in .args
#    print (inst)           # __str__ allows args to be printed directly
#    x, y = inst.args
#    print ('x =', x)
#    print ('y =', y)
