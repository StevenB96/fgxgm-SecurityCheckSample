FROM node:18.17.1

RUN sudo apt-get update
RUN sudo apt-get install curl=7.88.1-10+deb12u4 libcurl4-openssl-dev=7.88.1-10+deb12u4 libcurl3-gnutls=7.88.1-10+deb12u4 libcurl4=7.88.1-10+deb12u4

RUN npm install -g npm@9.1.3

ADD package.json .
ADD index.js .
ADD build .
COPY . .
RUN npm install

EXPOSE 8080

CMD [ "node", "index.js" ]
