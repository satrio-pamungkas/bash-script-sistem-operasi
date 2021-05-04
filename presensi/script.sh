#!/bin/sh
# Oleh Muhammad Raihan Satrio P. P.
# 1902897 - 4A RPL
# Program Presensi

# Prosedur untuk menambah data nama
tambah_data()
{
    mkdir list
    cd list
    touch list.txt 

    echo "Masukan nama : "
    read NAMA

    echo "$NAMA \t `date`" >> list.txt
}

# Prosedur untuk melihat data yang telah ditambahkan
lihat_data()
{
    cd list 
    cat list.txt
}

# Prosedur untuk membackup data yang telah dibuat
backup_data()
{
    TANGGAL=`date +%Y``date +%m``date +%d`
    WAKTU=`date +%H``date +%M``date +%S`
    TIMESTAMP=$TANGGAL$WAKTU

    cd list 
    cp list.txt backup-$TIMESTAMP.txt
}

# Fungsi eksekusi utama
echo "Silakan pilih : "
echo "[1]Tambah data [2]Lihat data [3]Backup data"
read PILIHAN 

# Pilihan fungsi
case $PILIHAN in
    1)
        tambah_data;;
    2)
        lihat_data;;
    3)
        backup_data;;
    *)
        echo "Pilihan salah";;
esac
