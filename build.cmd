@ECHO OFF
SETLOCAL

SET TARGET=%1
IF NOT EXIST "box" MKDIR box

IF EXIST %~dp0packer.log DEL %~dp0packer.log
SET PACKER_LOG=1
SET PACKER_LOG_PATH=%~dp0packer.log

SET PACKER_POWERSHELL_DEBUG=1
SET PACKER_VARS=-var cm=nocm

C:\tools\packer-0.7.2\packer.exe build -only=hyperv-iso %PACKER_VARS% %TARGET%
