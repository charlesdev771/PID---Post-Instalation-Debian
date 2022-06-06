##====================================================================##
##                                                                    ##
## SOFTWARE: PID - Post Installation Debian.                          ##
## AUTHOR: Charles Dantas (chameleon)                                 ##
## VERSION: 0.1                                                       ##
## CREATION DATE: 06/06/2022                                          ##
##                                                                    ##
##====================================================================##


#!/usr/bin/bash


install_bases_of_system()
{

    #Bases of system
      sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;    
      apt install arc arj cabextract lhasa p7zip p7zip-full p7zip-rar rar unrar unace unzip xz-utils zip -y; apt install snapd -y;
      apt install nvidia-driver-450 -y; apt install synaptic -y; apt install gparted -y; apt install qbittorrent -y;
      dpkg --add-architecture i386 -y; apt update; apt install aptitude build-essential most cups-pdf poppler-utils -y;
      apt install net-tools -y; apt install git -y; apt install gufw -y; apt install pv -y;
      apt install virtualbox -y; apt-get install apt-transport-https -y;
      export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
    #;

}



install_langs_of_programmation()
{

    apt install gcc -y; apt install g++; sudo apt-key adv –keyserver hkp: //keyserver.ubuntu.com: 80 –recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF;
    sudo echo “deb https://download.mono-project.com/repo/ubuntu stable-focal main” >> /etc/apt/sources.list -y;
    sudo apt update -y; 
    sudo apt install mono-complete -y; sudo apt-get install gnucobol4 -y; apt install python3 -y; sudo apt-get install dotnet-sdk-3.1 apt install perl -y;
    apt update -y; 
    sudo apt-get install dotnet-runtime-3.1 -y;  
    apt update; 
    sudo apt-get install openjdk-8-jdk -y; apt install default-jre; snap install --classic kotlin;
    export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/
    sudo sh -c 'wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -';
    sudo sh -c 'wget -qO- https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list';
    sudo apt-get update;  
    sudo apt-get install dart -y; export PATH="$PATH:/usr/lib/dart/bin";
    echo 'export PATH="$PATH:/usr/lib/dart/bin"' >> ~/.profile; apt install ruby -y; apt install nasm -y;
    

}


install_tools_of_programmation()
{

    apt install postgresql -y; apt install mongodb -y
    apt install codeblocks -y; apt apt install idle3 -y; sudo snap install android-studio --classic;
    apt install netbeans -y; snap install code --classic; snap install intellij-idea-community --classic --edge;
    snap install atom

}

install_main_frameworks()
{

    apt install nodejs -y; apt install npm -y; npm install -g react-cli; npm install -g react-native-cli;
    npm install -g expo-cli; npm install -g sass; apt install composer -y;

}

install_tools_security()
{

    apt install nmap -y; apt install zenmap -y; apt install tcpdump -y;
    apt install sqlmap -y; apt install dirb -y; apt install netcat -y;
    apt install crunch -y; apt install whois -y; apt install nikto -y;
    apt install dnsenum -y; apt install iptables -y; apt install whois -y;
    curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
    chmod 777 msfinstall && \
    ./msfinstall

}

install_tools_of_media()
{

      apt install libreoffice -y; apt install gimp -y; apt install blender -y;
      apt install audacity -y; apt install openshot -y;
      apt install kdenlive -y; apt install simplescreenrecorder -y; apt install vlc -y;

}

install_all()
{

    install_bases_of_system
    install_langs_of_programmation
    install_tools_of_programmation
    install_main_frameworks
    install_tools_security
    install_tools_of_media

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



