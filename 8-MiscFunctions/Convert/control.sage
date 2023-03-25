import os
os.system('sage --preparse txt_num_conv.sage')
os.system('mv txt_num_conv.sage.py txt_num_conv.py')
import txt_num_conv as convert 

def process(args):
    mode = args[1]
    if mode == "txt":    
       fin = open(args[2], 'r') 
       fout = open(args[3], 'w') 
       msg_in = fin.read().rstrip()
       num = convert.txt_to_num(msg_in) 
       fout.write(str(num))
    if mode == "num":
       fin = open(args[3], 'r') 
       fout = open(args[4], 'w') 
       txt_in = fin.read().rstrip()
       num_in = Integer(txt_in,10) 
       txt = convert.num_to_txt(num_in)
       fout.write(txt)
       
process(sys.argv)

