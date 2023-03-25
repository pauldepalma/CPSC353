#Generate the alphabet
lst = [chr(i) for i in range( ord('A'), (ord('Z') + 1 ) ) ]
print(lst)

#Permute the list using a Sage function
lstP = Permutations(lst).random_element()
print(lstP)

#Alphabet is key, permuted alphabet is the value
dict = {lst[i]:lstP[i] for i in range(26)}
print(dict)

#Display the encoding of 'S'
print("the encoding of S is: " + dict['S'])
