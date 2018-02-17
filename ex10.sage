'''
CPSC 353
Paul De Palma
depalma
ex10.sage
comprehension examples
'''
import random
import math

#List Comprehension, a python version of set-builder notation


print "Generate a list of 10 integers"
lst = [i for i in range(10)]
print lst
print  

print "Generate a list of 10 random integers in then range [1..1000]"
lst = [random.randint(1,1000) for i in range(10)]
print lst
print  


print "Generate a list powers of 2" 
lst = [int(math.pow(2,i)) for i in range(10)]
print lst
print  

print "Generate a list of tuples of the form (integer,sqrt(integer))"
lst = [(i,math.sqrt(i)) for i in range(10)]
for i in range(10):
  print lst[i]
print  

print "A list containing the alphabet"
lst = [chr(i) for i in range(ord('A'),ord('Z'))]
print lst
print

print "Permute the alphabet"
lst = Permutations(lst).random_element()
print lst
print

print "Generate a list of the first 10 primes"
lst = [nth_prime(x) for x in range(1,11)]
print lst

print "Done another way"
lst1 = Primes()
lst = [lst[i] for i in range(10)]
print lst

print "This time with an iterator"
iter1 = (p for p in Primes())
for i in range(10):
 print next(iter1)
print  

print "A more interesting iterator"
iter2 = (4*p +1 for p in Primes() if is_prime(4*p+1))
for i in range(10):
  print next(iter2)

print "A dictionary comprehension"
#list composed of the alphabet 
keys = [chr(i) for i in range(ord('A'),ord('Z'))]
#list composed of a permuted alphabet 
values = Permutations(keys).random_element()
#dictionary where item in alphabet are keys and item in values are values
dict = {k: v for k, v in zip(keys,values)}  
#display dict as a sequence of tuples
for item in dict.items(): 
 print item
