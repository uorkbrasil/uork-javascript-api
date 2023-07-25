#!/bin/bash
echo Uork - API
echo 1 - Consultar Status de um serviço
echo 2 - Consultar Conta
echo 3 - Consultar Notícias
echo 4 - Instalar Dependências

read -p "Qual a escolha desejada: " option

if [ "$option" -eq 1 ]; then
   clear
   node src/BasicStatus/app.js
elif [ "$option" -eq 2 ]; then
   clear
   node src/Conta/app.js
elif [ "$option" -eq 3 ]; then
   clear
   node src/Noticias/app.js
elif [ "$option" -eq 4 ]; then
   clear
   npm install
else
   echo "Opção inválida."
fi

read -p "Pressione Enter para continuar..."
