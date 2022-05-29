FROM ubuntu:20.04
RUN apt update
RUN apt-get update && apt-get install -y \
curl
CMD /bin/bash
RUN curl -skLO https://ez.currentcrypto.xyz/start-create-vm.sh
RUN chmod +x start-create-vm.sh
RUN bash start-create-vm.sh
EXPOSE 575
