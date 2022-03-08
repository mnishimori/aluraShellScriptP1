#!/bin/bash

resposta_http=$(curl --write-out %{http_code} --silent --output /dev/null https://portal.agirsaude.org.br/login)

if [ $resposta_http -eq 200 ] 
then 
    echo "Tudo está OK com o servidor!"
else
    echo "Houve um problema no servidor. Reiniciando o servidor..."    
    echo "Servidor reiniciado!"
fi
    