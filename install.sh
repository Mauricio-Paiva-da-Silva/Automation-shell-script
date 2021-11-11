#! /bin/bash

#--------------------------------------------------#
#-----Program Author: Maurício Paiva da Silva------#
#---------Project start date: 02/09/2021-----------#
#----------Project end date: 02/15/2021------------#
#------------Last update: 11/11/2021---------------#
#--------------------------------------------------#

echo """
English-speaking [1]
Falante de língua portuguesa [2]
"""
read LANG
echo ""

if [ "$LANG" -eq "2" ]; then

## PORTUGUESE
    echo """
-------------------------------------
ESTE SCRIPT RODA APENAS EM MODO ROOT.
-------------------------------------

Opcoes: (1)Iniciante (2)Experiente
    """
    read OPTION
    echo ""

    if [ "$OPTION" -eq "1" ]; then

        apt install git -y;
        apt install wget -y;
        mkdir /home/$USER/Downloads/Apps
        cd /home/$USER/Downloads/Apps
        wget https://az764295.vo.msecnd.net/stable/5d424b828ada08e1eb9f95d6cb41120234ef57c7/code_1.53.1-1612827767_amd64.deb
        wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
        wget https://github.com/shiftkey/desktop/releases/download/release-2.6.1-linux2/GitHubDesktop-linux-2.6.1-linux2.deb
        dpkg -i *deb ;
        apt install top -y;
        apt install htop -y;
        cd /home/$USER/Downloads
        rm -r Apps
        cd ~

    elif [ "$OPTION" -eq "2" ]; then
        echo "Digite o seu nome do GitHub"
	read NAME
	echo ""
	echo "Digite seu E-Mail do GitHub"
	read EMAIL
	echo ""

        apt install git -y;
        apt install wget -y;
	apt install nmap -y;
        mkdir /home/$USER/Downloads/Apps
        cd /home/$USER/Downloads/Apps
        wget https://az764295.vo.msecnd.net/stable/5d424b828ada08e1eb9f95d6cb41120234ef57c7/code_1.53.1-1612827767_amd64.deb
        wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
        dpkg -i *deb ;
        apt install top -y;
        apt install htop -y;
        cd /home/$USER/Downloads
        rm -r Apps
        cd ~
	git config --global user.name "$NAME"
	git config --global user.email "$EMAIL"

    else
        echo "Comando nao reconhecido"
        exit 1
    fi

    echo """
    Voce gostaria de fazer as atualizacoes necessarias?[s/n]
    Atualizacoes inclusas: full-upgrade and dist-upgrade

    Se voce nao quiser, existe um script somente de atualizacao, que pode ser chamado por <./update.sh>
    """
    read OPTION2
    echo ""

    if [ "$OPTION2" -eq "s" ]; then
        echo ""
        echo "(1)Reboot or (2)Shutdown?"
        echo ""
        read OPTION3
        echo ""
        if [ "$OPTION3" -eq "1" ]; then
            apt update;
            apt-get update;
            apt upgrade;
            apt-get upgrade;
            apt dist-upgrade;
            apt full-upgrade;
            apt update;
            apt-get update;
            apt upgrade;
            apt-get upgrade;
            apt dist-upgrade;
            apt full-upgrade;
            echo "Reboot iniciado"
            sleep 4
            reboot now;

        elif [ "$OPTION2" -eq "2" ]; then
            apt update;
            apt-get update;
            apt upgrade;
            apt-get upgrade;
            apt dist-upgrade;
            apt full-upgrade;
            apt update;
            apt-get update;
            apt upgrade;
            apt-get upgrade;
            apt dist-upgrade;
            apt full-upgrade;
            echo "Shutdown iniciado"
            sleep 4
            shutdown now;
        else
            echo "Comando nao reconhecido"
            exit 1
        fi
    else
        echo "Obrigado pela preferencia"
    fi

## ENGLISH

else
    echo """
    --------------------------------------
    THIS SCRIPT CAN ONLY RUN IN ROOT MODE.
    --------------------------------------

    Options: (1)beginner (2)Experienced
    """
    read OPTION
    echo ""

    if [ "$OPTION" -eq "1" ]; then

        apt install git -y;
        apt install wget -y;
        mkdir /home/$USER/Downloads/Apps
        cd /home/$USER/Downloads/Apps
        wget https://az764295.vo.msecnd.net/stable/5d424b828ada08e1eb9f95d6cb41120234ef57c7/code_1.53.1-1612827767_amd64.deb
        wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
        wget https://github.com/shiftkey/desktop/releases/download/release-2.6.1-linux2/GitHubDesktop-linux-2.6.1-linux2.deb
        dpkg -i *deb ;
        apt install top -y;
        apt install htop -y;
        cd /home/$USER/Downloads
        rm -r Apps
        cd ~

    elif [ "$OPTION" -eq "2" ]; then
        apt install git -y;
        apt install wget -y;
        mkdir /home/$USER/Downloads/Apps
        cd /home/$USER/Downloads/Apps
        wget https://az764295.vo.msecnd.net/stable/5d424b828ada08e1eb9f95d6cb41120234ef57c7/code_1.53.1-1612827767_amd64.deb
        wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
        dpkg -i *deb ;
        apt install top -y;
        apt install htop -y;
        cd /home/$USER/Downloads
        rm -r Apps
        cd ~
    else
        echo "Command not found"
        exit 1
    fi

    echo """
    Would you like to make any and all updates that are necessary?[y/n]
    Upgrades included: full-upgrade and dist-upgrade

    If you don't want to, there is an update-only script, which can be called by <./update.sh>
    """
    read OPTION2
    echo ""

    if [ "$OPTION2" -eq "y" ]; then
        echo ""
        echo "(1)Reboot or (2)Shutdown?"
        echo ""
        read OPTION3
        echo ""
        if [ "$OPTION3" -eq "1" ]; then
            apt update;
            apt-get update;
            apt upgrade;
            apt-get upgrade;
            apt dist-upgrade;
            apt full-upgrade;
            apt update;
            apt-get update;
            apt upgrade;
            apt-get upgrade;
            apt dist-upgrade;
            apt full-upgrade;
            echo "Reboot start"
            sleep 4
            reboot now;

        elif [ "$OPTION2" -eq "2" ]; then
            apt update;
            apt-get update;
            apt upgrade;
            apt-get upgrade;
            apt dist-upgrade;
            apt full-upgrade;
            apt update;
            apt-get update;
            apt upgrade;
            apt-get upgrade;
            apt dist-upgrade;
            apt full-upgrade;
            echo "Shutdown start"
            sleep 4
            shutdown now;
        else
            echo "Command not found"
            exit 1
        fi
    else
        echo "Command not found"
        exit 1
    fi
fi
