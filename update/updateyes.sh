#!/bin/bash
link="https://github.com/nurzamanberserker/script-auto-install/"
versilocal=$(cat /root/versi)
function updatev1.0.1() {
  echo "Update to 1.0.1"
    wget -q "$link/update/1.0.1/cekip1" -O /usr/bin/cekip1
    chmod +x /usr/bin/cekip1
    rm -f /usr/local/bin/createl
    wget -q "$link/update/1.0.1/createl" -O /usr/local/bin/createl
    chmod +x /usr/local/bin/createl

    rm -f /usr/local/bin/createt
    wget -q "$link/update/1.0.1/createt" -O /usr/local/bin/createt
    chmod +x /usr/local/bin/createt

    rm -f /usr/local/bin/createv
    wget -q "$link/update/1.0.1/createv" -O /usr/local/bin/createv
    chmod +x /usr/local/bin/createv

    rm -f /usr/bin/menu
    wget -q "$link/update/1.0.1/menu" -O /usr/bin/menu
    chmod +x /usr/bin/menu

    rm -f /usr/bin/menussh
    wget -q "$link/update/1.0.1/menussh" -O /usr/bin/menussh
    chmod +x /usr/bin/menussh

    rm -f /usr/bin/menuxray
    wget -q "$link/update/1.0.1/menuxray" -O /usr/bin/menuxray
    chmod +x /usr/bin/menuxray

    rm -f /usr/local/bin/stats
    wget -q "$link/update/1.0.1/stats" -O /usr/local/bin/stats
    chmod +x /usr/local/bin/stats

    echo "1.0.1" > /root/versi
    echo "Update to 1.0.1 Success"
    echo "Changelog 1.0.1:"
    echo "• Fix bug display 100% CPU for several VPS"
    echo "• More faster to open menu"
    echo "-----------------------------"
    echo "• harap isi token dan id bot di menu 10, agar auto backup dan notif tele berjalan"
}
function updatev1.0.2(){
    echo "Update to 1.0.2"
    rm -f /usr/local/bin/createssh
    wget -q "$link/update/1.0.2/createssh" -O /usr/local/bin/createssh
    chmod +x /usr/local/bin/createssh
    echo "1.0.2" > /root/versi
    echo "Update to 1.0.2 Success"
    echo "Changelog 1.0.2:"
    echo "• Fix bug createssh"
}
function updatev1.0.3(){
    echo "Update to 1.0.3"
    rm -f /usr/local/bin/bwsend
    wget -q "$link/update/1.0.3/bwsend" -O /usr/local/bin/bwsend
    chmod +x /usr/local/bin/bwsend

    rm -f /usr/local/bin/createl
    wget -q "$link/update/1.0.3/createl" -O /usr/local/bin/createl
    chmod +x /usr/local/bin/createl

    rm -f /usr/local/bin/createt
    wget -q "$link/update/1.0.3/createt" -O /usr/local/bin/createt
    chmod +x /usr/local/bin/createt

    rm -f /usr/local/bin/createv
    wget -q "$link/update/1.0.3/createv" -O /usr/local/bin/createv
    chmod +x /usr/local/bin/createv

    rm -f /usr/local/bin/delexpuser
    wget -q "$link/update/1.0.3/delexpuser" -O /usr/local/bin/delexpuser
    chmod +x /usr/local/bin/delexpuser

    rm -f /usr/local/bin/listexpxray
    wget -q "$link/update/1.0.3/listexpxray" -O /usr/local/bin/listexpxray
    chmod +x /usr/local/bin/listexpxray

    rm -f /usr/bin/menuxray
    wget -q "$link/update/1.0.3/menuxray" -O /usr/bin/menuxray
    chmod +x /usr/bin/menuxray

    rm -f /usr/local/bin/pelanggarxray
    wget -q "$link/update/1.0.3/pelanggarxray" -O /usr/local/bin/pelanggarxray
    chmod +x /usr/local/bin/pelanggarxray

    wget -q "$link/update/1.0.3/adios.sh" -O /root/adios.sh
    chmod +x /root/adios.sh
    /root/adios.sh

    rm -f /root/adios.sh

    wget -q "$link/update/1.0.3/trial" -O /usr/local/bin/trial
    chmod +x /usr/local/bin/trial

    wget -q "$link/update/1.0.3/checkconfig" -O /usr/local/bin/checkconfig
    chmod +x /usr/local/bin/checkconfig

    rm -f /usr/bin/menussh
    wget -q "$link/update/1.0.3/menussh" -O /usr/bin/menussh
    chmod +x /usr/bin/menussh


    echo "1.0.3" > /root/versi
    echo "Update to 1.0.3 Success"
    echo "Changelog 1.0.3:"
    echo "• scheme change username on xray"
    echo "• add trial 1 hour menu in xray and ssh"
    echo "• add check config menu"
}
if [[ $versilocal == 1.0.0 ]]; then
    updatev1.0.1
    updatev1.0.2
    updatev1.0.3
    exit 0
elif [[ $versilocal == 1.0.1 ]]; then
    updatev1.0.2
    updatev1.0.3
    exit 0
elif [[ $versilocal == 1.0.2 ]]; then
    updatev1.0.3
    exit 0
fi