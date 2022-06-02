choco feature enable -n=useRememberedArgumentsForUpgrades

function main {
    
Update-Windows-Configuration
Install-Libraries
Install-Chocolatey
Install-Drivers
# Install-Fonts
Install-Addons
Install-File
Install-Drivers
Install-Network
Install-Security
Install-NAS
Install-Development
Install-Cleaners
Install-Browsers
# Install-Containers
Install-Mainteniance
Install-Utils
Install-Creation
Install-Productivity
# Install-Visualstudio2017
Install-Diagnostics
Install-Emulation
Install-Utils
Install-Game
Install-Privacy

}

function Install-Chocolatey {

Write-Host 'Installing Chocolatey'

choco install -y chocolateygui
choco install -y chocolatey-autoupdater 
choco install -y chocolatey-core.extension
choco install -y chocolatey-dotnetfx.extension 
choco install -y chocolatey-misc-helpers.extension
choco install -y chocolatey-npm.extension 
choco install -y chocolatey-fastanswers.extension
# choco install -y chocolatey-vscode <# deprecated_instability #>
choco install -y chocolatey-os-dependency.extension 
choco install -y chocolatey-isomount.extension 
choco install -y chocolatey-uninstall.extension
choco install -y chocolatey-visualstudio.extension
choco install -y chocolatey-vscode.extension
choco install -y chocolatey-windowsupdate.extension
choco install -y chocoshortcuts

}

function Install-Libraries {

Write-Host 'Installing Libraries'

choco install -y vcredist-all
choco install -y vcredist140
choco install -y vcredistall
choco install -y directx
choco install -y dotnet
choco install -y dotnet.script 
choco install -y dotnet4.5
choco install -y dotnet4.6.1
choco install -y dotnetcore-desktopruntime
# choco install -y msxml4.sp3 <# source_does_not_exist #>
choco install -y msaccess2010-redist-x86 
choco install -y intel-redist-cpp
choco install -y msfilterpack2-redist-x64
choco install -y msaccess2010-redist-x64
choco install -y jdk8 -params 'installdir=c:\\tools\\java8'
choco install -y javaruntime
choco install -y intellijidea-community
choco install -y adobeair
choco install -y ghostscript.app
choco install -y python3 
choco install -y crystalreports2010runtime

}

function Update-Windows-Configuration {

Write-Host 'Configuring Windows'

choco install -y taskbar-winconfig --params "'/LOCATION:bottom /SIZE:small /LOCKED:yes /COMBINED:no /CORTANA:icon /AUTOTRAY:no /USEPOWERSHELL:no'"
choco install -y desktopicons-winconfig --params "'/Desktop:YES /UserFiles:YES /ControlPanel:YES /Network:NO /RecycleBin:YES /OneDrive:NO'"
choco install -y explorer-winconfig --params "'/SHOWEXTENSIONS:yes /SHOWFULLPATH:yes /SHOWENCRYPTED:yes /SHOWCHECKBOXES:no /USESHARINGWIZARD:no /USEVIEW:details'"

}

function Install-Utils {
    
Write-Host 'Installing Windows Utilities'

choco install -y powertoys <# dotnetcore-desktopruntime #>
choco install -y greenshot <# no_dependencies #>
choco install -y autohotkey <# autohotkey.install #>
choco install -y cuda
choco install -y ghostscript.app

}

function Install-Browsers {

Write-Host 'Installing Browsers'

# choco install -y firefox --params "/l:sk-SK" <# chocolatey-core.extension #>
# choco install -y googlechrome <# chocolatey-core.extension #>
choco install -y waterfox <# chocolatey-core.extension #>
choco install -y chromium <# chocolatey #>
choco install -y vivaldi <# vivaldi.portable #>
# choco install -y opera <# no_dependencies #>

}

function Install-Fonts {

Write-Host 'Installing Fonts'

choco install -y font-awesome-font
choco install -y bginfo 
choco install -y cascadiafonts
choco install -y cascadiamono
choco install -y cascadiacodeitalic 
choco install -y cascadia-code-nerd-font
choco install -y consolez 
choco install -y dejavufonts
choco install -y droidsansmono
choco install -y envycoder 
choco install -y firacode
choco install -y font-nerd-dejavusansmono 
choco install -y font-awesome-font
choco install -y hackfont
choco install -y nexusfont
choco install -y opensans 
choco install -y robotofonts 

}

function Install-Development {
    
Write-Host 'Installing Developer Tools'

choco install -y sql-server-management-studio
choco install -y microsoft-windows-terminal
choco install -y nvm
choco install -y docker-desktop
choco install -y azure-data-studio
choco install -y sql-server-management-studio
choco install -y dbeaver
choco install -y linqpad
choco install -y mysql.workbench
choco install -y cygwin --params "/InstallDir:C:\tools /NoStartMenu"
choco install -y slack
choco install -y codeblocks
choco install -y vscode
choco install -y git
choco install -y git-fork
choco install -y nodejs
choco install -y postman
# choco install -y sbt 
choco install -y cmder
choco install -y firacode
choco install -y postman

}

# function Install-Visualstudio2017 {

# Write-Host 'Installing Visualstudio2017'

# choco install -y visualstudio2017community 
# choco install -y visualstudio2017-workload-azure
# choco install -y visualstudio2017-workload-manageddesktop
# choco install -y visualstudio2017-workload-data
# choco install -y visualstudio2017-workload-netcoretools
# choco install -y visualstudio2017-workload-netcrossplat
# choco install -y visualstudio2017-workload-netweb
# choco install -y visualstudio2017-workload-node
# choco install -y visualstudio2017-workload-universal

# }

function Install-Productivity {

Write-Host 'Installing Productivity Tools'

choco install -y adobereader
choco install -y notion
choco install -y notepadplusplus
# choco install -y foxitreader --ia '/MERGETASKS="!desktopicon,!setdefaultreader,!displayinbrowser /COMPONENTS=*pdfviewer,*ffse,*installprint,*ffaddin,*ffspellcheck,!connectedpdf"'
choco install -y mailspring
choco install -y oldcalc
choco install -y zotero
choco install -y naps2
choco install -y nitroreader

}

function Install-Creation {

Write-Host 'Installing Creation'

choco install -y ussf
choco install -y checksum

}

function Install-Utils {

Write-Host 'Installing Windows Utils'

choco install -y ditto
choco install -y greenshot
choco install -y teracopy
choco install -y lockhunter
choco install -y llftool
choco install -y ag
choco install -y powershell-core
choco install -y powershell-preview

}

function Install-Mainteniance {

Write-Host 'Installing Mainteniance'

choco install -y defraggler
choco install -y windows-iso-downloader
choco install -y ag

}

function Install-Containers {

Write-Host 'Installing Containers'

choco install -y docker-desktop
choco install -y docker-kitematic

}

function Install-Emulation {

Write-Host 'Installing Emulator Tools'

choco install -y conemu
choco install -y dosbox
choco install -y wincdemu
choco install -y virtualbox
choco install -y vmwareplayer
choco install -y sandboxie
choco install -y wsl 
choco install -y wsl-ubuntu-1804


}

function Install-LocalServers {

Write-Host 'Installing LocalServers'

choco install -y nginx --params '"/installLocation:C:\tools /port:433"'
choco install -y caddy

}

function Install-Diagnostics {

Write-Host 'Installing Dignostic Tools'

choco install -y cpu-z
choco install -y crystaldiskinfo
choco install -y gpu-z
choco install -y hwinfo
choco install -y procexp
choco install -y speccy
choco install -y sysinternals
choco install -y testdisk
choco install -y wireshark
choco install -y pci-z

}

function Install-Cleaners {

Write-Host 'Cleaners'

choco install -y ccleaner
choco install -y ccenhancer
choco install -y bleachbit
choco install -y ddu
choco install -y privazer
choco install -y choco-cleaner

}

function Install-Network {

Write-Host 'Installing Network Tools'

choco install -y aria2
choco install -y kitty 
choco install -y openssh
choco install -y openvpn 
choco install -y telnet
choco install -y winscp
}

function Install-NAS {

Write-Host 'Installing NAS Tools' 

choco install -y synologydrive
choco install -y synology-note-station-client
choco install -y synology-activebackup-for-business-agent
choco install -y synologychat
choco install -y outlookcaldav

}

function Install-Security {

Write-Host 'Installing Security Tools'

choco install -y veracrypt
choco install -y gpg4win
choco install -y openssl

}

function Install-Drivers {

Write-Host 'Installing Drivers'

choco install -y amd-ryzen-chipset <# vcredist2015; chocolatey-core.extension #>
choco install -y data-lifeguard-diagnostic
choco install -y ext2fsd
choco install -y intel-network-drivers-win10
choco install -y intel-dsa
choco install -y logitech-options
choco install -y samsung-magician
choco install -y seagate-drive-detect
choco install -y snappy-driver-installer-origin
choco install -y setpoint
choco install -y unifying
choco install -y universal-firmware-updater
# choco install -y seatools #

}

function Install-Privacy {

Write-Host 'Installing Privacy Tools'

choco install -y shutup10
choco install -y disablewintracking
choco install -y install blackbird
choco install -y disable-nvidia-telemetry

}

function Install-Game {

Write-Host 'Installing Gaming Tools'

# choco install -y playnite <# source_does_not_exist #>
choco install -y uplay
choco install -y dbgl
choco install -y joytokey
# choco install -y betshedanet <# source_does_not_exist #>
choco install -y epicgameslauncher
choco install -y origin

}

function Install-File {

Write-Host 'Installing File Tools'

choco install -y recuva
choco install -y totalcommander 
choco install -y Wget
choco install -y doublecmd 
choco install -y kdiff3
choco install -y winmerge
choco install -y advanced-renamer <# advanced-renamer.install #>
choco install -y winrar
choco install -y 7zip
choco install -y teracopy
choco install -y rufus
choco install -y qbittorrent
choco install -y rufus
choco install -y teracopy
choco install -y bulkrenameutility
choco install -y treesizefree --params /lang=SK
choco install -y advanced-renamer.install
choco install -y tagscanner
choco install -y lessmsi
choco install -y windows-iso-downloader
choco install -y isorecorder
choco install -y isowriter
choco install -y poweriso
choco install -y yumi
choco install -y yumi-uefi
choco install -y virtualclonedrive

}

function Install-Multimedia {

Write-Host 'Installing Multimedia Tools'

choco install -y avidemux
choco install -y vlc
choco install -y youtube-dl
choco install -y ffmpeg
# choco install -y handbrake
choco install -y exiftool
choco install -y exifdataview
choco install -y xnview
choco install -y virtualdub


}

function Install-Addons {

choco install -y ffmpeg
choco install -y flashplayeractivex
# choco install -y flashplayerplugin <# end_oflife #>
# choco install -y flashplayerppapi <# end_oflife #>
choco install -y quicktime
choco install -y adblockplusie
choco install -y irfanviewplugins
choco install -y totalcommanderpowerpack
choco install -y tcp
choco install -y tcp-uninstaller
choco install -y tcp-mediainfo 
choco install -y tcp-iclview 
choco install -y tcp-cloud 
choco install -y tcp-startups 
choco install -y tcp-webdav 
choco install -y tcp-jsonviewer 
choco install -y tcp-diskdirextended 
choco install -y tcp-shelldetails 
choco install -y tcp-emlview 
choco install -y tcp-csvview 
choco install -y tcp-fileinfo 
choco install -y tcp-envvars 
choco install -y tcp-sqlite
choco install -y vmware-tools
choco install -y font-nerd-dejavusansmono 
 
}

main






























 






