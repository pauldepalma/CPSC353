

# This file was *autogenerated* from the file caesar.sage
from sage.all_cmdline import *   # import sage library

_sage_const_1 = Integer(1); _sage_const_25 = Integer(25); _sage_const_26 = Integer(26)
import random
def key_gen():
    return random.randint(_sage_const_1 ,_sage_const_25 )    

def encrypt(ch,key):
    pos = ord(ch) - ord('A')
    pos = (pos + key) % _sage_const_26 
    pos = pos + ord('A')
    return chr(pos)

def decrypt(ch,key):
    pos = ord(ch) - ord('A')
    pos = (pos- key) % _sage_const_26   
    pos = pos + ord('A')
    return chr(pos)


