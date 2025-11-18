#!/bin/sh

while true
do
    echo "1. Encrypt File"
    echo "2. Decrypt File"
    echo "3. Exit"
    printf "Enter choice: "
    read ch

    case $ch in
        1)
            printf "Enter file to encrypt: "
            read file
            out="$file.enc"
            openssl enc -aes-256-cbc -salt -pbkdf2 -in "$file" -out "$out"
            echo "Encrypted to $out"
            ;;
        2)
            printf "Enter file to decrypt: "
            read file
            case "$file" in
                *.enc) out="${file%.enc}.dec" ;;
                *) out="$file.dec" ;;
            esac
            openssl enc -d -aes-256-cbc -pbkdf2 -in "$file" -out "$out"
            echo "Decrypted to $out"
            ;;
        3)
            exit 0
            ;;
        *)
            echo "Invalid choice"
            ;;
    esac
done
