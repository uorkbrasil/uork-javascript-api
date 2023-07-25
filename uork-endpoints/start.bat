

@echo off
title Uork - API Example
setlocal

echo Uork - API Example
echo 1 - Consultar Status de um servico
echo 2 - Consultar Conta
echo 3 - Consultar Noticias

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
) else (
    echo Opção inválida.
)

pause

