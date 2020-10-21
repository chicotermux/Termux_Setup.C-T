#!/bin/bash
#Desinstalacion de Termux-Setup.C-T
#COLORES
source $PREFIX/libexec/colores/COLOR
#FUNCIONEs
function banner () {
                echo -e "$purpura"
        printf "        ┌═════════════════Pack-Tool═════════════════════┐
        | █▀▀ █ █ ▀█▀ █▀▀ █▀█   ▀█▀ █▀▀ █▀▄ █▄█ █ █ █ █ |
        | █   █▀█  █  █   █ █    █  █▀▀ █▀▄ █ █ █ █ ▄▀▄ |
        | ▀▀▀ ▀ ▀ ▀▀▀ ▀▀▀ ▀▀▀    ▀  ▀▀▀ ▀ ▀ ▀ ▀ ▀▀▀ ▀ ▀ |
        └═══════════════════════════════Black-Hat═══════┘"
                echo ''
        }
function borrar () {
	if [ -e $PREFIX/etc ];then
	rm $PRERIX/etc/bash.bashrc > /dev/null 2>&1

	fi
	if [ -e $PRERIX/etc ];then
	rm $PREFIX/etc/motd > /dev/null 2>&1
      fi
   }
function Normal () {
	 if [ -e $PREFIX/etc ];then
	 cp -r $HOME/Termux_Setup.C-T/.setup/bash.bashrc $PREFIX/etc
	 cp -r $HOME/Termux_Setup.C-T/.setup/motd $PREFIX/etc
	fi
   }

function extra () {
	if [ -e $HOME/.termux ];then
	rm $HOME/.termux/termux.properties > /dev/null 2>&1
	termux-reload-settings
     fi
	}
function Borrar_Cursor () {
	if [ -e $HOME/.termux ];then
	rm $HOME/.termux/colors.properties
	termux-reload-settings
      fi
    }
banner
echo ""
echo -e " $verde 1- Eliminar Banner"
echo " "
echo -e " $verde 2- Eliminar Extra-Keys"
echo  ""
echo  -e " $verde 3- Eliminar color de el cursor"
echo -e "\e[1;30m"
read -p "Opcion: " o
if [ $o = "1" ];then
	echo -e "$rojo [\e[1;33m!\e[1;31m] \e[0;31mEliminando Banner..." 
sleep 3
borrar
Normal
elif [ $o = "2" ];then
echo ""
	echo "[-] Eliminando Extra-Keys..."
echo ""
sleep 3
extra
elif [ $o = "3" ];then
echo ""
	echo -e "$rojo [\e[1;33!\e[1;31m] \e[0;31mEliminando color de el cursor"
sleep 3
Borrar_Cursor
elif [ $o = "99" ];then
echo ""
echo " HASTA LUEGO"
echo ""
exit
else
echo -e " $rojo  [!] Opcion Incorrecta"
sleep 1.5
clear
source $HOME/Termux_Setup.C-T/uninstall.sh
fi
