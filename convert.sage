    
#Converts a string to a digit sequence
#Returns the digit sequence 

#msg_in is a string
def txt_to_num(msg_in):      
  #transforms string to the indices of each letter in the 8-bit ASCII table
  msg_idx = map(ord,msg_in)
  #computes the base 256 integer formed from the indices transformed to decimal.
  #each digit in the list is multiplied by the respective power of 256 from
  #right to left.  For example, [64,64] = 256^1 * 64 + 256^0 * 64
  num = ZZ(msg_idx,256)
  return num 

#Converts a digit sequence to a string
#Return the string

#num_in is a decimal integer composed as described above 
def num_to_txt(num_in):
  #returns the list described above 
  msg_idx = num_in.digits(256)
  #maps each index to its associated character in the ascii table 
  m = map(chr,msg_idx)
  #transforms the list to a string
  m = ''.join(m)
  return m
  
  
