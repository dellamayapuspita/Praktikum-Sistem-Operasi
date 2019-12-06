
#!/bin/bash

echo "masukkan batas awal : "
read a
echo "masukkan batas akhir : "
read b
echo "masukkan modulus : "
read c

echo "
"
for ((d=$a;d<=$b;d=d+1))
do
let e=$a%$c
if [ $e -ne 0 ]
then
echo "$a"
let a=$a+1

else
echo "eureka"
let a=$a+1
fi
done