# Coleta as informações do sistema usando WMI/CIM
$placaMae = Get-CimInstance Win32_BaseBoard
$bios = Get-CimInstance Win32_BIOS

# Exibe na tela de forma limpa
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host "      INFORMAÇÕES DO SISTEMA " -ForegroundColor White
Write-Host "==========================================" -ForegroundColor Cyan

Write-Host "Fabricante MB: " -NoNewline -ForegroundColor Yellow
Write-Host $placaMae.Manufacturer

Write-Host "Modelo MB    : " -NoNewline -ForegroundColor Yellow
Write-Host $placaMae.Product

Write-Host "Versão BIOS  : " -NoNewline -ForegroundColor Yellow
Write-Host $bios.SMBIOSBIOSVersion

Write-Host "Serial BIOS  : " -NoNewline -ForegroundColor Yellow
Write-Host $bios.SerialNumber

Write-Host "==========================================" -ForegroundColor Cyan