def str2lst(s):
  return [ord(x) - 65 for x in s]

def lst2str(lst):
  return ''.join([chr(int(x)) + 65 for x in lst])

def main():
 strIn = 'HELLO'
 lstOut = str2lst(strIn)
 print(lstOut)
 strOut = lst2str(lstOut)
 print(strOut)

main()
