#! /bin/bash

#--------------------------------------------------#
#-----Program Author: Maurício Paiva da Silva------#
#---------Project start date: 02/10/2021-----------#
#----------Project end date: 02/15/2021------------#
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
    --------------------------------------

    Opcoes: (1)Atualizacao parcial (2)Atualizacao completa
    """
    read OPTION
    echo ""

    if [ "$OPTION" -eq "1" ]; then
        apt update
        apt-get update
        apt upgrade -y;
        apt-get upgrade -y;
        apt autoremove -y;
        apt autoclean -y;
        sleep 2

        apt update
        apt-get update
        apt upgrade -y;
        apt-get upgrade -y;
        apt autoremove -y;
        apt autoclean -y;
        sleep 2
        echo """
        Atualizacoes concluidas
        """
    elif [ "$OPTION" -eq "2" ]; then
        apt update
        apt-get update
        apt upgrade -y;
        apt-get upgrade -y;
        apt dist-upgrade -y;
        apt-get dist-upgrade -y;
        apt full-upgrade -y;
        apt autoremove -y;
        apt autoclean -y;
        sleep 2

        apt update
        apt-get update
        apt upgrade -y;
        apt-get upgrade -y;
        apt dist-upgrade -y;
        apt-get dist-upgrade -y;
        apt full-upgrade -y;
        apt autoremove -y;
        apt autoclean -y;
        sleep 2
        echo """
        Atualizacoes concluidas
        """
    else
        echo "Comando nao reconhecido"
        exit 1

    fi
    echo """
    Gostaria de reiniciar a maquina ou desligala?

    (1)Reiniciar (2)Desligar (p)Pular etapa
    """
    read UPD
    if [ "$UPD" -eq "1" ]; then
        reboot now;
    elif [ "$UPD" -eq "2" ]; then
        shutdown now;
    elif [ "$UPD" -eq "p" ]; then
        echo "Obrigado pela preferencia"
        exit 1
    else
        echo "Comando nao reconhecido"
    fi
fi

if [ "$LANG" -eq "1" ]; then

## ENGLISH

    echo """
    -------------------------------------
    THIS SCRIPT CAN ONLY RUN IN ROOT MODE.
    --------------------------------------

    Options: (1)Partial update (2)Full update
    """
    read OPTION
    echo ""

    if [ "$OPTION" -eq "1" ]; then
        apt update
        apt-get update
        apt upgrade -y;
        apt-get upgrade -y;
        apt autoremove -y;
        apt autoclean -y;
        sleep 2

        apt update
        apt-get update
        apt upgrade -y;
        apt-get upgrade -y;
        apt autoremove -y;
        apt autoclean -y;
        sleep 2
        echo """
        Complete updates
        """
    elif [ "$OPTION" -eq "2" ]; then
        apt update
        apt-get update
        apt upgrade -y;
        apt-get upgrade -y;
        apt dist-upgrade -y;
        apt-get dist-upgrade -y;
        apt full-upgrade -y;
        apt autoremove -y;
        apt autoclean -y;
        sleep 2

        apt update
        apt-get update
        apt upgrade -y;
        apt-get upgrade -y;
        apt dist-upgrade -y;
        apt-get dist-upgrade -y;
        apt full-upgrade -y;
        apt autoremove -y;
        apt autoclean -y;
        sleep 2
        echo """
        Command not found
        """
    else
        echo "Command not found"
        exit 1

    fi
    echo """
    Would you like to restart the machine or shut down?

    (1)Reboot (2)Shutdown (s)Skip
    """
    read UPD
    if [ "$UPD" -eq "1" ]; then
        reboot now;
    elif [ "$UPD" -eq "2" ]; then
        shutdown now;
    elif [ "$UPD" -eq "s" ]; then
        echo "Thank you for your preference"
        exit 1
    else
        echo "Command not found"
    fi
fi
