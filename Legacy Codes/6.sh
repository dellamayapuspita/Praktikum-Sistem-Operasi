#!/bin/bash
clear
pilihan=0

while [ $pilihan == '0' ]
do
echo "== Program Nilai Terkecil Kedua di dalam Array =="
echo "1. Demo Program Array"
echo "2. Lihat Data Array"
echo "3. Rata-rata Array"
echo "4. Exit"
echo "Pilihan :"
read pilihan

case $pilihan in
1)
echo "Masukkan banyak element array : "
read input

for((i=0;i<$input;i++))
do
	printf "Index Array - $i : "
	read array[i]
done

terkecil=${array[0]}
for((i=0;i<$input;i++))
do
	if [[ $terkecil -gt ${array[i]} ]]
	then
		let terkecil=${array[i]}
		let jwb=i
	fi
done

terkecil2=99999
index=0
for((i=0;i<$input;i++))
do
	if [[ $i -ne $jwb ]]
	then
        let i=i+1
		let i=i-1
	else
	    if [[ $terkecil2 -gt ${array[i]} ]]
	    then
		    let terkecil2=${array[i]}
		    let idx=i
	    fi
	fi
done

printf "\n"
echo "Nilai terkecil kedua di dalam array adalah : $terkecil2"
echo "Array terkecil kedua Index ke : $idx"
read
clear
;;

2)
if [[ $input -ne 0 ]]
then
    printf "Data Array Masih Kosong \n"
else
	echo ${array[@]}
fi
read
clear
;;

3)
if [[ $input -ne 0 ]]
then
	printf "\n"
	printf "0\n"
else
	banyak_data=${#array[@]};
	flag=0
	for((i=0;i<$banyak_data;i++))
	do
		let flag=$(expr "$flag" + "${array[i]}")
	done

let tot=$flag/$banyak_data
echo "Rata-rata data array : $tot"
fi
read
clear
;;

4)
printf "\n"
echo "Terima kasih telah menggunakan program ini"
;;

esac
done
