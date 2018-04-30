#Permute a list

#Generate the alphabet
lst = [chr(i) for i in range(ord('A'),ord('Z'))]

#Permute the list
lst = Permutations(lst).random_element()

print lst

