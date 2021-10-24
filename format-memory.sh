#!/bin/bash
while [[ $a != 4 ]];do
	echo "                                                 HERRAMIENTA DE FORMATEO by metallica"
	echo "----------------------------------------------------------------------------------------------------------------------"
	lsblk -fm /dev/sdb
	echo ""
	echo "1)refrescar 2)desmontar 3)formatear 4)salir"
	echo "----------------------------------------------------------------------------------------------------------------------"
	read a
	if [[ $a = 1 ]];then
		clear
	fi
	if [[ $a = 2  ]];then
		echo "escriba el name del despositivo (ejem: sdb1)"
		read b
		umount /dev/$b
		clear
	fi
	if [[ $a = 3 ]];then
		echo "escriba el name del dispositivo (ejem: sdb1)"
		echo "---procure colocar bien el nombre para evitar futuros problemas---"
		read b
		echo "que tipo de formato desea: "
		echo "1)FAT32"
		echo "2)exfat"
		read c
		echo "Etiqueta(evite colocar espacios): "
		read d
		if [[ $c = 1 ]];then
			clear
			sudo mkfs.vfat -F 32 -n $d /dev/$b
			echo ""
		fi
		if [[ $c = 2 ]];then
			clear
			sudo mkfs.exfat -n $d /dev/$b
			echo ""
		fi
	fi
	clear
done
clear
echo "By :: metallica"
