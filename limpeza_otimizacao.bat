@echo off
echo Limpeza e Otimizacao do Sistema Windows
echo.

REM Limpar Arquivos Temporarios
echo Limpando arquivos temporarios...
del /q /s /f %temp%\*
echo Arquivos temporarios limpos.
echo.

REM Limpar a Lixeira
echo Limpando a lixeira...
rd /s /q C:\$Recycle.Bin
echo Lixeira limpa.
echo.

REM Desfragmentar o Disco
echo Desfragmentando o disco...
defrag C: /O
echo Desfragmentacao completa.
echo.

REM Verificar e Corrigir Erros no Disco
echo Verificando e corrigindo erros no disco...
chkdsk C: /F /R
echo Verificacao completa.
echo.

REM Limpar Arquivos Desnecessarios do Sistema
echo Limpando arquivos desnecessarios do sistema...
cleanmgr /sagerun:1
echo Limpeza de arquivos do sistema concluida.
echo.

REM Limpar o Cache de DNS
echo Limpando o cache de DNS...
ipconfig /flushdns
echo Cache de DNS limpo.
echo.

echo Processo de limpeza e otimizacao concluido.
pause
