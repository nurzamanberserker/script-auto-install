#!/bin/bash
source link.sh
LocalVersion=$(cat /root/versi)
Version=$(curl -sS $link/update/versinew | awk '{print $1}')
if [ $LocalVersion = $Version ]; then
echo -e "\e[32mScript Sudah Versi Terbaru...\e[0m"
else
echo -e "\e[32mAda Update Script!!\e[0m";
wget -q -O updateyes.sh $link/update/updateyes.sh && chmod +x updateyes.sh && ./updateyes.sh
rm -f updateyes.sh
fi
