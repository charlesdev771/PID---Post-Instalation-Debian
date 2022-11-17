##====================================================================##
##                                                                    ##
## SOFTWARE: PID - Post Installation Debian.                          ##
## AUTHOR: Charles Dantas (ccod)                                 ##
## VERSION: 1.0                                                       ##
## CREATION DATE: 06/06/2022                                          ##
## Last release 20/06/2022                                            ##
##====================================================================##


#!/usr/bin/bash


install_bases_of_system()
{

    #Bases of system

      sudo rm /var/lib/dpkg/lock-frontend; sudo rm /var/cache/apt/archives/lock;
      sudo apt install arc arj cabextract lhasa p7zip p7zip-full p7zip-rar rar unrar unace unzip xz-utils zip -y; sudo apt install snapd -y;
      sudo apt install nvidia-driver-450 -y; sudo apt install synaptic -y; sudo apt install gparted -y;sudo apt install qbittorrent -y;
      sudo dpkg --add-architecture i386 -y; sudo apt install git p7zip-full python3-pip python3-wxgtk4.0 grub2-common grub-pc-bin -y;
      sudo pip3 install WoeUSB-ng
      sudo apt update;
      sudo apt install aptitude build-essential most cups-pdf poppler-utils -y;
      sudo apt install net-tools -y; sudo apt install git -y; sudo apt install gufw -y; sudo apt install pv -y;
      sudo apt install virtualbox -y; sudo apt-get install apt-transport-https -y;
      sudo export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin;

    #;

}



install_langs_of_programmation()
{

    #Main langs

      sudo apt install gcc -y; sudo apt install g++; sudo apt-key adv –keyserver hkp: //keyserver.ubuntu.com: 80 –recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF;
      sudo apt update -y;
      sudo apt install mono-complete -y; sudo apt-get install gnucobol4 -y; sudo apt install python3 -y; sudo apt-get install dotnet-sdk-3.1; sudo apt install perl -y;
      apt update -y;
      sudo apt-get install openjdk-8-jdk -y; apt install default-jre; snap install --classic kotlin;
      export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/
      sudo sh -c 'wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -';
      sudo sh -c 'wget -qO- https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list';
      sudo apt-get update;
      sudo apt-get install dart -y; export PATH="$PATH:/usr/lib/dart/bin";
      echo 'export PATH="$PATH:/usr/lib/dart/bin"' >> ~/.profile; apt install ruby -y; apt install nasm -y;

    #;

}


install_tools_of_programmation()
{
    #My main tools

      sudo apt install postgresql -y; sudo apt install mongodb -y
      sudo apt install codeblocks -y; sudo apt apt install idle3 -y; sudo snap install android-studio --classic;
      sudo apt install netbeans -y; sudo snap install code --classic; sudo snap install intellij-idea-community --classic --edge;
      snap install atom -y; wget https://downloadsapachefriends.global.ssl.fastly.net/8.1.6/xampp-linux-x64-8.1.6-0-installer.run?from_af=true;

    #;
}

install_main_frameworks()
{
  #Main frameworks

    sudo apt install nodejs -y; sudo apt install npm -y; sudo npm install -g react-cli; sudo npm install -g react-native-cli;
    sudo npm install -g expo-cli; npm install -g sass; apt install composer -y; pip install Flask; sudo apt-get install python-django;

  #;
}

install_tools_security()
{
  #Main tools of security

    sudo apt install nmap -y; sudo apt install zenmap -y; sudo apt install tcpdump -y;
    sudo apt install sqlmap -y;sudo apt install dirb -y; sudo apt install netcat -y;
    sudo apt install crunch -y;sudo apt install whois -y; sudo apt install nikto -y;
    sudo apt install dnsenum -y; sudo apt install iptables -y; sudo apt install whois -y;

  #;

}

install_tools_of_media()
{

  #Media tools

      sudo apt install libreoffice -y;sudo apt install gimp -y;sudo apt install blender -y;
      sudo apt install audacity -y;sudo apt install openshot -y;
      sudo apt install kdenlive -y;sudo apt install simplescreenrecorder -y; sudo apt install vlc -y;

  #;
}

install_all()
{

  #Function that calls all others

    install_bases_of_system
    install_langs_of_programmation
    install_tools_of_programmation
    install_main_frameworks
    install_tools_security
    install_tools_of_media

  #;

}


echo "###################################";
echo "############# Options #############";
echo "###################################";
echo "1) Install bases of system";
echo "2) Install  langs of programmation";
echo "3) Install tools of programmation";
echo "4) Install main frameworks";
echo "5) Install tools of security";
echo "6) Install tools of media";
echo "7) Install all programs";
echo "###################################";
echo "###################################";
echo "###################################";

read -p "Enter with option:" option;

case $option in
    1)
        install_bases_of_system
    ;;
    2)
        install_langs_of_programmation
    ;;
    3)
        install_tools_of_programmation
    ;;
    4)
        install_main_frameworks
    ;;
    5)
        install_tools_security
    ;;
    6)
        install_tools_of_media
    ;;
    7)
    install_all
    ;;
    *)
    clear
    echo "\nOption wrong... Try again! \n";
        ./pid.sh
    ;;
esac
