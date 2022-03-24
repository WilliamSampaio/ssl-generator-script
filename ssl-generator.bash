#!/bin/bash

YELLOW='\033[0;33m';

curl https://get.acme.sh | sh -s email=dev@infortread.com.br;

clear;
echo -e "${YELLOW}Hello $('whoami').";
read -p "Digite o dominio: " domain;
read -p "Digite o caminho da chave: " key;
read -p "Digite o caminho do certificdo: " cert;
read -p "Porta http especifica: " port;

/root/.acme.sh/acme.sh --issue -d $domain --alpn --tlsport $port;
/root/.acme.sh/acme.sh --install-cert -d $domain --key-file $key --fullchain-file $cert;

echo "Boa Sorte!";

