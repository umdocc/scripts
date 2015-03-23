echo "install new softwares? [y/n]"
read cont
while [ "$cont" == "y" ]
do
	echo "Select softwares to install"
	echo "dockbarx: windows 7 style taskbar for linux"
	echo "r-base: Free statistical programming language"
	echo "iep: Interactive Editor for PYthon"
	echo "pinta: simple yet exciting painting program"
	echo "handbrake: video converter"
	echo "grive: Google Drive for Linux"
	echo "others: git"

	read text

	if [ "$text" == "dockbarx" ]
	then 
		sudo add-apt-repository ppa:dockbar-main/ppa
		sudo apt-get update
		sudo apt-get install --no-install-recommends xfce4-dockbarx-plugin
		sudo apt-get install zeitgeist dockmanager dockmanager-daemon libdesktop-agnostic-cfg-gconf libdesktop-agnostic-vfs-gio
	fi
	if [ "$text" == "r-base" ]
	then 
		sudo add-apt-repository "deb http://cran.csiro.au/bin/linux/ubuntu trusty/"
		sudo apt-get update
		sudo apt-get install r-base	
	fi

	if [ "$text" == "iep" ]
	then 
		sudo add-apt-repository ppa:ghisvail/iep
		sudo apt-get update
		sudo apt-get install iep	
	fi

	if [ "$text" == "pinta" ]
	then 
		sudo add-apt-repository ppa:pinta-maintainers/pinta-stable
		sudo apt-get update
		sudo apt-get install pinta	
	fi

	if [ "$text" == "handbrake" ]
	then 
		sudo add-apt-repository ppa:stebbins/handbrake-releases
		sudo apt-get update
		sudo apt-get install handbrake-gtk handbrake-cli
	fi

	if [ "$text" == "grive" ]
	then 
		sudo add-apt-repository ppa:thefanclub/grive-tools
		sudo apt-get update
		sudo apt-get install grive-tools
	fi
	if [ "$text" == "others" ]
	then 
		sudo apt-get install git
	fi
echo "install another software? [y/n]"
read cont
done
