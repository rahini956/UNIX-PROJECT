# File Encryption and Decryption Tool
The File Encryption and Decryption Tool is a menu-driven shell script developed in UNIX to securely protect files using industry-standard cryptographic techniques. The tool allows users to easily encrypt any text or data file using a password and later decrypt it only with the same password.
<img width="1209" height="618" alt="Screenshot 2025-11-18 221808" src="https://github.com/user-attachments/assets/a393b8e1-66b3-4ba9-8bd8-20dd1c285735" />

Features

Encrypt any text file using AES-256-CBC

Decrypt .enc encrypted files

Menu-driven program

Uses PBKDF2 and salt for stronger security

Automatically names encrypted files with .enc

Automatically names decrypted files with .dec

How the Program Works
Encryption Process

User enters the filename to encrypt.

The script creates an output file with the extension .enc.

OpenSSL encrypts the file using:
openssl enc -aes-256-cbc -salt -pbkdf2 -in <input> -out <output>
The encrypted file is saved as <filename>.enc.

Decryption Process

User enters the encrypted .enc file.

The script automatically renames output to <filename>.dec.

OpenSSL decrypts the file using:
openssl enc -d -aes-256-cbc -pbkdf2 -in <input> -out <output>

How to Run the Script
1. Create the script
2. nano encrypt.sh

2. Give execute permission
chmod +x encrypt.sh

3. Run the script
./encrypt.sh 

Main Menu:

1. Encrypt File
2. Decrypt File
3. Exit
Enter choice:


Encryption:

Enter file to encrypt: sample.txt
Encrypted to sample.txt.enc


Decryption:

Enter file to decrypt: sample.txt.enc
Decrypted to sample.txt.dec
