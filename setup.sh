echo "WinOiD"
sleep 4s
echo "preparing to start process"
sleep 6s
clear
cd /storage/FC8C-C492
		sleep 3s
		clear
		echo "updating and upgrading packages"
		sleep 3s
		yes | apt update && yes | apt upgrade 
		clear
		echo "installating wget"
		sleep 3s
		pkg install wget -y
		clear
		echo "installating unzip"
		sleep 3s
		pkg install unzip -y
		clear
		echo "enabling x11-repo"
		sleep 3s
		pkg install x11-repo -y
		clear
		echo "installating qemu-system-i386"
		sleep 3s
		pkg install qemu-system-i386-headless -y
		clear
		echo "setting up storage access"
		sleep 3s
			termux-setup-storage
		sleep 3s
		clear
		echo "fixing nested directories"
		sleep 3s
		clear
		echo "downloading files from external server"
		sleep 3s
		wget -O w7.zip "https://dl.dropboxusercontent.com/s/iengjqhgoukoxuj/w7.zip?dl=0"
		clear
		echo "finalising setup"
		sleep 3s
		unzip w7.zip
		rm w7.zip
		wget -O win7 "https://raw.githubusercontent.com/Romantulubaev/WinOiD/main/start.sh"
		chmod +x win7
		cd storage/FC8C-C492
		mkdir WinOiD
		cd WinOiD
		mkdir Share
		cd Share
		cd ~
		clear
		echo "./win7 to start windows 7!"
		rm setup.sh
