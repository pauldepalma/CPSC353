

# This file was *autogenerated* from the file control.sage
from sage.all_cmdline import *   # import sage library

_sage_const_1 = Integer(1); _sage_const_2 = Integer(2); _sage_const_3 = Integer(3); _sage_const_4 = Integer(4)
import os
os.system('sage --preparse caesar.sage')
os.system('mv caesar.sage.py caesar.py')
import caesar as ciph 

def init(args):
    mode = args[_sage_const_1 ]
    key_file = open(args[_sage_const_2 ],'r')
    fin = open(args[_sage_const_3 ],'r')
    fout = open(args[_sage_const_4 ], 'w')
    return mode, key_file, fin, fout    

def process(args):
    mode, key_file, fin, fout = init(args)
    key = int(key_file.read())

    data = fin.read().upper()
    for ch in data:
        if (ch.isalpha()):
            if (mode == 'enc'):
                #ch = ciph.encrypt(ch,key)
                ch = ciph.encrypt(ch,key)
            if (mode == 'dec'):
                ch = ciph.decrypt(ch,key)
        fout.write(ch)

    fin.close()
    fout.close()

def write_key(file_name):
    key_file = open(file_name,'w') 
    key = ciph.key_gen()
    key_file.write(str(key))
    key_file.close()
'''
usage: python3 caesar_tst.py mode key_file input output
#where:
 mode is enc or dec
 key_file is the name of the file containing the key
 input is the name of the file containing text to be encrypted/decrypted
 output is the name of the file containing the result of the encrypt/decrypt operation 
'''
def main():
    #generate, store key
    if len(sys.argv) == _sage_const_2 :
        write_key(sys.argv[_sage_const_1 ])
        return

    #encrypt or decrypt
    process(sys.argv)
main()


