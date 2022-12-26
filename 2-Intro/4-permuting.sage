#Generate the alphabet
lst = [chr(i) for i in range( ord('A'), (ord('Z') +1) ) ]

#Permute the list using a Sage function
lstP = Permutations(lst).random_element()

for i in range(26):
 print(lst[i] + ' ' + lstP[i]  + ' ' )

print()
#python also permutes 
import random
import copy
lstPy  = copy.deepcopy(lst) #preserve the original list
random.shuffle(lst) #permute original list
for i in range(26):
 print(lstPy[i] + ' ' + lst[i]  + ' ' )

