#Generate the alphabet
lst = [chr(i) for i in range( ord('A'), (ord('Z') + 1 ) ) ]
#Permute the list using a Sage function
lstP = Permutations(lst).random_element()

dict = {lst[i]:lstP[i] for i in range(26)}
print(dict)
print(dict['A'])
