#!/bin/bash
	if [ -e $PREFIX/libexec/colores ];then
	rm $PREFIX/libexec/colores/COLOR
	cp -r $HOME/Termux_Setup.C-T/.setup/COLOR $PREFIX/libexec/colores
fi
#COLORES
source $PREFIX/libexec/colores/COLOR
#Funciones
function Banner () {
                echo -e "$purpura"
        printf "        ┌═════════════════Pack-Tool═════════════════════┐
        | █▀▀ █ █ ▀█▀ █▀▀ █▀█   ▀█▀ █▀▀ █▀▄ █▄█ █ █ █ █ |
        | █   █▀█  █  █   █ █    █  █▀▀ █▀▄ █ █ █ █ ▄▀▄ |
        | ▀▀▀ ▀ ▀ ▀▀▀ ▀▀▀ ▀▀▀    ▀  ▀▀▀ ▀ ▀ ▀ ▀ ▀▀▀ ▀ ▀ |
        └═══════════════════════════════Black-Hat═══════┘"
                echo ''
        }
#Instalaciones
Banner
echo ""
if [ -e $HOME ];then
	echo " [-] Actualizando paquetes... " && apt update -y > /dev/null 2>&1 && apt upgrade -y > /dev/null 2>&1
	echo ""
	echo " [-] Instalando Recursos [-]" 
	echo ""
fi

if [ -e $HOME ];then
	echo " [-] Instalando Cowsay... " && apt install cowsay -y > /dev/null 2>&1
	echo ""

	echo " [-] Instalando Figlet... " && apt install figlet -y > /dev/null 2>&1
fi
