#Generate the alphabet
lst = [chr(i) for i in range( ord('A'), (ord('Z') + 1 ) ) ]
#Permute the list using a Sage function
lstP = Permutations(lst).random_element()

#python also permutes 
import random
import copy
lstPy  = copy.deepcopy(lst) #preserve the original list
random.shuffle(lst) #permute original list
for i in range(26):
 print(lstPy[i] + ' ' + lst[i]  + ' ' )

print()
#to make it clearer, we'll permute a short sequence of integers
lst = [1,2,3,4,5]
print(Permutations(lst).random_element())
