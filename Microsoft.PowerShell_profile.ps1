#komorebic functions
function kstart {
    param (
        [string]$arg
    )

    if ($arg -eq "bar") {
        komorebic start --whkd
    } else {
        komorebic start --whkd
    }
}

function kstop {
    komorebic stop
}

#navigation functions
function j {Set-Location ..}
function 2j {Set-Location ..\..}
function 3j {Set-Location ..\..\..}
function 4j {Set-Location ..\..\..\..}

#general
function vi {nvim .}
function rm {Remove-Item $args}
function mv {Move-Item $args}
function touch {New-Item $args}
function dotf {cd ~/.dotfiles}

#path configurations
$ahkPath = "C:\Program Files\AutoHotkey\v2\AutoHotkey.exe"
$change_layout_ahk = "C:\Users\eryan\.dotfiles\AutoHotkey\change_layout.ahk"
$Env:KOMOREBI_CONFIG_HOME = "C:\Users\eryan\.dotfiles\komorebi"
$Env:WHKD_CONFIG_HOME = "C:\Users\eryan\.dotfiles\komorebi"
$Env:PATH += ";C:\mysys64\mingw64\bin"

#startup configurations
Start-Process -FilePath $ahkPath -ArgumentList $change_layout_ahk

#alias 
Set-Alias make mingw32-make
