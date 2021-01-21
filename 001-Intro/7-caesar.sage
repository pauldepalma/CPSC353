
def encrypt(ch,key):
    pos = ord(ch) - ord('A')
    pos = (pos + key) % 26
    pos = pos + ord('A')
    return chr(pos)

def decrypt(ch,key):
    pos = ord(ch) - ord('A')
    pos = (pos- key + 26) % 26
    pos = pos + ord('A')
    return chr(pos)

def main():
    print("Enter a key in the range [1..25]")
    key =int(input())
    print("Enter plaintext")
    plain = input()
    cipher = []
    for ch in plain:
        if str.isupper(ch):
            ch = encrypt(ch,key)
        cipher.append(ch)
    cipher_out = ''.join(cipher)  #transform list to string
    print ('Cipher Text: ' + cipher_out)

    plain = []
    for ch in cipher:
        if str.isupper(ch):
            ch = decrypt(ch,key)
        plain.append(ch)
    plain_out = ''.join(plain)
    print ('Plain Text: ' + plain_out)
    

main()
