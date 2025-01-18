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
 
touch "Zadania/x.txt"

echo "Producent VRam Cena" > "Zadania/x.txt" 
echo "AMD 16GB 4599
Nvidia 24GB 5999
Nvidia 12GB 3250
Nvidia 16GB 4399
AMD 24GB 5999
AMD 20GB 5699
Nvidia 16GB 4799
Nvidia 20GB 5699
AMD 12GB 3250
AMD 8GB 2150
Nvidia 8GB 2150
Nvidia 20GB 5750
Nvidia 24GB 5999
Nvidia 12GB 3450
AMD 20GB 5750
AMD 8GB 1999
AMD 16GB 4399
Nvidia 12GB 3550
AMD 8GB 1999
AMD 20GB 5850
Nvidia 16GB 4450
AMD 12GB 3399
AMD 16GB 4799
Nvidia 8GB 1799
AMD 12GB 3550
Nvidia 20GB 5599
AMD 24GB 5999
Nvidia 8GB 1899
AMD 24GB 5999
Nvidia 24GB 5999" >> "Zadania/x.txt"

mv "./Zadania/x.txt" "./Dane/Karty graficzne.txt"

egrep "^AMD\s.*$" "Dane/Karty graficzne.txt" > "Dokumenty/Produkty/NVidia/Karty_AMD.txt"
egrep "^NVidia\s.*$" "Dane/Karty graficzne.txt" > "Dokumenty/Produkty/AMD/Karty_NVidia.txt"

head - $1 "Dokumenty/Produkty/Nvidia/Karty_AMD.txt" >> "Dokumenty/Zestawienie.txt"
head - $2 "Dokumenty/Produkty/AMD/Karty_NVidia.txt" >> "Dokumenty/Zestawienie.txt"
