@echo off
title Uork - API
setlocal

echo Uork - API
echo 1 - Consultar Status de um serviço
echo 2 - Consultar Conta
echo 3 - Consultar Notícias
echo 4 - Instalar Dependências

set /p option=Qual a escolha desejada: 

if "%option%"=="1" (
   cls
   node src/BasicStatus/app.js
) else if "%option%"=="2" (
  cls
  node src/Conta/app.js
) else if "%option%"=="3" (
  cls
  node src/Noticias/app.js
) else if "%option%"=="4" (
  cls
  npm install
) else (
    echo Opção inválida.
)

pause
