print("Generate the alphabet")
lst = [chr(i) for i in range( ord('A'), (ord('Z') + 1 ) ) ]
print(lst)

print("Generate a permuted list")
lstP = Permutations(lst).random_element()
print(lstP)

print("Here the dictionary")
#Alphabet is key, permuted alphabet is the value
dict = {lst[i]:lstP[i] for i in range(26)}
print(dict)

#Display the encoding of 'S'
print("the encoding of S is: " + dict['S'])
