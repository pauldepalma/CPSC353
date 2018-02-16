'''
CPSC 353
Paul De Palma
depalma
ex10.sage
comprehension examples
'''


#List Comprehension, a python version of set-builder notation


#gen list of random integers
print "Generate a list of 10 randome integers in then range [1..3]"
lst = [random.randint(LOW,HIGH) for i in range(SIZE)]
print list
'''
#Permute a list

#Generate the alphabet
lst = [chr(i) for i in range(ord('A'),ord('Z'))]

#Permute the list
lst = Permutations(lst).random_element()

print lst


#iterators use a modified list comprehension syntax

#iterate over the first 10 primes of the form 4p + 1 where p is prime
w = (4*p + 1 for p in Primes() if is_prime(4*p+1))

for i in range(10):
  print next(w)



import random
import math

SIZE = 5
LOW = 1
HIGH = 100

def disp_lst(lst):
    for i in range(SIZE):
        print (lst[i])
    print()
    
def main():


    #gen list of integers in a range
    lst = [i for i in range(SIZE)]
    disp_lst(lst)

    #gen list of powers of 2
    lst = [int(math.pow(2,i)) for i in range(SIZE)]
    disp_lst(lst)

    #gen list of tuples of the form (integer,sqrt(integer))
    lst = [(i,math.sqrt(i)) for i in range(SIZE)]
    disp_lst(lst)

main()
'''
