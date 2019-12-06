#!/bin/sh

function menu(){
   echo "Pilih Menu :"
   echo "1. Luas Permukaan Balok"
   echo "2. Luas Permukaan Tabung"
   echo "3. Luas Permukaan Kerucut"
   echo "4. Mengurutkan Nilai Ketiga Luas Ascending dan Descending"
   echo "5. Keluar"
}

function lp_balok(){
   echo -n "Panjang : "
   read p
   echo -n "Lebar : "
   read l
   echo -n "Tinggi : "
   read t
   let h1=2*p*l
   let h2=2*p*t
   let h3=2*l*t
   let lpb=h1+h2+h3
   echo "Luas Permukaan Balok : $lpb"
}

function lp_tabung(){
   echo -n "Jari-jari : "
   read j
   echo -n "Tinggi : "
   read t
   let phi=314/100
   let lpt=2*phi*$j*$t*$(($j+$t))
   echo "Luas Permukaan Tabung : $lpt"

}

function lp_kerucut(){

   echo -n "Jari-jari : "
   read j
   echo -n "Sisi Miring : "
   read sm
   let phi=314/100
    let lpk=phi*$j*$(($j+$sm))
    echo "Luas Permukaan Kerucut : $lpk"
}

function sorting_asc(){
   data[0]=$lpb
   data[1]=$lpt
   data[2]=$lpk

   for (( i = 0; i < 3; i++ )); do
      for (( j=i+1; j < 3; j++ )); do
         if [[ ${data[i]} -gt ${data[j]} ]]; then
            temp=${data[i]}
            data[$i]=${data[j]}
            data[$j]=$temp
         fi
      done
   done

   for (( i = 0; i < 3; i++ )); do
      echo ${data[i]}
   done
}

function sorting_des(){
   data[0]=$lpb
   data[1]=$lpt
   data[2]=$lpk

   for (( i = 0; i < 3; i++ )); do
      for (( j=i+1; j < 3; j++ )); do
         if [[ ${data[i]} -lt ${data[j]} ]]; then
            temp=${data[i]}
            data[$i]=${data[j]}
            data[$j]=$temp
         fi
      done
   done

   for (( i = 0; i < 3; i++ )); do
      echo ${data[i]}
   done
}

while :;
do

menu
echo -n "Pilihan : "
read pilih

if [ $pilih -eq 1 ]
   then
      lp_balok
      clear

elif [ $pilih -eq 2 ]
   then
      lp_tabung
      clear

elif [ $pilih -eq 3 ]
   then
      lp_kerucut
     clear

elif [ $pilih -eq 4 ]
   then
      clear
      echo "Luas Permukaan Balok : $lpb"
      echo "Luas Permukaan Tabung : $lpt"
      echo "Luas Permukaan Kerucut : $lpk"
      echo "Ascending"
      sorting_asc
      echo "Descending"
      sorting_des
else
   clear
   exit
fi

done
