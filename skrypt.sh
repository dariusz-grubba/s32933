#!/bin/bash

git clone "$1" "s32933"
cd "s32933"
touch "ReadMe.md"
echo "s32933" > "ReadMe.md"
echo "git add .
git commit -m 'Pierwsza zmiana'" >> "ReadMe.md" 
git add .


mkdir Dane Dokumenty Zadania "Dokumenty/Produkty" "Dokumenty/Produkty/AMD" "Dokumenty/Produkty/NVidia"
touch Dane/Plik.txt
touch "Dokumenty/Produkty/AMD/plik.txt"
touch "Dokumenty/Produkty/NVidia/plik.txt"
touch "Zadania/plik.txt"
 
 
