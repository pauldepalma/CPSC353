import os
os.system('sage --preparse txt_num_conv.sage')
os.system('mv txt_num_conv.sage.py txt_num_conv.py')
import txt_num_conv as convert 

def process(args):
    if (len(sys.argv) != 4):
     print("incorrect number of command line arguments")
     quit()
    if (args[2] != 'txt' and args[2] != 'num'):
     print("first argumment must be 'txt' or 'num'")
     quit()
   
   
    if args[1] == "txt":    
       fin = open(args[2], 'r') 
       fout = open(args[3], 'w') 
       msg_in = fin.read().rstrip()
       num = convert.txt_to_num(msg_in) 
       fout.write(str(num))
    if args[1] == "num":
       fin = open(args[2], 'r') 
       fout = open(args[3], 'w') 
       txt_in = fin.read().rstrip()
       num_in = Integer(txt_in,10) 
       txt = convert.num_to_txt(num_in)
       fout.write(txt)
       
process(sys.argv)
