# syntax=docker/dockerfile:1.4

#obraz bazowy
FROM node:alpine

#ustaw katalog roboczy dla kolejnych instrukcji
WORKDIR /usr/app

# zainstaluj klienta ssh i git
RUN apk add --no-cache openssh-client git

# pobierz klucz publiczny dla github.com
RUN mkdir -p -m 0600 ~/.ssh && ssh-keyscan github.com >> ~/.ssh/known_hosts

# pobierz pliki z repozytorium
RUN --mount=type=ssh git clone git@github.com:weronika257/simpleweb.git 

# ustaw katalog roboczy dla kolejnych instrukcji
WORKDIR /usr/app/simpleweb

RUN npm install

CMD ["npm", "start"]