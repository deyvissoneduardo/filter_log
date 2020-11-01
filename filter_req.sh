#!/bin/bash

cd ~/Documentos/git_repository/filter_log/apache

# verifica se o parametro e vazio
if [ -z $1 ]
then
	# força a entrada de parametro
	while [ -z $req ]
	do
		read -p "Insira o parametro (get, put, post, delete): " req
		uppercase=$(echo $req | awk '{ print toupper($req)}')
	done
else
	# converte string para maiuscula
	uppercase=$(echo $1 | awk '{ print toupper($1)}')
fi

case $uppercase in
   "GET") cat apache.log | grep GET 
   ;;
   "POST") cat apache.log | grep POST 
   ;;
   "DELETE") cat apache.log | grep DELETE
   ;;
   "PUT") cat apache.log | grep PUT
   ;;   
   *) echo "O parametro não e valido"
   ;;
esac
	
