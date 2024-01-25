#Generate the alphabet
lst = [chr(i) for i in range( ord('A'), (ord('Z') + 1 ) ) ]
lst1 = [] 
for i  in range(26):
 lst1.append(chr(i+65)) 

print("Alphabet by list comprehension")
print(lst)
print("Alphabet the old-fashion way")
print(lst1)

print("Permute the alphabet using a Sage function")
lstP = Permutations(lst).random_element()
print(lstP)

print("python also permutes")
import random
import copy
lstPy  = copy.deepcopy(lst) #preserve the original list
random.shuffle(lst) #permute original list
for i in range(26):
 print(lstPy[i] + ' ' + lst[i]  + ' ' )

print()
print("To make it clearer, permute a short sequence of integers")
lst = [1,2,3,4,5]
print(lst)
print(Permutations(lst).random_element())
