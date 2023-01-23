import sys
import caesar as ciph

def init(args):
    mode = args[1]
    key_file = open(args[2],'r')
    fin = open(args[3],'r')
    fout = open(args[4], 'w')
    return mode, key_file, fin, fout    

def process(args):
    mode, key_file, fin, fout = init(args)
    key = int(key_file.read())

    data = fin.read().upper()
    for ch in data:
        if (ch.isalpha()):
            if (mode == 'enc'):
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

def main():
    #generate, store key
    if len(sys.argv) == 2:
        write_key(sys.argv[1])
        return

    #encrypt or decrypt
    process(sys.argv)

main()

