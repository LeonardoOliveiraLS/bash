#!/bin/bash
#Criado por: Leonardo de Oliveira Moreira
#Instalador do Driver impressora Brother

Pacote_nome="linux-brprinter-installer-2.2.2-2.gz"
Modelo_Impressora= "Brother"
Pacote_link="https://download.brother.com/welcome/dlf006893/linux-brprinter-installer-2.2.2-2.gz"

DIR= /Home/Downloads



echo "Intalador impressora Brother"
echo
echo -n -e "Informe o modelo da impressora exatamente como o exemplo --> EX: Brother\n"



pacote=$(dpkg -l | grep -i "brother" ) 
echo 
echo -n "Verificando se o Pacote $Modelo_Impressora esta instalado."
sleep 2



if [ -n "$pacote" ] ;
then echo
	echo "Pacote $Modelo_Impressora ja instalado"
else echo
	echo "Pacote $nome Necessario-> Nao instalado"
	echo "Instalando Automaticamente Pacote $Modelo_Impressora..."
	sudo wget	$Pacote_link

if ["$Paote_link"];
then echo
	echo "true"
else echo
echo "false"
fi

sleep 2



if [ -e "$Pacote_nome" ]; then
	echo "O arquivo esta na pasta, preparando para descompactar!"
	#gunzip -f "linux-brprinter-installer-2.2.2-2.gz"
	
else echo
	echo "O arquivo nao foi baixado, inicie o script novamente..." 
fi	




fi
echo -n "Pressione qualquer tecla para sair..."
read
exit
