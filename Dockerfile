from ubuntu

RUN apt-get update
RUN apt-get install -y git gcc linux-libc-dev make libncurses-dev libxt-dev libxaw7-dev libx11-dev

WORKDIR /tierra/
COPY . ./
RUN cd /tierra/tierra && chmod +x configure && ./configure && make
