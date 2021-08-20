# !/bin/bash
# Programa para la instalación de los programas necesario del laboratorio 2
# Nota los comandos son para las distribuciones basadas en debian



read -s -p "Ingresar password de sudo:" password
echo -e "/n"
#desinstalando el programa wireshark
echo "$password" | sudo -S apt-get -y --purge remove wireshark\*
# actualizando los paquetes
echo "$password" | sudo -S apt-get update\*
#instalando el programa wireshark
echo "$password" | sudo -S apt-get -y install wireshark\
sleep 3
# configuracion de wireshark
echo "$password" | sudo adduser $USER wireshark
echo "$password" | sudo chmod +x /usr/bin/dumpcap

echo "$password" | sudo apt install -y  nmap\*

