#!/bin/bash
#Este script esta hecho por el Chico Termux CTBH
#Fecha 9/8/2020
#COLORES
source $PREFIX/libexec/colores/COLOR
#FUNCIONES
function banner () {
                echo -e "$purpura"
        printf "        ┌═════════════════Pack-Tool═════════════════════┐
        | █▀▀ █ █ ▀█▀ █▀▀ █▀█   ▀█▀ █▀▀ █▀▄ █▄█ █ █ █ █ |
        | █   █▀█  █  █   █ █    █  █▀▀ █▀▄ █ █ █ █ ▄▀▄ |
        | ▀▀▀ ▀ ▀ ▀▀▀ ▀▀▀ ▀▀▀    ▀  ▀▀▀ ▀ ▀ ▀ ▀ ▀▀▀ ▀ ▀ |
        └═══════════════════════════════Black-Hat═══════┘"
                echo ''
        }
function Banner () {
		echo "               [-]————————————————————Black-Hat———————————————————————[-]

	             ▀█▀ █▀▀ █▀▄ █▄█ █ █ █ █     █▀▀ █▀▀ ▀█▀ █ █ █▀█
                      █  █▀▀ █▀▄ █ █ █ █ ▄▀▄ ▄▄▄ ▀▀█ █▀▀  █  █ █ █▀▀
                      ▀  ▀▀▀ ▀ ▀ ▀ ▀ ▀▀▀ ▀ ▀     ▀▀▀ ▀▀▀  ▀  ▀▀▀ ▀
             [-]—————————————————Chico.Termux-CTBH——————————————————————[-]
"| lolcat
	echo ""
	}
function Borrar_Banner () {
	if [ -e $PREFIX/etc ];then
	rm $PREFIX/etc/bash.bashrc > /dev/null 2>&1
	rm $PRERIX/etc/motd > /dev/null 2>&1
	rm $PREFIX/libexec/termux/.banner.sh > /dev/null 2>&1

	fi
     }
function Creacion_Banner () {
       if [ -e $PREFIX/libexec/termux ];then
	cp -r $HOME/Termux_Setup.C-T/.setup/.banner.sh $PREFIX/libexec/termux
        touch $PREFIX/etc/bash.bashrc
        echo "if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then " >> $PREFIX/etc/bash.bashrc
	echo "		command_not_found_handle() {" >> $PREFIX/etc/bash.bashrc
	echo '			/data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"' >> $PREFIX/etc/bash.bashrc
	echo "          } " >> $PREFIX/etc/bash.bashrc
        echo "fi" >> $PREFIX/etc/bash.bashrc
        echo " " >> $PREFIX/etc/bash.bashrc
        echo " clear " >> $PREFIX/etc/bash.bashrc
        echo "PS1='\[\e[31m\]┌─[\[\e[1;30m\]\u\e[1;31m@\e[1;30mTermux\e[31m\]]─────────\e[1;31m[\e[1;30m\h\e[1;31m]─────────[\e[1;30m$nombre\e[1;31m]─────────[\#]\n|\n\e[0;31m└─[\[\e[31m\]\e[1;35m\W\[\e[31m\]]──►\e[1;32m'" >> $PREFIX/etc/bash.bashrc
	echo " " >> $PREFIX/etc/bash.bashrc
	echo "source $PREFIX/libexec/termux/.banner.sh" >> $PREFIX/etc/bash.bashrc
	echo ""
	echo "" >> $PREFIX/etc/bash.bashrc
	echo -e "toilet -f big ' $FIGLET'" >> $PREFIX/etc/bash.bashrc
     fi
       }

if [ -e $HOME/Termux_Setup.C-T ];then
Banner
echo -e '
    ┌════════════════════════════════════┐
 #~ █ [1] Poner Banner a Termux
    └════════════════════════════════════┘

    ┌════════════════════════════════════┐
 #~ █ [2] poner Extra-Keys a termux
    └════════════════════════════════════┘

    ┌════════════════════════════════════┐
 #~ █ [3] poner color al cursor de termux
    └════════════════════════════════════┘
'| lolcat
fi

function teclado () {
	if [ -e $HOME ];then
	mkdir $HOME/.termux > /dev/null 2>&1

	fi
	if [ -e $HOME/.termux ];then
	rm $HOME/.termux/termux.properties > /dev/null 2>&1
	touch $HOME/.termux/termux.properties
	echo "extra-keys = [['ESC','/','-','HOME','UP','END'],['TAB','CTRL','ALT','LEFT','DOWN','RIGHT']]" >> $HOME/.termux/termux.properties
	termux-reload-settings
		fi
      }

function Cursor () {
	if [ -e $HOME/.termux ];then
	mkdir $HOME/.termux > /dev/null 2>&1

	fi
	if [ -e $HOME/.termux ];then
	rm $HOME/.termux/colors.properties > /dev/null 2>&1
	touch $HOME/.termux/colors.properties
	echo "cursor=#739B16" >> $HOME/.termux/colors.properties
	chmod 700 $HOME/.termux/colors.properties
	termux-reload-settings
            fi
     }

echo ""
read -p "Opción: " o
if [ $o = "1" ];then
echo ""
echo -e ' \e[1;32mPor favor escriba el nombre de el Banner '
echo -e "$purpura"
read -p "Nombre: " FIGLET
echo -e "$verde"
echo -e "Ahora escriba el nombre para la entrada de comandos "
echo -e "$purpura"
read -p "Nombre: " nombre
echo ""
Borrar_Banner

Creacion_Banner

elif [ $o = "2" ];then
teclado

elif [ $o = "3" ];then
Cursor
elif [ $o = "99" ];then
banner

echo ""
echo -e "\e[1;32m HASTA LUEGO "
exit
else
echo -e "\e[1;31m [\e[1;31m!\e[1;31m] Opcion Imcorrecta"
sleep 1.5
clear
source $HOME/Termux_Setup.C-T/setup.sh
fi
