def key_gen(pt):
  return makeMatrix(pt) 

def makeMatrix(pt):
  n = 3
  pt = pt.replace(" ","")  #remove spaces
  pt = pt.upper()
  pt_lst = list(pt)   #transform to list
  ln = len(pt_lst)
 
  '''
  The next part is tricky.
  We'll ultimately distribute the characters in pt_lst over n columns
  Unless pt_lst is divisible by n, we'll need padding of size [0,1,...,n-1]
  For example, if n = 3 
  len(pt)  pad
   4       2
  17       1
  13       2
  25       2
  33       0

  we can express this using the modulo of negative numbers

  -17 cong 1 % 3 b.c. -17 - 1 = k * 3, by the def of cong. 
  so -17 % 3 = 1, the padding we're looking for
  
  concretely: pt = "HELP"
  len(pt) = 4 
  -4 % 3 = 2 bc. -4 - 2 = -6k or -4 -2 is divisible by 3
  So we add 2 X's to the plaintext 
  H P
  E X
  L X
  ''' 
  for i in range((-ln)%n):
    pt_lst.append('X')
  print(pt_lst)  
  pt_lst = [ord(ch) - ord('A') for ch in pt_lst]
  # the next step is to transform pt_list into a 3 X n matrix. 
  Mpl = matrix(SR,len(pt_lst)/n,n,pt_lst)
  Mpl = transpose(Mpl)
  return Mpl 



'''
def main():
  pt = sys.argv[1] 
  Mpl = makeMatrix(pt)
  print(Mpl)


main()

'''
