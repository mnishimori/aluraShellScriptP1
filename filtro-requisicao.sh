#!bin/bash

cd ../apache-log

if [ -z $1 ]
then
    while [ -z $requisicao ]
    do
        read -p "Voce esqueceu de informar o parametro (GET, POST, PUT, DELETE): " requisicao
        entrada_maiuscula=$(echo $requisicao | awk '{ print toupper($1) }')    
    done
else
    entrada_maiuscula=$(echo $1 | awk '{ print toupper($1) }')
fi

case $entrada_maiuscula in 
    GET)
    cat apache.log | grep GET
    ;;

    POST)
    cat apache.log | grep POST
    ;;

    PUT)
    cat apache.log | grep PUT
    ;;

    DELETE)
    cat apache.log | grep DELETE
    ;;

    *)
    echo "O parametro passado nao e valido"
    ;;
esac    