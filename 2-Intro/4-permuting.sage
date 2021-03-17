
#Generate the alphabet
lst = [chr(i) for i in range( ord('A'), (ord('Z') +1) ) ]

#Permute the list using a Sage function
lstP = Permutations(lst).random_element()

for i in range(26):
 print(lst[i] + ' ' + lstP[i]  + ' ' )

#python also permutes 
import random

random.shuffle(lst)

for i in range(26):
 print(lst[i])

