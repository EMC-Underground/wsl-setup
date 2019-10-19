$URLs = "https://aka.ms/wsl-ubuntu-1804" ,"https://aka.ms/wsl-debian-gnulinux" ,"https://aka.ms/wsl-kali-linux" ,"https://aka.ms/wsl-opensuse-42" ,"https://aka.ms/wsl-sles-12"

$ProgressPreference = 'SilentlyContinue'
$ErrorActionPreference = 'Stop'
Foreach($URL in $URLs){
    $Filename = "$(Split-Path $URL -Leaf).appx"
    Write-Host "Downloading: $Filename" -Foreground Yellow -NoNewline
    try{
        Invoke-WebRequest -Uri $URL -OutFile $Filename -UseBasicParsing
        Add-AppxPackage -Path $Filename
        if($?){
            Write-Host " Done" -Foreground Green
        }
    }
    catch{
        Write-Host " Failed" -Foreground Red
    }
}
