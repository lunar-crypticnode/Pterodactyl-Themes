if [ ! -f "artisan" ]; then
	echo "It doesn't seem like you are in the proper directory (/var/www/html/pterodactyl/). Moving to that location, please re-run this command."
	cd /var/www/html/pterodactyl/
	sleep 3
	
else
	echo "--------------------------------------------------------"
	echo "Welcome to the installer for Codex's Pterodactyl themes!"
	echo "Beginning installation of your new theme!"
	echo "--------------------------------------------------------"
	sleep 6
	
	echo "--------------------------"
	echo "Installing dependencies..."
	echo "--------------------------"
	sleep 4
	apt install zip
	apt install unzip
	apt install git
	sleep 6
	
	echo "-------------------------"
	echo "Downloading your theme..."
	echo "-------------------------"
	sleep 4
	mkdir -p tempfolder && cd tempfolder && git clone https://github.com/gabesystems/Pterodactyl-Themes.git
	sleep 6
	
	echo "----------------------------------------"
	echo "Merging theme into pterodactyl folder..."
	echo "----------------------------------------"
	sleep 4
	cp -r Pterodactyl-Themes/v0.7.13/obsidian-dark/public ..
	cp -r Pterodactyl-Themes/v0.7.13/obsidian-dark/resources ..

	cd ..
	sleep 6
	
	echo "-----------------------"
	echo "Cleaning up a little..."
	echo "-----------------------"
	sleep 4
	rm -r tempfolder
	sleep 6
	
	echo "-----------------"
	echo "Clearing views..."
	echo "-----------------"
	sleep 4
	php artisan view:clear
	sleep 6
	
	echo "---------------------------------------------------------------"
	echo "Congratulations! You the theme has successfully been installed."
	echo "Thank you for downloading my theme! Enjoy!"
	echo "---------------------------------------------------------------"
	sleep 3
fi
	