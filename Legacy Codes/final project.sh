 #!/bin/bash
lagi='y'
while [ $lagi=='y' ] || [ $lagi=='Y' ];
do
clear
   echo "PROGRAM PEMBELIAN TIKET KONSER";
   echo "1. DAFTAR KONSER";
   echo "2. PEMBELI";
   echo "3. RESI PEMBELIAN TIKET KONSER";
   echo "4. NOTE";
   echo "5. EXIT";
    read -p "Pilihan [1-5] : " pil;
  case $pil in
    1)
    clear
    echo "KONSER";
    echo "1. UNGU";
    echo "2. TULUS";
    echo "3. PAMUNGKAS";
    echo "4. KUNTO AJI";
    echo -n "Masukkan Pilihan Kode Konser : "
        read konser
        case $konser in
     1) 
     clear
        echo "Jenis Kelas Tiket";
        echo " 1. VVIP              Rp.1.000.000";
        echo " 2. VIP               Rp.750.000";
        echo " 3. Kelas Festival    Rp.500.000";
        echo " 4. Kelas Biasa       Rp.250.000";
        echo -n "Pilihan Kode Kelas : "
        read ungu
        echo -n "Jumlah Pembelian : "
        read juma
        if [ $ungu -eq 1 ];    
            then jenisungu="VVIP";
       harga=1000000;
            let totala=juma*harga;
        elif [ $ungu -eq 2 ]; 
            then jenisungu="VIP";
       harga=750000;
            let totala=juma*harga; 
        elif [ $ungu -eq 3 ];   
            then jenisungu="Kelas Festival";
       harga=500000;
            let totala=juma*harga;
        elif [ $ungu -eq 4 ]; 
            then jenisungu="Kelas Biasa";
       harga=250000;
            let totala=juma*harga;
       else
       echo "Maaf"
       exit 1
       fi
       ;;
       2)
       clear
        echo "Jenis Kelas Tiket";
        echo " 1. VVIP              Rp.1.000.000";
        echo " 2. VIP               Rp.750.000";
        echo " 3. Kelas Festival    Rp.500.000";
        echo " 4. Kelas Biasa       Rp.250.000";
        echo -n "Pilihan Kode Kelas : "
        read tulus
        echo -n "Jumlah Pembelian : "
        read jumb
        if [ $tulus -eq 1 ];    
            then jenistulus="VVIP";
       harga=1000000;
            let totalb=jumb*harga;
        elif [ $tulus -eq 2 ]; 
            then jenistulus="VIP";
       harga=750000;
            let totalb=jumb*harga; 
        elif [ $tulus -eq 3 ];  
            then jenistulus="Kelas Festival";
       harga=500000;
            let totalb=jumb*harga;
        elif [ $tulus -eq 4 ]; 
            then jenistulus="Kelas Biasa";
       harga=250000;
            let totalb=jumb*harga;
       else
       echo "Maaf"
       exit 1
       fi
       ;;
       3)
       clear
        echo "Jenis Kelas Tiket";
        echo " 1. VVIP              Rp.1.000.000";
        echo " 2. VIP               Rp.750.000";
        echo " 3. Kelas Festival    Rp.500.000";
        echo " 4. Kelas Biasa       Rp.250.000";
        echo -n "Pilihan Kode Kelas : "
        read pamungkas
        echo -n "Jumlah Pembelian : "
        read jumc
        if [ $pamungkas -eq 1 ];    
          then jenispamungkas="VVIP";
       harga=1000000;
         let totalc=jumc*harga;
        elif [ $pamungkas -eq 2 ]; 
          then jenispamungkas="VIP";
       harga=750000;
       let totalc=jumc*harga; 
       elif [ $pamungkas -eq 3 ]; 
        then jenispamungkas="Kelas Festival";
       harga=500000;
       let totalc=jumc*harga;
        elif [ $pamungkas -eq 4 ]; 
        then jenispamungkas="Kelas Biasa";
       harga=250000;
       let totalc=jumc*harga;
       else
       echo "Maaf"
       exit 1
       fi
       ;;
      4)
      clear
        echo "Jenis Kelas Tiket";
        echo " 1. VVIP              Rp.1.000.000";
        echo " 2. VIP               Rp.750.000";
        echo " 3. Kelas Festival    Rp.500.000";
        echo " 4. Kelas Biasa       Rp.250.000";
        echo -n "Pilihan Kode Kelas : "
        read kuntoaji
        echo -n "Jumlah Pembelian : "
        read jumd
        if [ $kuntoaji -eq 1 ];    
          then jeniskuntoaji="VVIP";
       harga=1000000;
         let totald=jumd*harga;
        elif [ $kuntoaji -eq 2 ]; 
          then jeniskuntoaji="VIP";
       harga=750000;
       let totald=jumd*harga; 
       elif [ $kuntoaji -eq 3 ]; 
        then jeniskuntoaji="Kelas Festival";
       harga=500000;
       let totald=jumd*harga;
        elif [ $kuntoaji -eq 4 ]; 
        then jeniskuntoaji="Kelas Biasa";
       harga=250000;
       let totald=jumd*harga;
       else
       echo "Maaf"
       exit 1
       fi
        esac
       ;;
    2)
    clear
    echo -n "Masukkan Nama Pembeli : ";
       read nama
    ;;
    3)
    clear
    let total=$totala+$totalb+$totalc+$totald
    clear;
    echo "DATA PEMBELIAN TIKET KONSER";
    echo "NAMA PEMBELI : $nama";
    echo "Kelas Tiket Ungu : $jenisungu";
    echo "Jumlah Pembelian : $juma";
    echo "Kelas Tiket Tulus : $jenistulus";
    echo "Jumlah Pembelian : $jumb";
    echo "Kelas Tiket Pamungkas : $jenispamungkas";
    echo "Jumlah Pembelian : $jumc";
    echo "Kelas Tiket Kunto Aji : $jeniskuntoaji";
    echo "Jumlah Pembelian : $jumd";
    echo "TOTAL : $total";
    echo
    ;;
    4)
    gedit note.txt
    ;;
    5)
    exit 0
    ;;
    *)
    echo "Maaf"
    exit 1
    ;;
        esac
    echo -n "Pesan Tiket Kembali (y/t) : ";
        read lagi;
    done
