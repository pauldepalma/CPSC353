import random
from sage.crypto.util import ascii_to_bin
from sage.crypto.util import bin_to_ascii
from sage.crypto.block_cipher.sdes import SimplifiedDES


'''
Key has to work for both sDes and diffie-hellman
It must be prime and must be 10 bits
'''
def gen_key():
  while (1): 
    #generate 10 random bits to a list
    K = [random.randint(0,1) for i in range(10)] 
    #transform K to an integer 
    num = int(''.join(str(i) for i in K),2) 
    #if num is prime, return K and num 
    #num will be used in Diffie-Hellman, K in sDes
    if is_prime(num):
     return (K, num) 

def gen_key_sDes(K):
   k = str(K.binary())
   k = list(k)
   while(len(k) < 10):
    k.append(0)
   return k 


def gen_plaintxt_bits(p):
  P = ascii_to_bin(p)
  return P

def gen_plaintxt_ascii(p):
  P = bin_to_ascii(p)
  return P


def dec_sDes(C,K):
  sdes = SimplifiedDES()
  P = sdes.decrypt(C,K)
  return P 
