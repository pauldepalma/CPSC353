def str2lst(s):
  return [ord(x) - 65 for x in s]

def lst2str(lst):
  return ''.join([chr(int(x) + 65) for x in lst])

def main():
 p = 'BAD'
 pT = str2lst(p)
 p = 'EDCBA'
 perm = [ord(x) - 64 for x in p]
 cT = [perm[pT[i]] -1 for i in range(len(pT))]
 print(p)
 print(lst2str(cT))
 invperm = Permutation(perm).inverse()
 print(invperm)

main()
