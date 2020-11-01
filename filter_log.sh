#!/bin/bash

cd ~/Documentos/git_repository/filter_log/apache

# filtra o campo ip
regex="\b([0-9]{1,3}\.){3}[0-9]{1,3}\b"

# verifica parametro digitado
if [[ $1 =~ $regex ]]
then
	cat apache.log | grep ${1}
	# verifica status de saida
	if [ $? -ne 0 ]
	then
		echo "IP procurado não esta presente no arquivo de log"
	fi
else
	echo "Formato não e valido"
fi
