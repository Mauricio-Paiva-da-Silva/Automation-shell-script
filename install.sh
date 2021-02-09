#! /bin/bash

#--------------------------------------------------#
#-----Program Author: Maurício Paiva da Silva------#
#---------Project start date: 02/09/2021-----------#
#-----------Project end date: 02/dd/2021-------------#
#--------------------------------------------------#

echo """
English-speaking [en]
Falante de língua portuguesa [pt]
"""
read LANG
echo ""

if [ "$LANG" == "pt" ]; then

## PORTUGUESE
    echo """
    -------------------------------------
    ESTE SCRIPT RODA APENAS EM MODO ROOT.
    --------------------------------------

    Opcoes: [-I Iniciante][-E Experiente]
    """
    read OPTION
    echo ""

    if [ "$OPTION" == "-I" ]; then

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

    elif [ "$OPTION" == "-E" ]; then
        echo "-E"
    else
        echo "Comando nao reconhecido"
        exit 1
    fi

    echo """
    Voce gostaria de fazer as atualizacoes necessarias?[s/n]
    Atualizacoes inclusas: full-upgrade and dist-upgrade

    Se voce nao quiser, existe um script somente de atualizacao, que pode ser chamado por <./ update.sh>
    """
    read OPTION2
    echo ""

    if [ "$OPTION2" == "s" ]; then
        echo ""
        echo "Reboot[-R] or Shutdown[-S]?"
        echo ""
        read OPTION3
        echo ""
        if [ "$OPTION3" == "-R" ]; then
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
        fi
    elif [ "$OPTION2" == "-S" ]; then
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

## ENGLISH

else
    echo """
    -------------------------------------
    THIS SCRIPT CAN ONLY RUN IN ROOT MODE.
    --------------------------------------

    Options: [-B beginner][-E Experienced]
    """
    read OPTION
    echo ""

    if [ "$OPTION" == "-B" ]; then

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

    elif [ "$OPTION" == "-E" ]; then
        echo "-E"
    else
        echo "Command not found"
        exit 1
    fi

    echo """
    Would you like to make any and all updates that are necessary?[y/n]
    Upgrades included: full-upgrade and dist-upgrade

    If you don't want to, there is an update-only script, which can be called by <./ update.sh>
    """
    read OPTION2
    echo ""

    if [ "$OPTION2" == "y" ]; then
        echo ""
        echo "Reboot[-R] or Shutdown[-S]?"
        echo ""
        read OPTION3
        echo ""
        if [ "$OPTION3" == "-R" ]; then
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
        fi
    elif [ "$OPTION2" == "-S" ]; then
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
fi