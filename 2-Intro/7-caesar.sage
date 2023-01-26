import random 

def genKey():
    key = randint(1,25) 
    return key

def encrypt(ch,key):
    pos = ord(ch) - ord('A')
    pos = (pos + key) % 26
    pos = pos + ord('A')
    return chr(pos)

def decrypt(ch,key):
    pos = ord(ch) - ord('A')
    pos = (pos - key) % 26
    pos = pos + ord('A')
    return chr(pos)

def main():
    key = genKey()
    
    print("Enter plaintext")
    plain = input().upper()  #convert all lower case alpha to upper

    cipher_lst = [encrypt(ch,key) if ch.isupper() else ch for ch in plain]
    cipher = ''.join(cipher_lst)  #transform list to string
    print ('Cipher Text: ' + cipher)

    plain_lst = [decrypt(ch,key) if ch.isupper() else ch for ch in cipher]
    plain = ''.join(plain_lst)
    print ('Plain Text: ' + plain)
    

main()
